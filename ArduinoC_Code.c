#include <Servo.h>
#include <NewPing.h>
#define TRIGGER_PIN 12
#define ECHO_PIN	11
#define MAX_DISTANCE 200 // Maximum distance in cm NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE);
Servo myServo; int angle;
int samples = 10; // Number of readings for averaging

void setup() {
myServo.attach(9);			// Attach servo to pin 9 Serial.begin(9600);		// Start serial communication delay(3000);	// Stabilization delay
}

void loop() {

for (angle = 0; angle < 180; angle++) {

myServo.write(angle); // Move servo to current angle delay(30);	// Allow servo to reach position

long totalDistance = 0;

// Take multiple readings for better accuracy for (int i = 0; i < samples; i++) {
unsigned int duration = sonar.ping();
int distance = duration / US_ROUNDTRIP_CM; // Convert to cm totalDistance += distance;
delay(30);
}

int averageDistance = totalDistance / samples;

// Send angle and distance to MATLAB Serial.print(angle);
	
 

	Serial.print(","); Serial.println(averageDistance);
}
}
