#!/usr/bin/env bash
set -euo pipefail
scale="${1:-2.0}"

for f in EQUI_*.xml; do
  perl -i -pe '
    BEGIN {
      $scale = $ENV{"SCALE_FACTOR"} + 0;
      @tags = qw(X Y CX CY TopAnchorOffset BottomAnchorOffset LeftAnchorOffset RightAnchorOffset TextOffsetX TextOffsetY GaugeOffsetX GaugeOffsetY SpellIconOffsetX SpellIconOffsetY Spacing SecondarySpacing);
      $skip = 0;
    }

    if (/<Ui2DAnimation\b/ || /<TextureInfo\b/) { $skip = 1; }

    if (!$skip) {
      for $t (@tags) {
        s{<${t}>(-?\d+(?:\.\d+)?)</${t}>}{
          $n = $1 * $scale;
          $v = ($n < 0) ? int($n - 0.5) : int($n + 0.5);
          "<${t}>$v</${t}>";
        }ge;
      }

      # Upscale font tiers conservatively for readability.
      s{<Font>0\.9</Font>}{<Font>3</Font>}g;
      s{<Font>1</Font>}{<Font>4</Font>}g;
      s{<Font>2</Font>}{<Font>5</Font>}g;
      s{<Font>3</Font>}{<Font>6</Font>}g;
      s{<Font>3\.5</Font>}{<Font>6</Font>}g;
      s{<Font>4</Font>}{<Font>6</Font>}g;
      s{<Font>5</Font>}{<Font>6</Font>}g;
    }

    if (/<\/Ui2DAnimation>/ || /<\/TextureInfo>/) { $skip = 0; }
  ' "$f"
done
