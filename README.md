# auto-encounter-counter

Autohotkey script that automatically count how many things you encountered.

## WARNINGS

This script was **firstly designed for Shiny Hunting in Pokemon** but **can be used in any context**: **Animal Crossing New Horizons Villager Hunting**, etc...

<div style='display: flex;flex-direction: column;align-items: center;'>
<div style='display: flex; align-items: center;'><div style='margin-right: 10px'><img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/269px-International_Pok%C3%A9mon_logo.svg.png" alt='Pokémon Logo'></div>
<div style='display:flex; margin-left: 10px'><img src="https://upload.wikimedia.org/wikipedia/fr/thumb/7/7f/Logo-acnh.png/320px-Logo-acnh.png" alt='Pokémon Logo'></div></div>

<p>Images from <a href='https://fr.wikipedia.org/wiki/Wikipédia:Conventions_d%27utilisation_des_images'>wikipedia</a></p>
</div>
By using this script, you **ARE RESPONSIBLE** of any damages caused to your computers. 
If the script is **wrongly used** or on **too weak computers** it may cause **instabilities** or just **not work**.
To stop the script if you think it is causing issues, you can:
- use the macro if not disabled or changed: Shit Echap
- right click on AutoHotkey icon's in notification area and left click exit

## Prerequisite
- You obviously need to **install AutoHotKey**, link [here](https://www.autohotkey.com).
- Since the script is comparing an image to your game, you absolutely need a way to have a **perfect image from your game on your computer** (game capture card).
- You need decent performance from computer. Some old low end computers may not be able to stream + use the script

## How to set this up
1. Simply **download the directory and place it wherever you want** in your drive.
2. Do one encounter to **estimate** timers and region of the screen that you will use to compare.
3. (Optional) Edit auto-encounter-counter.ahk to modify timers, image name, macros etc at your convenience. 
4. **Prepare the image**
  1. Use **PrtSc** key on your keyboard when the element you want to match with is on the screen
  2. Open an **image processing program** such as Paint, Gimp, Photoshop etc...
  3. **Paste the contents** of the clipboard (which is supposed to be the screen of the step one).
  4. Crop the image/canva to the region you want to match with. **Smallest it is, Easier will be the match**.
  Prefer screening an image that will only appear once (entrance text, etc..) to avoid multicount for one encounter. This is up to you.
  5. Export the region in a **good quality format** like PNG (not JPG)
  * More details: [Official AutoHotkey ImageSearch Documentation](https://www.autohotkey.com/docs/commands/ImageSearch.htm#Remarks)
5. Place the image in the **same folder of the script** and name it like declared in the script, **by default: image.png**
4. (Optional) If you're streaming and want to display the value on stream, just put a new text source and check the from file option, then select your counter.txt file.
5. (Optional) The script also allows you to display a "+1" when a match is triggered, you have to put a new text source referring to the +1.txt file.
6. To start the script, **double click on auto-shiny-encounter-counter.ahk** (you can create a shortcut to this and put it on your desktop).
7. When you want to stop it, **right click on autohotkey's taskbar icon and select exit** or if not disabled use the **default macro Shift + Echap**.

## Remarks
- Firstly, if you have any questions or issues detected, feel free to contact me at contact@doctorsneepy.fr / Twitter: [@DoctorSneepy](https://twitter.com/DoctorSneepy) *(i will answer as fast as possible)*.
- If you want to **change the tracked things** without replacing the current image, you can take an other screen and name it differently and then modify the script, line 33 and change this "image.png" to the new one.
- If you want to **reset the counter**, just edit counter.txt and put 0 inside *(or the desired starting value)*.
- You can have **multiple folders** to have **different versions of the script** (different images, different app sizes, different things to match, etc...). Just copy/paste your modified script then edit or re-download the original script. ![example of different scripts](https://i.imgur.com/YuxFXad.png)
- You can **multiple hunt with multiple script** by **running many script at the same time**. Be careful to **not launch the same script twice** (or scripts that modifies same .txt files) to avoid conflict between them. 
- Theorically having **multiple screens** with **diffrent resolutions** and **however they're placed** in Windows parameters **is not a problem** since v2. If you still experience issues like: it is working on Screen 1 but not on 2, it is working everywhere but on top of screen X, etc... contact me with the more details regarding your setup.
- Since the script is comparing an image to your screen, **you should not change your window game size** or it will cause the script to not be able to work properly. It will compare the exact image pixels took from the previous size to the screen pixels with the new game size and it just won't match. If you still do so, you will have to take an other screen of what you want to compare.
- Taking the image from Full screen App on Screen 1 can work on full screen 2 if they have the same resolution of if the size of the element don't change.

## Known Issues
Will be listed here all issues that are known and that will be fixed if possible.
- None issue for the moment !


## Credits
Full code from DoctorSneepy, but had the idea from a live of [Laink](https://www.twitch.tv/wankilstudio) who was hunting Snorunt.

Feel free to use it, modify and share but give credits (above line).
