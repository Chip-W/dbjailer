# DBJailer
This edit includes the original dbjailer that works with Mission Row.  My edits include dbjailerss and dbjailerpb.  These extra jails use an included ymap located under the Bolingbrook prison.  My edits allow you to send someone to jail from either the Sandy Shores Sheriff's Office or the Paleto Bay Sheriff's Office and have the prisoner return to the station they were sent from.
<br><br>
# Original Credits
The original script was created by Albo1125.  Then edited to be database driven to stop combat loggers by SSPU1W as well as include a fine system and pNotify.  The original script by Albo1125 can be found here - https://forum.fivem.net/t/release-fx-jailer-1-1-0-0/41963 and the modified version of his by SSPU1W can be found here- https://forum.fivem.net/t/release-esx-database-jail-script-with-pnotify-no-more-combat-logging/69556
<br>
# Installation
There are four resources here and all four must be started separately.
- copy dbjailer, dbjailerss, dbjailerpb, and jail to your **resources** folder
- In your **server.cfg** add:
- start dbjailer
- start dbjailerss
- start dbjailerpb
- start jail
- import the **jail.sql** to your database

# Usage

When in the city:

- jail1 playerID time
- jail2 playerID time
- jail3 playerID time

In Sandy Shores:

- ssjail1 playerID time
- ssjail2 playerID time
- ssjail3 playerID time

In Paleto Bay:

- pbjail1 playerID time
- pbjail2 playerID time
- pbjail3 playerID time
<br>

**NOTE**<br>

It is very importand you do your time in **MINUTES** and not seconds.  If you put in 120 for the time, you will jail them for 120 minutes when you intended to only put them in jail for 2 minutes.<br>

**NOTE**

<br>

For those not using ESX or VRP, to issue a fine to your player:<br>

/fine playerID amount

<br>

For those using ESX or VRP, just use your police scripts to issue fines.

<br>

Sandy Shores and Paleto Bay both use the jail ymap under Bolingbrook Prison.

<br>

# Known Issue

You will need to clear out your **jail** table in your database daily.  After your players get out of jail, they will respawn at the place they were sent to jail.  However, when they leave the server and come back or after being revived from a death, they respawn at Mission Row.  This is an issue with the original dbjailer and has not been fixed yet. 
