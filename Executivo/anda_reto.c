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
#define MD OUT_A //motor da direita
#define ME OUT_B //motor da esquerda
#define MP OUT_C //motor da porta
#define USD IN_1 //Utrasonico da direita
#define USE IN_2 //Utrasonico da esquerda
#define HTD IN_3//hitech da direita
#define HTE IN_4//hitech da esquerda

//COMUNICACAO BLUETOOTH
#define BT_CONN 1
#define INBOX 1
#define OUTBOX 5

int my_tc_d;
int my_tc_e;

void inicializaSensores()
{
  SetSensorLowspeed(USD);
  SetSensorLowspeed(USE);
  SetSensorLowspeed(HTD);
  SetSensorLowspeed(HTE);
}

void andaRetoDireita(int dist){
	int distanciaAtual, potd, pote;
	my_tc_d = 0;
	my_tc_e = 0;
	
	while(distanciaTachoCount(my_tc_d)<1500){
		distanciaAtual = SensorUS(USD);
		if (distanciaAtual == dist){
			potd = 90;
			pote = 90;
		}
		else if(distanciaAtual > dist){
			pote = 90;
			potd = 70;
		}
		else if(distanciaAtual < dist){
			pote = 70;
			potd = 90;
		}
		my_tc_d += MotorTachoCount(MD);
		OnFwd(MD, potd);
		my_tc_e += MotorTachoCount(ME);
		OnFwd(ME, pote);
	}
	Off(MD);
	Off(ME);
	
	
}

void distanciaTachoCount(int grau){
	return ((1142*grau)/360);
}

task main(){
	inicializaSensores();
	andaRetoDireita(15);
}