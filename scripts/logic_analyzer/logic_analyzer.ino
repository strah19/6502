int const ADDRESS_LINES[] = { 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53 };
int const DATA_LINES[] = { 38, 40, 42, 44, 46, 48, 50, 52 };
#define RW 6
#define CLK 2

void set_address_lines() {
  for (int i = 0; i < 16; i++) {
    pinMode(ADDRESS_LINES[i], INPUT);
  }  
}

void set_data_lines() {
  for (int i = 0; i <= 8; i++) {
    pinMode(DATA_LINES[i], INPUT);
  }  
}

void setup() {
  Serial.begin(115200);

  set_address_lines();
  set_data_lines();

  pinMode(RW, INPUT);
  pinMode(CLK, INPUT);

  attachInterrupt(digitalPinToInterrupt(CLK), on_clock, RISING);
}

void on_clock() {
  char output[15];
  short address = 0;
  for (int i = 15; i >= 0; i--) {
    int bit = digitalRead(ADDRESS_LINES[i]) ? 1 : 0;
    Serial.print(bit);
    address = (address << 1) + bit;
  }
  
  Serial.print("   ");

  byte data = 0;
  for (int i = 7; i >= 0; i--) {
    int bit = digitalRead(DATA_LINES[i]) ? 1 : 0;
    Serial.print(bit);
    data = (data << 1) + bit;
  }

  Serial.print("   ");

  sprintf(output, "   %04x  %c %02x", address, digitalRead(RW) ? 'r' : 'W', data);
  Serial.println(output);  
}

void loop() { }
