@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Jul 10 22:58:56 +0100 2020
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto b3f6e290ef46447cb0114a332389eb17 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot ECB_tb2_behav xil_defaultlib.ECB_tb2 -log elaborate.log"
call xelab  -wto b3f6e290ef46447cb0114a332389eb17 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot ECB_tb2_behav xil_defaultlib.ECB_tb2 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
