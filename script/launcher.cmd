@echo off
mode con cols=169 lines=50
cls
echo ====================================================================================================================================================================
echo.                                                                                                                                 
echo              ,,                                                  ,,                                                             
echo `7MM"""Yp, `7MM                  `7MM          MMP""MM""YMM    `7MM                                    mm                       
echo   MM    Yb   MM                    MM          P'   MM   `7      MM                                    MM                       
echo   MM    dP   MM  ,pW"Wq.   ,p6"bo  MM  ,MP'         MM  .gP"Ya   MM  .gP"Ya `7MMpMMMb.pMMMb.  .gP"Ya mmMMmm `7Mb,od8 `7M'   `MF'
echo   MM"""bg.   MM 6W'   `Wb 6M'  OO  MM ;Y            MM ,M'   Yb  MM ,M'   Yb  MM    MM    MM ,M'   Yb  MM     MM' "'   VA   ,V  
echo   MM    `Y   MM 8M     M8 8M       MM;Mm            MM 8M""""""  MM 8M""""""  MM    MM    MM 8M""""""  MM     MM        VA ,V   
echo   MM    ,9   MM YA.   ,A9 YM.    , MM `Mb.          MM YM.    ,  MM YM.    ,  MM    MM    MM YM.    ,  MM     MM         VVV    
echo .JMMmmmd9  .JMML.`Ybmd9'   YMbmd'.JMML. YA.       .JMML.`Mbmmd'.JMML.`Mbmmd'.JMML  JMML  JMML.`Mbmmd'  `Mbmo.JMML.       ,V     
echo                                                                                                                         ,V      
echo                                                                                                                      OOb"       
echo                     ,,          ,,                       ,,                                            ,,   ,,                              ,,                  
echo                     db   mm   `7MM            `7MM"""YMM db                                          `7MM `7MM      `7MM"""Mq.            `7MM                  
echo                          MM     MM              MM    `7                                               MM   MM        MM   `MM.             MM                  
echo `7M'    ,A    `MF'`7MM mmMMmm   MMpMMMb.        MM   d `7MM `7Mb,od8 .gP"Ya `7M'    ,A    `MF',6"Yb.   MM   MM        MM   ,M9 `7MM  `7MM   MM  .gP"Ya  ,pP"Ybd 
echo   VA   ,VAA   ,V    MM   MM     MM    MM        MM""MM   MM   MM' "',M'   Yb  VA   ,VAA   ,V 8)   MM   MM   MM        MMmmdM9    MM    MM   MM ,M'   Yb 8I   `" 
echo    VA ,V  VA ,V     MM   MM     MM    MM        MM   Y   MM   MM    8M""""""   VA ,V  VA ,V   ,pm9MM   MM   MM        MM  YM.    MM    MM   MM 8M"""""" `YMMMa. 
echo     VVV    VVV      MM   MM     MM    MM        MM       MM   MM    YM.    ,    VVV    VVV   8M   MM   MM   MM        MM   `Mb.  MM    MM   MM YM.    , L.   I8 
echo      W      W     .JMML. `Mbmo.JMML  JMML.    .JMML.   .JMML.JMML.   `Mbmmd'     W      W    `Moo9^Yo .JMML.JMML.    .JMML. .JMM. `Mbod"YML.JMML.`Mbmmd' M9mmmP'
echo.
echo By EmirAleph                                  
echo.
echo This script is licensed under the GNU General Public License (GPL) version 3.
echo You have the freedom to distribute, modify, and use this script according to the terms of the GPL.
echo See the LICENSE file or visit https://www.gnu.org/licenses/gpl-3.0.html for more details.
echo By using this script, you acknowledge and agree to the terms of the GPL.
echo.
echo - You are free to distribute copies of this script to anyone.
echo - You have the freedom to modify the script's source code to suit your needs.
echo - The complete source code of this script is publicly available.
echo - This script is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY.
echo.
echo How to Contribute?
echo If you would like to contribute or report issues, please visit the project repository:
echo https://github.com/emiraleph/Block-Windows-Telemery-With-Firewall
echo.
echo ====================================================================================================================================================================
echo.
echo Confirm the User Account Control (UAC) prompt to continue.
echo A powershell window will open and then the rules will be added to the firewall to block the telemetry.
echo.

set /p choice=Do you want to proceed? (Y/N): 
if /i "%choice%" neq "Y" goto :eof
echo.
echo Executing Telemetry Blocker...

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dp0.\rules.ps1""' -Verb RunAs}"
if errorlevel 1 (
    echo An error occurred during execution.
) else (
    echo Telemetry blocking rules have been applied successfully.
)
echo.
pause
