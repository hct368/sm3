@echo off
cl /O2 /Os /Fa /c /GS- sm3.c
jwasm -bin sm3.asm
cl test.c sm3.c