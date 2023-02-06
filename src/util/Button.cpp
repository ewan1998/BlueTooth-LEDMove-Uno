
#include "Button.h"

Button::Button(byte pin) {
	pinNumber = pin;
	buttonState = 1;
	lastReading = 1;

	pushHandler = nullptr;
	upHandler = nullptr;
}

void Button::begin(uint32_t cycle) {
	SuperLoop::begin(cycle);
	pinMode(pinNumber, INPUT_PULLUP);
}

void Button::job() {
	byte reading = digitalRead(pinNumber);

	if (reading != buttonState and reading == lastReading) {
		if (buttonState == 1) {
			if (pushHandler!=nullptr)
				pushHandler();
			push();
		} else {
			if (upHandler!=nullptr)
				upHandler();
			up();
		}

		buttonState = reading;
	}

	lastReading = reading;
}

void Button::push() {

}

void Button::up() {

}



