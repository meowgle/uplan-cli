@echo off

Copyright 2020 meowgle llc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

color e
goto sign in
:uplan
cls
echo ************************************************************
echo #      # ####  #          #    #
echo #      # #  #  #         # #   ######
echo #      # ####  #        #####  #    #
echo ######## #     ####### #     # #    #
echo          #
echo ***********************************************************
echo checking if uplan cli is ready.
ping -n 3 localhost >nul
echo uplan cli is ready !
echo .
set /P cL=[uplan$~
if /I "%cL%" EQU "about" goto :about
%cL%
pause
cls
goto uplan

:log out
goto sign in

:sign in
cls
echo ################# sign in to uplan ################
set /P c= user : 
if /I "%c%" EQU "%username%" goto :uplan
:help
echo ########### protocols ############
echo goto log out - signs you out
echo goto help - gives list of protocols
echo goto exit - exits uplan cli
echo goto update - check for updates
echo ################################
pause
goto uplan

:exit
exit

:update
start https://sites.google.com/view/uplancli/updates
pause
goto uplan

:about
echo ######################
echo made by meowgle llc
echo uplan cli v1.0
echo ######################
pause
goto uplan