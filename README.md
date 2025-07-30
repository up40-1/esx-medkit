# ESX Medkit Script 🚑

A realistic medkit script for FiveM with healing animations and progress UI.

## Features ✨
- ✅ Three-stage healing animation (kneel > treat > stand up)
- ✅ Smooth progress bar UI
- ✅ Full ESX inventory integration
- ✅ 7-second total healing process (customizable)
- ✅ German notification text (easily changeable)

## Requirements 📋
- [ESX Legacy](https://github.com/esx-framework/esx-legacy)
- FiveM server

## Installation 🛠️
1. Add to `resources/[esx]` folder
2. Import `item.sql` to your database
3. Add to `server.cfg`:
4. start esx_medkit

## Configuration ⚙️
Edit `client.lua` to adjust:
- Healing duration (currently 5000ms treatment + 2000ms animations)
- Notification text
- Health restored (currently 200)

## Usage 🎮
1. Acquire medkit through shops/inventory
2. Use item from inventory
3. Watch healing animation sequence
4. Receive full health when complete
