#define ADDRESS_1 23
#define ADDRESS_16 53

#define DATA_1 40
#define DATA_8 52

#define RW 6
#define CLK 7

void set_address_lines() {
  for (int i = ADDRESS_1; i <= ADDRESS_16; i++) {
    pinMode(i, INPUT);
  }  
}

void set_data_lines() {
  for (int i = DATA_1; i <= DATA_8; i++) {
    pinMode(i, INPUT);
  }  
}

void setup() {
  Serial.begin(9600);

  set_address_lines();
  set_data_lines();

  pinMode(RW, INPUT);
  pinMode(CLK, INPUT);

  attachInterrupt(digitalPinToInterrupt(CLK), on_clock, RISING);
}

void on_clock() {
  short address = 0;
  for (int i = ADDRESS_1; i <= ADDRESS_16; i++) {
    address = (address << 1) + digitalRead(i);
  }

  byte data = 0;
  for (int i = DATA_1; i <= DATA_8; i++) {
    data = (data << 1) + digitalRead(i);
  }

  Serial.print(address, BIN);
  Serial.print(" ");
  Serial.print(data, BIN);
  Serial.print(" ");
  Serial.print((digitalRead(RW)) ? "W" : "R");
  Serial.print(" ");
  Serial.print(address, HEX);
  Serial.print(" ");
  Serial.println(data, HEX);
}

void loop() {  }
