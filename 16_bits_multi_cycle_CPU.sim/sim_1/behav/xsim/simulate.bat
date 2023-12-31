@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.4 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri Dec 01 11:15:17 +0800 2023
REM SW Build 2086221 on Fri Dec 15 20:55:39 MST 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim tb_cpu_with_mem_behav -key {Behavioral:sim_1:Functional:tb_cpu_with_mem} -tclbatch tb_cpu_with_mem.tcl -view E:/Vivado2017/Lab/11.13_all_files/11.13_all_files.srcs/sim_1/imports/czy_2023.11.13_success/tb_cpu_with_mem_behav1.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
