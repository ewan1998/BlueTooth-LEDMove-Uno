#ifndef SRC_UTIL_BUTTON_H_
#define SRC_UTIL_BUTTON_H_

#include <Arduino.h>
#include "SuperLoop.h"

class Button : public SuperLoop {
	byte pinNumber;
	byte buttonState;
	byte lastReading;

	void (*pushHandler)();	// 함수 포인터
	void (  *upHandler)();	// 함수 포인터
public:
	Button(byte pin);
	void begin(uint32_t cycle) override;
private:
	void job() override;
public:
	virtual void push();
	virtual void up();

	void setPushHandler(void (*pushHandler)()) {
		this->pushHandler = pushHandler;
	}
	void setUpHandler(void (*upHandler)()) {
		this->upHandler = upHandler;
	}
};



#endif /* SRC_UTIL_BUTTON_H_ */
