# <p align="center">⚡PseudoLoad⚡</p>
<p align="center">A realistic Roblox loading module that yields until your game fully loads
<br>—offering a true-to-life loading experience without any UI gimmicks.</p>
<div align="center">

[Devforum post]() | [Roblox model](https://create.roblox.com/library/138658986432597) | [Community](https://discord.gg/MKXWuqTvsx)

</div>
<br><br/>

## Loading screens in Roblox are like randomness—truly impossible.<br>But just as we have pseudorandom numbers, we can have pseudoloading screens.<br><br>This module gets as close to the real thing as possible.
<br>
<br>
<br>
<br>

# 🚀 Get Started

### 1. Import the module:
**• Local download:**
1. Download the latest `.rbxm` file.  
2. Drag and drop the file from your file explorer into Roblox Studio.

**•  Creator store:**
1. Go to the creator store page for the module and press `Get Model`.  
2. Find and import the model from the toolbox inventory.

### 2. Parent the module to `ReplicatedFirst`
To ensure it appears during the loading phase, parent the module to `ReplicatedFirst`. This is the recommended location for any loading screen code.
<br>
<br>
### 💡Example use:
```lua
require(script.PseudoLoad)()
-- Everything below here happens after load.
print("Finished loading!")
```

# ⚙️Configuration</h1>
Before you use it, you may want to explore the optional configuration options.
<br><br>
**1. Inside of the main module you will find a submodule named `Configuration`.**

**2. Open it up and you'll see a few configuration options, which are explained to the best of my abiltity.**

**3. Once you've edited the values, you're good to go!**
<br>
<br>
<br>
# 🤔 Share your thoughts
<b>I appreciate any feedback or constructive criticism</b>, as it helps me get an idea of the community's view on my product.
<br>

If you have any questions, feel free to leave them below as well.
<br>
# 🤝 Contribute
<b>It's an open-source project; a community project</b>. If you're up for helping out, even the slightest bit, let me know at the DevForum!
