# auto-counter-shiny-reset

Autohotkey script that automatically count how many pokemons you encountered.

## Prerequisite

- You obviously need to install AutoHotKey, link [here](https://www.autohotkey.com).
- Since the script is comparing an image to your game, you absolutely need a way to have a perfect image from your game on your computer (game capture card).

## How to set this up

1. Simply **download the directory and place it wherever you want** in your drive.
2. **Take a screen in game** (not of a game gallery picture) of the wanted pokemon and save it as **.PNG minimum !!!** *(or higher quality format)*. Prefer screening the pokémon entrance text, since it's only displayed once in battle.
3. (Optional) If you're streaming and want to display the value on stream, just put a new text source and check the from file option, then select your counter.txt file.
4. (Optional) The script also allows you to display a "+1" when a match is triggered, you have to put a new text source referring to the +1.txt file.
5. To start the script, **double click on auto-shiny-encounter-counter.ahk** (you can create a shortcut to this and put it on your desktop).
6. When you want to stop it, **right click on autohotkey's taskbar icon and select exit**.

## Remarks
- Firstly, if you have any questions or issues detected, feel free to contact me at contact@doctorsneepy.fr *(i will answer as fast as possible)*.
- If you want to **change the tracked pokémon** without replacing the current image, you can take an other screen and name it differently and then modify the script, line 8 and change this "shiny-to-find.png" to the new one.
- If you want to **reset the counter**, just edit counter.txt and put 0 inside *(or the desired starting value)*.
- **You can use multiple screens**, but **ensure that they have the same resolution** or the screen of the game took on screen 1 may not match with the game on screen 2 *(still resolution differences issues)*.
- Since the script is comparing an image to your screen, **you should not change your window game size** or it will cause the script to not be able to work properly. It will compare the exact image pixels took from the previous size to the screen pixels with the new game size and it just won't match. If you still do so, you will have to take an other screen of what you want to compare.
