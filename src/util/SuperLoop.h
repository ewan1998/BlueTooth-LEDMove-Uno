#ifndef SRC_UTIL_SUPERLOOP_H_
#define SRC_UTIL_SUPERLOOP_H_

class SuperLoop {
	unsigned long previousMillis;
	unsigned long cycle;
	bool stopFlag = false;
public:
	SuperLoop();

	virtual void begin(unsigned long cycle);

	void loop();
	virtual ~SuperLoop();

protected:
	virtual void job() = 0;
public:
	void setCycle(unsigned long cycle);
	unsigned long getCycle();
	void setStop(bool stop);
	bool isStop();

	void start(){
		setStop(false);
	}
	void stop(){
		setStop(true);
	}
};





#endif /* SRC_UTIL_SUPERLOOP_H_ */
