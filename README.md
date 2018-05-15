# Nvidia gpu autofans
Nvidia gpu automatic fan speed script for HiveOS Ubuntu. Tested with Nvidia GTX 1060 / 1070 / 1080.

# Disclaimer
Use and change at your own risk! Not responsible for any damages or issues, changing temperature controls, fan speed, etc. might damage your computer hardwares.

# Run
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
     if it's work, kill the process:
          
    ```      
    pkill autofan.sh
    ```
  - Restart miner and necessarily check(!) fan speed/temperature
  
# Attention
Before making changes, calculate the fan speed!!!

# Youtube
    https://youtu.be/qd9CtLojvxs
