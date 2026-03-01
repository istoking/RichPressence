# IllicitRP Discord Rich Presence (QBCore)

A lightweight Discord Rich Presence resource for FiveM/QBCore that shows players what they’re doing in-city (location, vehicle, etc.), with rotating taglines, rare “flavour” lines, and live server player count.

---

## Features

- **Discord Rich Presence** with:
  - Large + small image assets (configurable)
  - Custom hover text for assets
  - Two configurable buttons (Discord, direct connect, website, etc). **This setting is currently depreciated**
- **Dynamic status text**
  - Uses GTA zone names with a “pretty name” map (e.g. `ROCKF` → Rockford Hills)
  - Can display player name (toggle)
  - Can show vehicle name + speed brackets (when in a vehicle)
- **Rotating lines**
  - Normal taglines + rare lines for variety
- **Live player count**
  - Server broadcasts online/max to clients on join/drop and on an interval

---

## Requirements

- **QBCore** (`qb-core`)
- A **Discord application** with Rich Presence enabled and art assets uploaded

---

## Installation

1. Drop the folder into your resources, e.g.:
   ```
   resources/[standalone]/RichPressence
   ```

2. Add to your `server.cfg`:
   ```
   ensure RichPressence
   ```

3. Restart the server (or `restart RichPressence`).

---

## Configuration

Open `client.lua` and edit the `RPC` table.

### 1) Discord Application ID

Set your App ID:
```lua
AppId = 123456789012345678,
```

### 2) Rich Presence Assets

These must match the **asset names** uploaded in your Discord Developer Portal (Rich Presence → Art Assets):

```lua
LargeAsset = "illicitrp_logo", -- example
LargeText  = "Illicit Roleplay", -- example

SmallAsset = "button",
SmallText  = "discord.gg/yourinvite",
```

### 3) Buttons

Discord supports up to **two** buttons:

```lua
Buttons = {
  { index = 0, name = "Join Discord", url = "https://discord.gg/yourinvite" },
  { index = 1, name = "Connect to IRP", url = "https://cfx.re/join/yourcode" },
},
```

> **NOTE**: Discord no longer reliably renders the old FiveM Rich Presence “action buttons” created via SetDiscordRichPresenceAction()
> 
> The buttons in this resource are merely placeholders, until there's an effective way to add them again.

### 4) Update Intervals (optional)

```lua
UpdateIntervalMs  = 20000,   -- presence text refresh
AssetIntervalMs   = 120000,  -- asset/text rotate interval
DispatchStatusMs  = 60000,   -- extra status refresh
```

---

## Player Count Sync

The server broadcasts player count to all clients:
- Updates on join/drop
- Interval refresh (configured in `server.lua`)

If you want to change the interval, edit the `Wait(...)` value in `server.lua`.

---

## Zone “Pretty Names”

`client.lua` contains a `ZonePretty` map to display nicer district names:

```lua
local ZonePretty = {
  ROCKF = "Rockford Hills",
  PBOX  = "Pillbox Hill",
}
```

Add/edit entries to match your city branding.

---

## Troubleshooting

### Presence doesn’t show
- Make sure **Discord is running** on the same PC as FiveM.
- Verify your **App ID** is correct.
- Restart FiveM + Discord after changes.

### Images don’t display
- Asset names are **case-sensitive**
- Discord can take a few minutes to propagate new assets.

### Buttons missing
- Only **two** buttons max
- URLs must be valid and include `https://`

---

## Version

See `fxmanifest.lua`.

---

## License

Use and modify for your server. If you redistribute publicly, keep attribution.
