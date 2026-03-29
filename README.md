# Ultrasonic Radar System

## Overview

The Ultrasonic Radar System is an embedded electronics and signal processing project that implements a real-time object detection and distance measurement system using ultrasonic sensors. This project demonstrates the integration of Arduino microcontroller hardware with MATLAB-based signal processing and visualization to create a functional radar display system. The system acquires sonar signals from an ultrasonic transducer, processes the return signals through serial communication, and renders real-time radar visualization.

## Project Purpose

This project serves as a comprehensive educational overview of:
- **Embedded Systems Integration**: Arduino microcontroller programming and hardware interfacing
- **Signal Processing**: Serial communication protocols and real-time sensor data acquisition
- **Signal Visualization**: MATLAB-based radar screen display for visual interpretation of spatial data
- **Hardware-Software Integration**: Bridging low-level hardware control with high-level signal analysis

## System Architecture

### Hardware Components
- **Arduino Microcontroller**: Manages sensor control and data acquisition
- **Ultrasonic Sensor (HC-SR04)**: Emits ultrasonic pulses and receives return signals for distance measurement
- **Servo Motor**: Rotates the ultrasonic sensor to sweep a 180-degree arc for full spatial coverage
- **Serial Interface**: Enables real-time data transmission between Arduino and MATLAB

### Software Components
- **Arduino Firmware** (`ArduinoC_Code.c`): Handles sensor control, timing calculations, and distance computation
- **MATLAB Visualization** (`RadarScreen.m`): Processes incoming serial data and renders real-time radar display
- **Communication Protocol**: Structured serial packets transmit distance and angle measurements

## How It Works

1. **Signal Generation**: Arduino sends a 10µs pulse to the ultrasonic sensor
2. **Echo Detection**: Sensor emits a 40kHz ultrasonic wave and measures the time for echo return
3. **Distance Calculation**: Arrival time is converted to distance using the speed of sound (343 m/s)
4. **Spatial Scanning**: Servo motor rotates the sensor, creating a 2D polar map of the environment
5. **Data Transmission**: Distance and angle data are transmitted via serial connection to MATLAB
6. **Real-Time Display**: MATLAB renders the data as a radar screen with detected objects plotted in polar coordinates

## Key Features

- **Real-Time Processing**: Live sensor data acquisition and visualization
- **180-Degree Scanning**: Complete half-circle environment coverage
- **Distance Range**: Typical range of 2cm to 400cm depending on sensor calibration
- **Serial Communication**: Reliable data transmission at configurable baud rates
- **Radar Visualization**: Intuitive polar coordinate display for spatial awareness

## Technical Specifications

| Parameter | Value |
|-----------|-------|
| Microcontroller | Arduino Uno/Mega |
| Sensor Type | Ultrasonic (HC-SR04 or similar) |
| Frequency | 40 kHz |
| Maximum Range | ~4 meters |
| Angular Resolution | Servo-dependent (typically 1-2 degrees) |
| Update Rate | Real-time polling |
| Communication Protocol | Serial (UART) |
| Baud Rate | 9600 bps (configurable) |

## Complementary Machine Learning Component

This project is complemented by the **Sonar Model** (`Moamen4/Sonar_Model`), which applies machine learning techniques to sonar signal classification. While this radar system performs physical object detection and ranging, the Sonar Model employs Logistic Regression to classify sonar return signals and distinguish between different object types (e.g., mines vs. rocks), demonstrating the bridge between raw hardware signal acquisition and intelligent signal interpretation.

## Project Structure

```
├── ArduinoC_Code.c                        # Microcontroller firmware
├── RadarScreen.m                          # MATLAB visualization engine
├── Arduino_MATLAB_Radar_System_Report.pdf # Technical documentation
├── README.md                              # Project overview
└── LICENSE                                # MIT License
```

## Applications

- **Obstacle Detection**: Autonomous robotics and navigation systems
- **Distance Measurement**: Industrial automation and level sensing
- **Environmental Mapping**: Spatial awareness and mapping applications
- **Educational Platform**: Teaching embedded systems, signal processing, and real-time data visualization
- **Foundation for AI Integration**: Raw sensor data suitable for machine learning signal classification

## Signal Processing Pipeline

The system implements a complete signal processing pipeline:

1. **Acquisition**: Real-time sensor data capture via Arduino
2. **Transmission**: Serial communication with error-tolerant protocols
3. **Reception**: MATLAB serial port monitoring and parsing
4. **Filtering**: Optional noise reduction and smoothing algorithms
5. **Transformation**: Conversion from time-of-flight to distance and angular coordinates
6. **Visualization**: Rendering in polar coordinates for intuitive spatial representation

## Requirements

- Arduino IDE for firmware development and deployment
- MATLAB (R2016a or later) with Signal Processing Toolbox
- Basic electronics components (resistors, capacitors, power supply)
- USB Serial adapter for Arduino-MATLAB communication

## Getting Started

1. **Hardware Setup**: Connect the ultrasonic sensor and servo motor to Arduino pins as specified in `ArduinoC_Code.c`
2. **Firmware Upload**: Compile and upload `ArduinoC_Code.c` to the Arduino microcontroller
3. **MATLAB Configuration**: Update the serial port settings in `RadarScreen.m` to match your system
4. **Execution**: Run the MATLAB script to begin real-time radar visualization
5. **Calibration**: Adjust distance calibration factors based on environmental conditions

## Documentation

Comprehensive technical details, system diagrams, and experimental results are available in:
- `Arduino_MATLAB_Radar_System_Report.pdf`

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Author

**Moamen4** - Embedded Systems & Signal Processing Project

---

**Note**: This project demonstrates fundamental concepts in embedded systems integration and signal processing. For advanced sonar signal classification tasks, refer to the complementary Sonar Model project utilizing machine learning techniques.