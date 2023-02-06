
#include "SuperLoop.h"
#include <Arduino.h>

SuperLoop::SuperLoop() {
		previousMillis = 0;
		cycle = 100;
}

void SuperLoop::begin(unsigned long cycle) {
	this->cycle = cycle;
	previousMillis = millis();
}

void SuperLoop::loop() {
	unsigned long currentMillis = millis();
	if (currentMillis-previousMillis>=cycle and !stopFlag) {
		previousMillis = currentMillis;
		job();
	}
}

SuperLoop::~SuperLoop() {

}

void SuperLoop:: setCycle(unsigned long cycle){
	this->cycle =cycle;
}
	unsigned long SuperLoop:: getCycle(){

		return cycle;
	}
	void SuperLoop:: setStop(bool stop){

		this->stopFlag =stop;
	}
	bool SuperLoop:: isStop(){
		return stopFlag;
	}

