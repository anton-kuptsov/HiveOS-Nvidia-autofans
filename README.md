# Nvidia gpu autofans
Nvidia gpu automatic fan speed script for HiveOS Ubuntu. Tested with Nvidia GTX 1060 / 1070 / 1080.

# Disclaimer
Use and change at your own risk! Not responsible for any damages or issues, changing temperature controls, fan speed, etc. might damage your computer hardwares.

# Run method 1 (thanks lexandr0s)
Impotant: be very careful!!!

 - Put autofan.sh and xinit.user.sh to /home/user/ folder. 
 - Change permissions to ```-rwxr-xr-x (755)``` (chmod +x /home/user/autofan.sh and chmod +x /home/user/xinit.user.sh)
 - Test:
     ```
     root@rig: ./autofan.sh
     ```
     Terminate process Ctrl+C
     
 - Reboot system
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
    
  
# Run method 2
Impotant: be very careful!!!

 - Put autofan.sh to folder with your crypto miner (e.c. hive/~dstm). 
 - Change permissions to ```-rwxr-xr-x (755)```
 - Insert this line to the startup script (e.c. zm.sh for dstm):
     ```
     ./autofan.sh > /dev/null &
     ```
 - Test: 
      ```
     root@rig:~# cd ../../hive/dstm
     root@rig:/hive/dstm# ./autofan.sh
     ```
     if it's work, terminate the process (Ctrl+C).          

  - Restart miner and necessarily check(!) fan speed/temperature
  
# Attention
Before making changes, calculate the fan speed!!!

If you want kill the script autofan.sh:
    ```      
    pkill autofan.sh
    ```
and apply your HiveOS OC settings from your account (restore your default fan settings)!

# Examples of temperature and fan speed (default script settings)
- 55 C : 33 %
- 60 C : 42 %
- 65 C : 52 %
- 69 C : 66 %
- 71 C : 80 %
- 72 C : 84 %
- 75 C : 97 %

# Youtube
    https://youtu.be/qd9CtLojvxs
