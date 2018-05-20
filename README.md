# Nvidia gpu autofans
Nvidia gpu automatic fan speed script for HiveOS Ubuntu. Tested with Nvidia GTX 1060 / 1070 / 1080.

# Disclaimer
Use and change at your own risk! Not responsible for any damages or issues, changing temperature controls, fan speed, etc. might damage your computer hardwares.

# Run (thanks lexandr0s)
Impotant: be very careful!!!

 - Put autofan.sh and xinit.user.sh to ```/home/user/``` folder. 
 - Change permissions to ```-rwxr-xr-x (755)``` (chmod +x /home/user/autofan.sh and chmod +x /home/user/xinit.user.sh)
 - Test:
     ```
     root@rig: ./autofan.sh
     ```
     Terminate process Ctrl+C
     
 - do command ```screen -dmS autofan /home/user/autofan.sh``` or reboot system
 - Test:  
     ```
     screen -ls
     ```
     You must see autofan process. 
     
     Or (from console, not over ssh):
     ```
     screen -r autofan
     ```
     and watch the script work. 
     
     Now autofan.sh will work in background after boot system. 
    
# Attention
Before making changes, calculate the fan speed!!!

If you want kill the script autofan.sh:
```      
root@rig: pkill autofan.sh
```
and apply your HiveOS OC settings from your account (restore your default fan settings)!

If you want start the script again do command:

```
root@rig: screen -dmS autofan /home/user/autofan.sh
```
or  just reboot.

# Examples of temperature and fan speed (default script settings)
- 55 C : 33 %
- 60 C : 42 %
- 65 C : 52 %
- 69 C : 66 %
- 71 C : 80 %
- 72 C : 84 %
- 75 C : 97 %

If you change MIN_COEF=85 only then
- 55 C : 35 %
- 60 C : 45 %
- 65 C : 55 %
- 69 C : 69 %
- 71 C : 80 %

 If you change MIN_TEMP=63 and MAX_TEMP=68 only then
- 60 C : 44 %
- 65 C : 57 %
- 69 C : 78 %
- 71 C : 86 %

Calc https://docs.google.com/spreadsheets/d/1WIFmyyYiKxEmjZeXVx17DSbxZVzSR38jgQolwdpGHNI/edit?usp=sharing 
(you can change MIN_COEF and MAX_COEF)

# Youtube
    https://youtu.be/mteaBR5XQ-o
    
# Donate

Nicehash: ```3JKA47P98c9JGCy3GN7qXFC2FzeuJmXuph```

Zec: ```t1fP9jWyqFEni2p4i9t3byqtimsMKv1y95T```

ETH: ```0xe835a7d5605a370e4750279b28f9ce0926061ea2```

