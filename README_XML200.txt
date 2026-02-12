AYA_SoR_Gruvbox4K_XML200

Purpose:
- Hard-scaled XML layout for 4K when EQ UI Scale has little/no effect.

What this variant does:
- Multiplies layout coordinates/sizes/anchor offsets by 2.0 in all top-level EQUI_*.xml files.
- Skips Ui2DAnimation and TextureInfo blocks so texture atlas frame definitions are not broken.
- Raises font tiers to larger values for readability.

Load:
- /loadskin AYA_SoR_Gruvbox4K_XML200 1

Tuning:
- Script included: scale_layout_only.sh
- To regenerate with another factor (example 1.6x):
  SCALE_FACTOR=1.6 ./scale_layout_only.sh 1.6

Notes:
- This is intentionally aggressive and may require re-positioning a few windows once in game.
- If a specific window is too large, we can selectively scale only that EQUI_*.xml next.
