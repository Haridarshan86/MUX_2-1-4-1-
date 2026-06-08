
# Multiplexers Using Conditional Operator in Verilog HDL

## Overview

This repository contains the Verilog HDL implementation of:

1. **2:1 Multiplexer (MUX)**
2. **4:1 Multiplexer (MUX)**

Both multiplexers are designed using **Dataflow Modeling** with the **conditional (ternary) operator (`?:`)**. Testbenches are included to verify the functionality of each design.

---

## What is a Multiplexer?

A Multiplexer (MUX) is a combinational circuit that selects one of several input signals and forwards the selected input to a single output line.

The selection is controlled by one or more select lines.

---

# 2:1 Multiplexer

## Description

A 2:1 Multiplexer selects one of two inputs based on a single select line.

### Inputs

| Signal | Description |
|----------|-------------|
| a | Input 0 |
| b | Input 1 |
| sel | Select line |

### Output

| Signal | Description |
|----------|-------------|
| y | Selected output |

### Logic

```verilog
assign y = sel ? b : a;
```

### Truth Table

| sel | Output |
|-----|--------|
| 0 | a |
| 1 | b |

---

# 4:1 Multiplexer

## Description

A 4:1 Multiplexer selects one of four inputs based on a 2-bit select line.

### Inputs

| Signal | Description |
|----------|-------------|
| i0 | Input 0 |
| i1 | Input 1 |
| i2 | Input 2 |
| i3 | Input 3 |
| sel[1:0] | Select lines |

### Output

| Signal | Description |
|----------|-------------|
| y | Selected output |

### Logic

```verilog
assign y = (sel == 2'b00) ? i0 :
           (sel == 2'b01) ? i1 :
           (sel == 2'b10) ? i2 :
                            i3;
```

### Truth Table

| sel | Output |
|-----|--------|
| 00 | i0 |
| 01 | i1 |
| 10 | i2 |
| 11 | i3 |

---

## Modeling Style

Both designs use **Dataflow Modeling** with the Verilog conditional operator.



## Testbench Verification

The testbenches verify all possible input combinations using a `for` loop.

### Sample Simulation Flow

```verilog
for(i = 0; i < 8; i = i + 1)
begin
    {sel, a, b} = i;
    #10;
end
```

For the 4:1 MUX:

```verilog
for(i = 0; i < 64; i = i + 1)
begin
    {sel, i0, i1, i2, i3} = i;
    #10;
end
```

---

## Simulation Result 2:1 MUX

<img width="779" height="384" alt="image" src="https://github.com/user-attachments/assets/848a1756-f4e4-43e9-92b5-bf4e41816ead" />

## Simulation result 4:1 MUX


<img width="959" height="494" alt="Screenshot 2026-06-08 220547" src="https://github.com/user-attachments/assets/d759e867-82d3-4776-b1ab-52ce64c787a0" />




