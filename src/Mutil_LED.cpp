#if 1

#include <Arduino.h>
#include <Firmata.h>
#include <LiquidCrystal_I2C.h>
#include <PrintEX.h>
#include "util/SuperLoop.h"
#include "util/Button.h"

#define DS		10
#define STCP	9
#define SHCP	8

#define JoystickX	A0
#define JoystickY	A1
#define JoystickZ	A2

#define SYSEX_LED_1	0x11
#define SYSEX_LED_2	0x22
#define SYSEX_LED_3	0x33
#define SYSEX_LED_4	0x44
#define SYSEX_LED_5	0x55
#define SYSEX_LED_6	0x66
#define SYSEX_LED_7	0x77
#define SYSEX_LED_8 0x88
#define SYSEX_LED_RIGHT	0x81
#define SYSEX_LED_LEFT	0x82
#define SYSEX_LED_SEND	0x83
#define SYSEX_LED_RESET	0x84
#define SYSEX_JOY_STOP	0x15
#define SYSEX_JOY_START	0x16
#define SYSEX_JOY_RESET	0x17

LiquidCrystal_I2C lcd(0x27, 16, 2);
PrintEx _lcd(lcd);


class JoystickXY : public SuperLoop {
private:
	void job() override {
		int Xvalue = analogRead(JoystickX);
		int Yvalue = analogRead(JoystickY);
		int Xvalue_per = map(Xvalue, 0, 1023, -360, 360);
		int Yvalue_per = map(Yvalue, 0, 1023, -360, 360);
		Firmata.sendAnalog(JoystickX%A0, Xvalue);
		Firmata.sendAnalog(JoystickY%A0, Yvalue);
		lcd.setCursor(0, 1);
		_lcd.printf("X= %04d", Xvalue_per);
		lcd.setCursor(8, 1);
		_lcd.printf("Y= %04d", Yvalue_per);
	}
public:
	void start() {
		setStop(false);
	}
	void stop() {
		setStop(true);
	}
};

JoystickXY joyXY;
bool onoff = true;
class JoystickBtn : public Button {
public:
	int cnt =1;
	JoystickBtn() : Button(JoystickZ) {

	}
	void push() override {
		Firmata.sendAnalog(JoystickZ%A0, cnt++);
	}
	void reset() {
		cnt =0;
	}

	void start() {
		setStop(false);
	}
	void stop() {
		setStop(true);
	}
};

JoystickBtn joybtn;

	int turncnt =0;
class LED_move : public SuperLoop {
	int value = 0b00000000;
private:
	void job() override {
		if(turncnt == 1) {
			setLed(value);
			byte keep = bitRead(value, 7);
			value <<=1;
			bitWrite(value, 0, keep);
		} else if (turncnt ==2) {
			setLed(value);
			byte keep = bitRead(value, 0);
			value >>=1;
			bitWrite(value, 7, keep);
		}


	}
public:
	void begin(uint32_t cycle) override {
		SuperLoop::begin(cycle);
		  LSBLed(value);
	}
	int led1 = 0;
	int led2 = 0;
	int led3 = 0;
	int led4 = 0;
	int led5 = 0;
	int led6 = 0;
	int led7 = 0;
	int led8 = 0;
	void Num_LED(int cnt) {
		switch (cnt) {
			case 1:
				if(led1==0) {
					value += 0b00000001;
					led1++;
				} else {
					value -= 0b00000001;
					led1=0;
				}
				break;
			case 2:
				if(led2==0) {
					value += 0b00000010;
					led2++;
				} else {
					value -= 0b00000010;
					led2=0;
				}
				break;
			case 3:
				if(led3==0) {
					value += 0b00000100;
					led3++;
				} else {
					value -= 0b00000100;
					led3=0;
				}
				break;
			case 4:
				if(led4==0) {
					value += 0b00001000;
					led4++;
				} else {
					value -= 0b00001000;
					led4=0;
				}
				break;
			case 5:
				if(led5==0) {
					value += 0b00010000;
					led5++;
				} else {
					value -= 0b00010000;
					led5=0;
				}
				break;
			case 6:
				if(led6==0) {
					value += 0b00100000;
					led6++;
				} else {
					value -= 0b00100000;
					led6=0;
				}
				break;
			case 7:
				if(led7==0) {
					value += 0b01000000;
					led7++;
				} else {
					value -= 0b01000000;
					led7=0;
				}
				break;
			case 8:
				if(led8==0) {
					value += 0b10000000;
					led8++;
				} else {
					value -= 0b10000000;
					led8=0;
				}
				break;
			default:
				break;
		}
		  byte keep = bitRead(value, 7);

	}

	void send() {
		setLed(value);
	}
	void setLed(byte value) {
	  digitalWrite(STCP, LOW);
	  shiftOut(DS, SHCP, LSBFIRST, value);
	  digitalWrite(STCP, HIGH);
	}

	void reset() {
		value = 0b00000000;
		send();
	}

	void start() {
		setStop(false);
	}
	void stop() {
		setStop(true);
	}

	void LSBLed(byte value) {
	  digitalWrite(STCP, LOW);
	  shiftOut(DS, SHCP, LSBFIRST, value);
	  digitalWrite(STCP, HIGH);
	}

	void right(byte value) {
		byte keep = bitRead(value, 7);
		value <<=1;
		bitWrite(value, 0, keep);
	}
	void left(byte value) {
			byte keep = bitRead(value, 7);
			value >>=1;
			bitWrite(value, 0, keep);
	}

};

LED_move led_move;
bool joyturn = true;

void setup()
{
	Serial.begin(115200);
	Serial1.begin(115200);
	Firmata.begin(Serial1);
	lcd.init();
	lcd.backlight();
	joyXY.begin(50);
	joyXY.stop();
	joybtn.begin(50);
	joybtn.stop();
	led_move.begin(500);
	pinMode(DS, 	OUTPUT);
	pinMode(STCP, OUTPUT);
	pinMode(SHCP, OUTPUT);

	Firmata.attach(REPORT_ANALOG, [](uint8_t pin, int value){
		switch (pin) {
			case JoystickX%A0:
				joyXY.start();
				break;
			case JoystickZ%A0:
				joybtn.start();
				break;
			default:
				break;
		}
	});

	Firmata.attach(START_SYSEX, [](uint8_t command, uint8_t argc, uint8_t *argv){
		switch (command) {
			case SYSEX_LED_1:
				led_move.stop();
				led_move.Num_LED(1);
				break;
			case SYSEX_LED_2:
				led_move.stop();
				led_move.Num_LED(2);
				break;
			case SYSEX_LED_3:
				led_move.stop();
				led_move.Num_LED(3);
				break;
			case SYSEX_LED_4:
				led_move.stop();
				led_move.Num_LED(4);
				break;
			case SYSEX_LED_5:
				led_move.stop();
				led_move.Num_LED(5);
				break;
			case SYSEX_LED_6:
				led_move.stop();
				led_move.Num_LED(6);
				break;
			case SYSEX_LED_7:
				led_move.stop();
				led_move.Num_LED(7);
				break;
			case SYSEX_LED_8:
				led_move.stop();
				led_move.Num_LED(8);
				break;
			case SYSEX_LED_LEFT:
				turncnt = 1;
				led_move.stop();
				led_move.start();
				break;
			case SYSEX_LED_RIGHT:
				turncnt = 2;
				led_move.stop();
				led_move.start();
				break;
			case SYSEX_LED_SEND:
				led_move.stop();
				led_move.send();
				break;
			case SYSEX_LED_RESET:
				led_move.stop();
				led_move.reset();
				break;
			case SYSEX_JOY_STOP:
					joyXY.stop();
					joybtn.stop();
				break;
			case SYSEX_JOY_START:
					joyXY.start();
					joybtn.start();
				break;
			case SYSEX_JOY_RESET:
					joybtn.reset();
				break;
			default:
				break;
		}
	});



}

void loop()
{
	joyXY.loop();
	joybtn.loop();
	led_move.loop();
	   while (Firmata.available())
	      Firmata.processInput();

}


//void setup()
//{
//	Serial1.begin(115200);
//	Firmata.begin(Serial1);
//
////  pinMode(DS, 	OUTPUT);
////  pinMode(STCP, OUTPUT);
////  pinMode(SHCP, OUTPUT);
//
//
//}
//
void setLed(byte value) {
  digitalWrite(STCP, LOW);
  shiftOut(DS, SHCP, LSBFIRST, value);
  digitalWrite(STCP, HIGH);
}
//int value = 0b00110000;
//void loop()
//{
//
////	setLed(value);
////	delay(500);
////
////	byte keep = bitRead(value, 7);
////	value <<=1;
////	bitWrite(value, 0, keep);
//}

#endif
