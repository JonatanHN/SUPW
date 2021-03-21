::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBFbQgWSAE+/Fb4I5/jH6euRq04SWqw2e4C7
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBFbQgWSAE+/Fb4I5/jH3OWLt1kUW+wKaIvazrGyM+8f/1HtepgYxn5bjM48CRVcdxysVlls52taswQ=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo .::Solution Update Pending::.

@echo .::Execute::.
net stop wuauserv
net stop cryptsvc 
net stop bits
net stop msiserver
cls

@echo .::Modifying files::.
ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\system32\catroot2 catroot2.old
cls

@echo .::Initializing processes::.
net start wuauserv
net start cryptsvc 
net start bits
net start msiserver
PowerShell.exe -Command "wuauclt.exe /updatenow"
cls


shutdown /c "Termino del sistema, Reinicio inmediato para efectuar los cambios." /r /f