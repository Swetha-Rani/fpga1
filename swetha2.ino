#include <LiquidCrystal.h>

LiquidCrystal lcd(29,30,31,32,33,34);//RS,EN,D4,D5,D6,D7
#include <Keypad.h>

int Binfinal[] = {0,0,0,0,0,0,0,0};
int v1 = 0;
int v2 = 0;

const byte ROWS = 4; //four rows
const byte COLS = 3; //three columns
char keys[ROWS][COLS] = {
  {'1','2','3'},
  {'4','5','6'},
  {'7','8','9'},
  {'.','0','#'}
};

byte rowPins[ROWS] = {49,46,47,52};//{25,23,22,28};     //{10,6,7,13};     
byte colPins[COLS] ={48,51,50};//{ 24,26,27 };  //{ 9,11,12 }; 
Keypad kpd = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );

void setup(){
  for(int k=29;k<35;k++)

  {

    pinMode(k,OUTPUT);//pins 29-34 are enabled as output

  }
  for(int k=2;k<10;k++)
  {
    pinMode(k,INPUT);
    
    }
    for(int k=10;k<13;k++)

  {

    pinMode(k,INPUT);//pins 54-70 are enabled as output

  }
    
    pinMode(41,INPUT);//pins 26-28 are enabled as output

  pinMode(45,INPUT);
  pinMode(43,INPUT);
  pinMode(42,INPUT);

  lcd.begin(16, 2);//initializing LC
  pinMode(35, HIGH);
  digitalWrite(35,HIGH);
  //pinMode(13, HIGH);
  //digitalWrite(13,HIGH);
 // analogWrite(13, 128); 
  Serial.begin(9600);
}
  
void loop()
{
   int Binfinal[] = {0,0,0,0,0,0,0,0};
   //Serial.print("Enter NO 1 = "); 
   lcd.print("Enter NO 1 = ");
   lcd.setCursor(0,1);
   delay(1000);
   //Serial.print("\n");
   v1 = GetNumber();
   lcd.print(v1);
   Serial.parseFloat();
   Serial.println(v1);
   
   delay(1000);
   
   
   lcd.clear();
   lcd.print("Enter NO 2 = ");
   delay(1000);
  
   v2 = GetNumber();
   lcd.setCursor(0,1);
   lcd.print(v2);
   delay(5000);
   Serial.parseFloat();
   Serial.println(v2);
   int a=v1;
   int b= v2;
   digitalWrite(5,a%2);
//Serial.printl(a%2);
a = (a>>1);
digitalWrite(4,a%2);
//Serial.println(a%2);
a = (a>>1);
digitalWrite(3,a%2);
//Serial.println(a%2);
a = (a>>1);
digitalWrite(2,a%2);
//Serial.println(a%2);
a = (a>>1);
digitalWrite(9,b%2);
//Serial.println(a%2);
b = (b>>1);
digitalWrite(8,b%2);
//Serial.println(a%2);
b = (b>>1);
digitalWrite(7,b%2);
//Serial.println(a%2);
b = (b>>1);
digitalWrite(6,b%2);
//Serial.println(a%2);
//b = (b>>1);
lcd.clear();
   delay(5000);
   Serial.println("calculating");
   delay(3000);
  Binfinal[0] = digitalRead(10);
  Binfinal[1] = digitalRead(11);
  Binfinal[2] = digitalRead(12);
  Binfinal[3] = digitalRead(13);
  Binfinal[4] = digitalRead(42);
  Binfinal[5] = digitalRead(43);
  Binfinal[6] = digitalRead(41);
  Binfinal[7] = digitalRead(45);
for(int i=0; i<8;i++){
    
   
   Serial.println(Binfinal[i]);
   delay(100);
  }
  
   int num =Binfinal[7]*128+Binfinal[6]*64+Binfinal[5]*32+Binfinal[4]*16+Binfinal[3]*8+Binfinal[2]*4+Binfinal[1]*2+Binfinal[0];

   Serial.println(num);
   lcd.print("Ans = ");
   lcd.print(num);
   delay(100);
  
   exit(0); 

}
float  GetNumber()
{
   
   int  num = 0;
   int num2 = 0;
   int a = 0;
   float z = 0.0;
   int t = 0;
   int p =0;
   int number = 0.0;
   char key = kpd.getKey();
   while(key != '#')
   {
      switch (key)
      {
         case NO_KEY:
            break;
          
         case '0': case '1': case '2': case '3': case '4':
         case '5': case '6': case '7': case '8': case '9':
           
            num = num * 10 + (key - '0');
            
            break;

         
        
      }

      key = kpd.getKey();
   }
   
   number = num;
   
   return number;
   
}
