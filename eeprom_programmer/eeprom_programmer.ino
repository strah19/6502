#define SHIFT_DATA 2
#define SHIFT_CLK 4
#define SHIFT_LATCH 3
#define EEPROM_D0 5
#define EEPROM_D7 12

#define WRITE_EN 13   
#define CHIP_EN A1    
#define OUTPUT_EN A0  

#define EEPROM_SIZE 32768

void set_address(word address) {
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, address >> 8);
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, address);

  digitalWrite(SHIFT_LATCH, LOW);
  digitalWrite(SHIFT_LATCH, HIGH);
  digitalWrite(SHIFT_LATCH, LOW);
}

void set_io_pins(int mode) {
  for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin++) {
    pinMode(pin, mode);
  }
}

void write_enable() {
  digitalWrite(WRITE_EN,  LOW);
}

void write_disable() {
  digitalWrite(WRITE_EN,  HIGH);
}

void output_enable() {
  digitalWrite(OUTPUT_EN,  LOW);
}

void output_disable() {
  digitalWrite(OUTPUT_EN,  HIGH);
}

void chip_enable() {
  digitalWrite(CHIP_EN,  LOW);
}

void chip_disable() {
  digitalWrite(CHIP_EN,  HIGH);
}

void write_eeprom(byte data, word address) {
  delay(5);

  set_io_pins(OUTPUT);

  set_address(address);
  
  for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin++) {
    digitalWrite(pin, data & 1);
    data = data >> 1;
  }
  
  delay(1);
  
  output_disable();
  chip_enable();
  write_enable();
  
  delay(1);
  
  chip_disable();
  write_disable();
}

byte read_eeprom(word address) {  
  delay(5);

  set_io_pins(INPUT);

  set_address(address);

  write_disable();
  output_enable();
  chip_enable();

  byte data = 0;
  for (int pin = EEPROM_D7; pin >= EEPROM_D0; pin--) {
    data = (data << 1) + digitalRead(pin);
  }
  
  output_disable();
  chip_disable();
  
  return data;
}

void disable_SDP() {
  set_io_pins(OUTPUT);

  chip_enable();

  write_eeprom(0xaa, 0x5555);
  write_eeprom(0x55, 0x2aaa);
  write_eeprom(0x80, 0x5555);
  write_eeprom(0xaa, 0x5555);
  write_eeprom(0x55, 0x2aaa);
  write_eeprom(0x20, 0x5555);
  
  chip_disable();
}

void print_contents() {
  int buf_size = 16;
   
  Serial.println("Reading EEPROM");
  for(word base=0; base < EEPROM_SIZE; base += 16) {
    uint8_t data[buf_size];
    for(int offset=0; offset < buf_size; offset++) {
      data[offset] = read_eeprom(base + offset);
    }

    char buf[buf_size*4];
    sprintf(buf, "%04x:  %02x %02x %02x %02x %02x %02x %02x %02x  %02x %02x %02x %02x %02x %02x %02x %02x",
      base, data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7], 
      data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15]);
    Serial.print(buf);
    Serial.print(' ');
    for (int i=0;i < buf_size;i++) {
      Serial.print(data[i] < 32 | data[i] > 127 ? '.' : (char) data[i]);
    }

    Serial.println();
  } 
}

void setup() {
  Serial.begin(9600);
  Serial.setTimeout(1);

  pinMode(SHIFT_LATCH, OUTPUT);
  pinMode(SHIFT_CLK, OUTPUT);
  pinMode(SHIFT_DATA, OUTPUT);

  digitalWrite(SHIFT_LATCH, LOW);
  
  pinMode(WRITE_EN, OUTPUT);
  pinMode(OUTPUT_EN, OUTPUT);
  pinMode(CHIP_EN, OUTPUT);

  set_io_pins(OUTPUT);
  set_address(0x00);

  output_disable();
  write_disable();
  chip_disable();
  
  delay(1);

  disable_SDP();

  print_contents();
}

int address_counter = 1; 
bool clear_test = false;

void loop() {
  while(!Serial.available()) {
  }

  int data = Serial.read();
  write_eeprom(data, address_counter++);  
  delay(10);
}
