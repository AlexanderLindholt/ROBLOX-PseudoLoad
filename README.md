  _____                    _       _                     _ 
 |  __ \                  | |     | |                   | |
 | |__) |__  ___ _   _  __| | ___ | |     ___   __ _  __| |
 |  ___/ __|/ _ \ | | |/ _` |/ _ \| |    / _ \ / _` |/ _` |
 | |   \__ \  __/ |_| | (_| | (_) | |___| (_) | (_| | (_| |
 |_|   |___/\___|\__,_|\__,_|\___/|______\___/ \__,_|\__,_|
 - IntoDev

An open source ROBLOX loading screen aiming to be as real as possible - in reality being fake to a degree.

# How to use
Simply download the rbxm file and drag it from your file explorer and into studio.
Then, you can simply drag it right at your preferred location - i'd recommend parenting it to ReplicatedFirst, where your loading screen code should be anyways.

Below is an extremely simple example use of the module.
```lua
require(script.PseudoLoad)() -- will yield.

print("Finished loading!")
```

# Configuration
Before you use it, you may want to do an optional configuration.
Inside of the main module you will find a submodule named `Configuration`.
Open it up and you'll see a few configuration options, and they should be explained to the best of my abiltity.



**But,**
before you go, I'd like to let you know that any feedback is greatly appreciated,
as it helps improve the user experience for everyone. It's what open source is all about - bringing a great, free solution to everyone.
*Contact me on Discord* ***Im_IntoDev***.
