# MC-Commands
My Minecraft 1cmd creations!

## Foramt:
Each 1CMD is stored like that:
```
<CMD_NAME>
  |-EXPLAIN.md
  |-src
  |  |-1.9.mc
  |  |-1.10.mc
  |  |-1.11.mc
  |-out
  |  |-1.9.txt
  |  |-1.10.txt
  |  |<CMD_NAME>-1_10.nbt
  |  |-1.11.txt
  |  |-<CMD_NAME>-1_11.nbt
  |-LICENSE
```

## Tools I use:
+ [Notepad++](https://notepad-plus-plus.org) with `Vim dark blue` theme
+ A Minecraft UDL file (see section `UDL file`)
+ [MrGarretto's Command Combiner](https://mrgarretto.com/cmdcombiner)
+ [MrGarretto's Entity Converter](https://mrgarretto.com/entityconverter)
+ [Minecraft Wiki](http://minecraft.gamepedia.com/)
+ Minecraft (Get Minecraft [HERE](https://minecraft.net/en/)!)

## UDL File
For easier reading and coding, I use a NPP UDL file to highlight and autocomplete my code (The UDL file applies on `.mc` files)

[Get it here!](http://pastebin.com/Nyk0ACXi)

### How to install
1. Go to the link above
2. Press "Download" and save to your computer
3. rename the file from `MCUDL.xml.txt` to `MCUDL.xml`
4. In NPP, Press "Language"
5. Press "Define your language..."
6. Press "Import"
7. Select your file
8. Press "OK"
7. Close the window
8. Enjoy!

## How to install command
There are 2 ways to install a command, the `/summon` way (reccommended) and the `structure` way (Advanced)

### `/summon` (Reccommended)
1. Go to the command .txt for your version (`<CMD_NAME>/out/1.<VERSION>.txt`)
2. Copy the command in the file
3. In the game, type `/give @p command_block` (Make sure you're an operator in creative mode)
4. Right-click the command block
5. Paste the command into the command block
6. In `1.8`, press "Done" and activate the ommand block using a button/redstone block/whatever, but not from the top
7. In `1.9+`, press "Needs Redstone" to turn it to "Always Active", then press "Done"
8. Enjoy the command!

### `structure` (Advanced players only!)
1. Download the .nbt file for your version (`<CMD_NAME>/out/<CMD_NAME>-1.<VERSION>.nbt`)
2. Copy the file to your structures folder (`%appdata%\.minecraft\saves\<SAVENAME>\structures` for windows)
3. In game, type `/give @p structure_block` (Make sure you're an operator in creative mode)
4. Right-click the structure block
5. Change it to `LOAD` mode
6. type in `<CMD_NAME>-1.<VERSION>`
7. Press "LOAD" twice
8. Activate the repeating command block with the sign on it.
9. Enjoy!
