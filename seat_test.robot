*** Settings ***
Documentation     SQA Test Suite for Automotive Pneumatic Seat Adjustment
# This simulates the logic an SQA would use to test seat bladders.

*** Variables ***
${POWER_ON}       True
${TARGET_PSI}     5.5
${TOLERANCE}      0.2

*** Test Cases ***
Verify Seat Height Adjustment Upward
    [Documentation]    Validates that the pneumatic bladder inflates when 'Up' is pressed.
    Given the seat power supply is ${POWER_ON}
    When I trigger the "UP" movement for 3 seconds
    Then the vertical sensor should reach ${TARGET_PSI}

Verify Seat Lateral Bolster Movement Left
    [Documentation]    Validates lateral support movement (Left side).
    Given the seat power supply is ${POWER_ON}
    When I trigger the "LEFT" movement for 2 seconds
    Then the left bolster pressure should increase

*** Keywords ***
the seat power supply is ${status}
    Log    Checking ECU Power Status: ${status}
    # Logic: In a real SQA setup, this would check a CAN message or Voltage sensor.

I trigger the "${direction}" movement for ${time} seconds
    Log    Commanding ${direction} solenoid valve to OPEN for ${time}s
    # Logic: This sends the signal to the pneumatic pump.

the vertical sensor should reach ${value}
    Log    Reading pressure sensor... current value is ${value}
    # Logic: This compares the real-time PSI to your target.

the left bolster pressure should increase
    Log    Verifying pressure delta in lateral bladder.
    # Logic: Ensure the pressure is higher than it was before the 'When' step.
