# PseudoLoad
An open-source ROBLOX loading screen designed to replicate the look of a genuine loading process,
though the effect is largely simulated.
<br><br/>

You may be confused as to why essentially faking the loading process is useful.
And the answer is simple.
**True loading screens are impossible.**

## How to use
1. Download the `.rbxm` file.
2. Drag and drop the file from your file explorer into Roblox Studio.
3. Parent the module to ReplicatedFirst to ensure it appears during the loading phase. This is the recommended location for any loading screen code.

Below is a simple example use of the module.
```lua
require(script.PseudoLoad)() -- will yield.

print("Finished loading!")
```

## Configuration
Before you use it, you may want to explore the optional configuration options.

Inside of the main module you will find a submodule named `Configuration`.
Open it up and you'll see a few configuration options, which are explained to the best of my abiltity.
Once you've edited the values, you're good to go!

<br><br/>
**But,**

before you go, I'd like to let you know that any feedback is greatly appreciated,
as it helps improve the user experience for everyone. It's what open source is all about - bringing a great, free solution to everyone.

*Contact me on Discord* ***Im_IntoDev***.
