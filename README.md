# VHDL Counter with Overflow Handling

This repository demonstrates a common error in VHDL: improper handling of integer overflow in a counter.  The original code lacks robust overflow management, potentially causing unexpected behavior. The solution showcases a more robust approach that prevents this issue. 

**Original Code (counter_bug.vhdl):** Contains a simple counter with a limited range that lacks explicit overflow handling.

**Solution Code (counter_solution.vhdl):**  Provides a revised counter that gracefully handles potential overflow situations by wrapping around or using a saturated counter design. 

## How to use:
1. Clone the repository.
2. Simulate both the original and solved VHDL code using your preferred VHDL simulator (e.g., ModelSim, GHDL, etc.).
3. Observe the difference in behavior when the counter reaches its maximum value. The original code will likely exhibit unexpected behavior.