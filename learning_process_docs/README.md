#### How a computer starts up
1. BIOS is copied from a ROM chip into RAM
2. BIOS starts executing code
	- initializes hardware
	- run some tests (POST)
3. BIOS searches for an operating system to start
4. BIOS loads and starts the operating system
5. operating system runs

```
*what is BIOS?* BIOS stands for basic input/output system. it is a frimware that is built into the computers motherboard,
the BIOS is responsible for initializing and configuring all hardware componenets in the computer such us CPU, RAM, ...
BIOS provides a set of low-level software routines that are used by the OS to communicate with the hardware. These routines are know as BIOS interrupts
```

```
*what is frimware* frimware is a type of software that is typically stored on ROM
with in hardware device it is specific type of software that is desinged to control the operation of a particular hardware device or system

Firmware is different from other types of software, such as operating systems or applications, because it is typically tightly integrated with the hardware of a device. It is usually provided by the manufacturer of the hardware and is designed specifically for that device or system.
```

##### How the BIOS finds an OS
```
- BIOS loads first sector of each bootable device into memory (at location 0x7C00)
- BIOS check for 0XAA55 signature
- if found, it starts execuring code
```


#### Memory segmentaion

````
in "real mode" the registers are limited to 16 bits for addressing but 8086
has 20 bit bus so intel engineers invent a way to address with 20 bits

physical_address = (A * 0x10) + B

A: called base register
B: is offset register

and by default depending on the instruction A will be different
for example for move implicit will use ds (data segment register)

and BIOS by default will set CS register (code segment) to 0
but the others not so we need to set them ourselves
````
