extern void wait ();
extern void __fastcall__ rs232_tx (char *str);

int main () {
  while (1) {                                     //  Run forever
    rs232_tx ("Hello World!"); 
  }

  return (0);                                     //  We should never get here!
}