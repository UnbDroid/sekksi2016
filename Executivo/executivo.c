/*
    Codigo da equipe KSI da SEK 2016 do cÃ©rebro EXECUTIVO
    */

//Funcoes necessarias
/*
  - Andar reto
  - Curva 90 graus
  - Comunicacao bluetooth com Consultor
  - Armazenar posicao em matriz

  -DEBUG
    - Ler todos os sensores


*/


//MACROS
//PARAMETROS (REGULAR!!!! SEMPRE!!!!!)

//CORES
#define AZUL 2
#define VERDE 4
#define BRANCO_MIN 12
#define BRANCO_MAX 17
#define PRETO 0

//DIST
#define distMinParede 8

//LOGICA
#define direita 1
#define esquerda 2
#define tempoVirada 300


//SENSORES E MOTORES
#define MD OUT_B //motor da direita
#define ME OUT_A //motor da esquerda
#define MP OUT_C //motor da porta
#define USD IN_1 //Utrasonico da direita
#define USE IN_2 //Utrasonico da esquerda
#define HTD IN_3//hitech da direita
#define HTE IN_4//hitech da esquerda

//COMUNICACAO BLUETOOTH
#define BT_CONN 1
#define INBOX 1
#define OUTBOX 5


//Var Globais



//declaracoes de funcoes
void inicializaSensores(void);
void retoParedeDireita(void);
void lerSensores(void);
void andaRetoEDaUmaViradinha(void);
void retoParedeSel(int direcao);
bool BTCheck(int conn);
void vira(int direcao);
byte comunicaBlue(void);


//funcoes de debug
void lerSensores(){
  while(true){
      ClearScreen();
      TextOut(0, LCD_LINE1, "HTD : ",0);
      NumOut(0, LCD_LINE2, SensorHTColorNum(HTD),0);
      TextOut(0, LCD_LINE3, "HTE : ",0);
      NumOut(0, LCD_LINE4, SensorHTColorNum(HTE),0);
      TextOut(0, LCD_LINE5, "USD : ",0);
      NumOut(0, LCD_LINE6, SensorUS(USD),0);
      TextOut(0, LCD_LINE7, "USE : ",0);
      NumOut(0, LCD_LINE8, SensorUS(USE),0);
      Wait(50);
    }
}

bool BTCheck(int conn){
 if (!BluetoothStatus(conn)==NO_ERR){
 TextOut(5,LCD_LINE2,"Error");
 Wait(100);
 //Stop(true);
 return true;
 }
}



//funcao principal
task main()
{
    inicializaSensores();
    lerSensores();
    vira(direita);
    retoParedeSel(esquerda);

}

//assinatura das funcoes
void inicializaSensores()
{
  SetSensorLowspeed(USD);
  SetSensorLowspeed(USE);
  SetSensorLowspeed(HTD);
  SetSensorLowspeed(HTE);
}


void vira(int direcao){
  int potd = 90, pote = 90;
   
   if(esquerda){
    OnFwd(MD,potd);
    OnFwd(ME,-pote);
   } 
   else if(direita){
    OnFwd(MD,-potd);
    OnFwd(ME,+pote);
   }

   Wait(tempoVirada);
     
}

//Decide se o robo deve virar
byte comunicaBlue(){
   string sinalUSFRENTE = "";
   string sinalGarraPara = "";
   string sinalGarraContinua = "";
   while(BTCheck(BT_CONN)){
      ReceiveRemoteString(INBOX, true, sinalUSFRENTE);
      ReceiveRemoteString(INBOX, true, sinalGarraPara);
      ReceiveRemoteString(INBOX, true, sinalGarraContinua);

      //verifica se tem Parede
      if(sinalUSFRENTE == "1"){
        return 1;//Manda sinal do ultrassom pro robo
      }else if(sinalGarraPara = "1"){//verifica se precisa parar o robo pra garra pegar o alien
        OffEx(MD,0);
        OffEx(ME,0);
        while(sinalGarraContinua != "1");
        return 2;//Parou o robo
      } 
     }
     return 0;// erro bluetooth
}

void retoParedeSel(int direcao)
{
   //var locais
    int d, old_d;
    int potd, pote;
    
    potd = 90;
    pote = 90;
    
    OnFwd(MD,potd);
    OnFwd(ME,pote);
    d = SensorUS(USD);
    old_d = d;
    

    while(1)
    {
      //Carrega e da upload no valor da distancia

      old_d = d;
      d = SensorUS(USD);

      //Chama funcao bluetooth pra saber se vira, ou entÃ£o para
      if(comunicaBlue()==1){//viu Parede ou boneco com USFRENTE
        if(direcao == direita)
          vira(esquerda);
        else if(direcao == esquerda)
          vira(direita);
      }
      else if(d == old_d)
      {
          Wait(300);
      }
      else
      {
        switch(direcao){
          case direita:
            if(d<old_d){
                pote--;
              if(potd<90)
                potd++;
              }
            else{
                potd--;
              if(pote<90)
                pote++;
            }    
            OnFwd(MD,potd);
            OnFwd(ME,pote);
          break;

          case esquerda:
            if(d<old_d){
                potd--;
                if(pote<90)
                pote++;
              }
            else{
                pote--;
                if(potd<90)
                potd++;
            }
            OnFwd(MD,potd);
            OnFwd(ME,pote);
            break;
        }
      }
    } 
}

void retoParedeDireita()
{
    //var locais
    int d, old_d;
    int potd, pote;
    
    potd = 90;
    pote = 90;
    
    OnFwd(MD,potd);
    OnFwd(ME,pote);
    d = SensorUS(USD);
    old_d = d;
    while(1)
    {
      ClearScreen();
      TextOut(0, LCD_LINE1, "USD : ",0);
      NumOut(0, LCD_LINE2, SensorUS(USD),0);
      old_d = d;
      d = SensorUS(USD);
      if(d == old_d)
      {
          Wait(300);
      }
      else
      {
          if(d<old_d){
              pote--;
              if(potd<90)
                potd++;
              }
          else{
              potd--;
              if(pote<90)
                pote++;
              }
          OnFwd(MD,potd);
          OnFwd(ME,pote);
      }
    }    
}