@echo off
title Windows Boot Manager
mode con: cols=100 lines=35
cls

echo ================================================================================
echo                        Microsoft Windows Boot Manager
echo ================================================================================

echo.
timeout /t 2 >nul

echo [BOOT] BIOS initialization completed
ping 127.0.0.1 -n 2 >nul

echo [BOOT] UEFI firmware loaded
ping 127.0.0.1 -n 2 >nul

echo.
echo [INFO] Performing hardware scan...
ping 127.0.0.1 -n 3 >nul

echo [CPU ] Detecting processor configuration...
ping 127.0.0.1 -n 2 >nul
echo [CPU ] x64 architecture confirmed
ping 127.0.0.1 -n 1 >nul

echo.
echo [MEM ] Checking memory integrity...
ping 127.0.0.1 -n 3 >nul
echo [MEM ] 16384MB RAM detected
ping 127.0.0.1 -n 1 >nul

echo.
echo [SYS ] Loading kernel modules...
ping 127.0.0.1 -n 2 >nul
echo [SYS ] ntoskrnl.exe loaded
ping 127.0.0.1 -n 1 >nul
echo [SYS ] HAL initialized
ping 127.0.0.1 -n 2 >nul

echo.
echo [DRV ] Initializing device drivers...
ping 127.0.0.1 -n 3 >nul
echo [DRV ] disk.sys loaded
ping 127.0.0.1 -n 1 >nul
echo [DRV ] ACPI.sys loaded
ping 127.0.0.1 -n 1 >nul
echo [DRV ] USB controller ready
ping 127.0.0.1 -n 2 >nul

echo.
echo [DISK] Detecting storage devices...
ping 127.0.0.1 -n 3 >nul
echo [DISK] NVMe SSD detected
ping 127.0.0.1 -n 1 >nul

echo.
echo [FS  ] Mounting system drive...
ping 127.0.0.1 -n 2 >nul
echo [FS  ] C:\ mounted successfully
ping 127.0.0.1 -n 1 >nul

echo.
echo [REG ] Loading registry hives...
ping 127.0.0.1 -n 3 >nul
echo [REG ] SYSTEM hive loaded
ping 127.0.0.1 -n 1 >nul
echo [REG ] SOFTWARE hive loaded
ping 127.0.0.1 -n 2 >nul

echo.
echo [NET ] Starting network stack...
ping 127.0.0.1 -n 3 >nul
echo [NET ] DHCP request sent...
ping 127.0.0.1 -n 2 >nul
echo [NET ] IP address assigned
ping 127.0.0.1 -n 1 >nul

echo.
echo [GPU ] Initializing graphics subsystem...
ping 127.0.0.1 -n 3 >nul
echo [GPU ] Display driver loaded
ping 127.0.0.1 -n 2 >nul

echo.
echo [SRV ] Starting system services...
ping 127.0.0.1 -n 3 >nul
echo [SRV ] Core services running
ping 127.0.0.1 -n 2 >nul

echo.
echo [USR ] Loading user profile...
ping 127.0.0.1 -n 3 >nul
echo [USR ] Desktop environment ready
ping 127.0.0.1 -n 2 >nul

echo.
echo [EXP ] Launching Explorer shell...
ping 127.0.0.1 -n 2 >nul
echo [EXP ] Shell initialized
ping 127.0.0.1 -n 2 >nul

echo.
echo [SYS ] Finalizing boot sequence...
ping 127.0.0.1 -n 4 >nul

color 0C

echo [SYS ] ERROR Finalizing boot sequence

cls

echo ################################################################################
echo.
echo                       ! ! ! CRITICAL SYSTEM FAILURE ! ! !
echo.
echo ################################################################################

echo.
echo [ERROR] [CRITICAL] Boot failure detected
echo Error Code : 0xC000021A
echo Module     : winload.exe
echo.
echo Diagnosing system state...
ping 127.0.0.1 -n 3 >nul

echo Kernel integrity check failed
ping 127.0.0.1 -n 2 >nul
echo Boot configuration corrupted
ping 127.0.0.1 -n 2 >nul
echo Recovery environment missing
ping 127.0.0.1 -n 3 >nul

echo.
echo System will shut down in 10 seconds...
timeout /t 10

goto fake

:fake

cls
echo it's just fake
timeout /t 1 >nul

exit