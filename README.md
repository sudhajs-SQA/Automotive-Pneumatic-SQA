# Automotive SQA: Pneumatic Seat Adjustment Automation
This project demonstrates automated testing for **Automotive Pneumatic Systems** using **Robot Framework** and **BDD (Behavior Driven Development)**.

## Project Overview
As an SQA Engineer, I developed this suite to validate the 4-way movement (Up, Down, Left, Right) of a pneumatic driver seat. It ensures that solenoid valves and pressure bladders respond correctly to ECU commands.

## Skills Demonstrated
* **BDD Syntax:** Using `Given/When/Then` for clear test logic.
* **Pneumatic Logic:** Testing for pressure thresholds (PSI) and leak detection.
* **Hardware Interfacing:** Designing keywords that bridge high-level tests to low-level hardware signals.

## How to Read the Tests
* **Test Cases:** Found at the top of `seat_test.robot`. Written in English for stakeholders.
* **Keywords:** Found at the bottom. These contain the logic for sensor validation and valve control.
