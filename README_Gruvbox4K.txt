AYA_SoR_Gruvbox4K (EverQuest Live/F2P)

Base:
- Built from AYA_SoR

Design goals:
- Flat, modernized dark UI
- Gruvbox-inspired palette
- Better readability on 4K displays

What was changed:
- Recolored core skin textures (window atlases, buttons, scrollbars, target/player panes)
- Darkened base background panels for improved scene contrast
- Increased small-font usage in key windows:
  - Player window
  - Target window
  - Group window
  - Hotbutton window
- Reduced chat transparency for legibility
- Updated shared scrollbar tint in templates

Gruvbox palette used:
- dark0: #282828
- dark1: #3c3836
- dark2: #504945
- dark3: #665c54
- light4: #a89984
- light1: #ebdbb2
- accent red: #fb4934
- accent green: #689d6a
- accent aqua: #458588
- accent yellow: #d79921

How to use:
1) In EQ chat, run: /loadskin AYA_SoR_Gruvbox4K 1
2) If needed, run: /viewport reset
3) For 4K, in Options -> Display -> UI:
   - Increase UI Scale (start around 125%-140%)
   - Increase chat font size per window

Notes:
- This skin intentionally keeps AYA_SoR layout behavior and structure.
- If a specific panel is still too small, it can be selectively upsized in its EQUI_*.xml.

XL pass (v2):
- Global font tier bump for 4K readability across EQUI_*.xml
- Hotbutton footprint increased from 37x34 to 48x44
- Hotbutton decal/icon area increased from 33x30 to 44x40

If everything in-game is still tiny (including Options window):
- Enable "Use New UI Engine" in Options -> Display
- Then set UI Scale to 150%+ and click Apply
