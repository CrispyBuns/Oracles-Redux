; Uncompressed GFX headers are just like regular GFX headers (data/{game}/gfxHeaders.s) except that
; these don't try to decompress anything, they just copy the data directly to its destination.
;
; Sometimes these are used to load uncompressed graphics files, but more often they're used to move
; data from WRAM to VRAM.

.define NUM_UNCMP_GFX_HEADERS $40

uncmpGfxHeaderTable:
	.repeat NUM_UNCMP_GFX_HEADERS index COUNT
		.dw uncmpGfxHeader{%.2x{COUNT}}
	.endr



uncmpGfxHeader00:

uncmpGfxHeader01:
	m_GfxHeaderRam w4TileMap, $8601, $1f
	m_GfxHeaderEnd

uncmpGfxHeader02:
	m_GfxHeaderRam w4ItemIconGfx, $8781, $07
	; Fall through

uncmpGfxHeader03:
	m_GfxHeaderRam w4StatusBarAttributeMap, $9fc1, $03
	m_GfxHeaderRam w4StatusBarTileMap,      $9fc0, $03
	m_GfxHeaderEnd

uncmpGfxHeader04:
	m_GfxHeaderRam w4AttributeMap+$40, $9801, $19
	m_GfxHeaderRam w4TileMap+$40,      $9800, $19
	m_GfxHeaderEnd

uncmpGfxHeader05:
	m_GfxHeaderRam w4AttributeMap+$40, $9c01, $19
	m_GfxHeaderRam w4TileMap+$40,      $9c00, $19
	m_GfxHeaderEnd

uncmpGfxHeader06:
	m_GfxHeaderRam w4AttributeMap+$40, $9801, $1f
	m_GfxHeaderRam w4TileMap+$40,      $9800, $1f
	m_GfxHeaderEnd

uncmpGfxHeader07:
	m_GfxHeaderRam w4GfxBuf1, $8c01, $2f
	m_GfxHeaderEnd

uncmpGfxHeader08:
	m_GfxHeaderRam w4TileMap,      $9c00, $23
	m_GfxHeaderRam w4AttributeMap, $9c01, $23
	m_GfxHeaderEnd

uncmpGfxHeader09:
	m_GfxHeaderRam w4TileMap, $8000, $5f
	m_GfxHeaderEnd

uncmpGfxHeader0a:
	m_GfxHeaderRam w4TileMap,      $9800, $2b
	m_GfxHeaderRam w4AttributeMap, $9801, $2b
	m_GfxHeaderEnd

uncmpGfxHeader0b:
	m_GfxHeaderRam w5NameEntryCharacterGfx, $8800, $7f
	m_GfxHeaderEnd

uncmpGfxHeader0c:
	m_GfxHeaderRam w5NameEntryCharacterGfx, $8601, $1f
	m_GfxHeaderEnd

uncmpGfxHeader0d:
	m_GfxHeaderRam w4TileMap+$140,      $9ea0, $15
	m_GfxHeaderRam w4AttributeMap+$140, $9ea1, $15
	m_GfxHeaderEnd

uncmpGfxHeader0e:
	m_GfxHeaderRam w3TileMappingIndices, $9801, $2b
	m_GfxHeaderRam w3VramTiles,          $9800, $2b
	m_GfxHeaderEnd

uncmpGfxHeader0f:
	m_GfxHeaderRam w3VramTiles,          $9800, $1f
	m_GfxHeaderRam w3TileMappingIndices, $9801, $1f
	m_GfxHeaderEnd

uncmpGfxHeader10:
	m_GfxHeaderRam w3TileMappingIndices, $9801, $2b
	m_GfxHeaderRam w3VramTiles,          $9800, $2b
	m_GfxHeaderEnd

uncmpGfxHeader11:
	m_GfxHeaderRam w3TileMappingIndices+$60, $9861, $01
	m_GfxHeaderRam w3VramTiles+$60,          $9860, $01
	m_GfxHeaderEnd

uncmpGfxHeader12:
	m_GfxHeaderRam w4AttributeMap, $9801, $23
	m_GfxHeaderRam w4TileMap,      $9800, $23
	m_GfxHeaderEnd

uncmpGfxHeader13:
	m_GfxHeaderRam w4AttributeMap+$000, $9801, $1f
	m_GfxHeaderRam w4TileMap+$000,      $9800, $1f
	m_GfxHeaderRam w4AttributeMap+$200, $9bc1, $03
	m_GfxHeaderRam w4TileMap+$200,      $9bc0, $03
	m_GfxHeaderEnd

uncmpGfxHeader14:
	m_GfxHeaderRam w4AttributeMap, $9c01, $23
	m_GfxHeaderRam w4TileMap,      $9c00, $23
	m_GfxHeaderEnd

uncmpGfxHeader15:
	m_GfxHeaderRam w4AttributeMap+$000, $9c01, $0f
	m_GfxHeaderRam w4TileMap+$000,      $9c00, $0f
	m_GfxHeaderRam w4TileMap+$100,      $9900, $01
	m_GfxHeaderRam w4AttributeMap+$200, $9bc1, $03
	m_GfxHeaderRam w4TileMap+$200,      $9bc0, $03
	m_GfxHeaderEnd

uncmpGfxHeader16:
	m_GfxHeaderRam w4StatusBarTileMap,      $9dc0, $09
	m_GfxHeaderRam w4StatusBarAttributeMap, $9dc1, $09
	m_GfxHeaderEnd

uncmpGfxHeader17:
	m_GfxHeaderRam w7TextGfxBuffer, $9201, $1f
	m_GfxHeaderEnd

uncmpGfxHeader18:
	m_GfxHeader spr_boomerang, $84e1, $03
	m_GfxHeaderEnd

uncmpGfxHeader19:

uncmpGfxHeader1a:
	m_GfxHeader spr_swords, $8521, $09
	m_GfxHeaderEnd

uncmpGfxHeader1b:
	m_GfxHeader spr_swords, $8521, $0d, $a0
	m_GfxHeaderEnd

uncmpGfxHeader1c:
	m_GfxHeader spr_cane_of_somaria, $8521, $09
	m_GfxHeaderEnd

uncmpGfxHeader1d:
	m_GfxHeader spr_seed_shooter, $8521, $09
	m_GfxHeaderEnd

uncmpGfxHeader1e:

uncmpGfxHeader1f:
	m_GfxHeader spr_switch_hook, $8521, $0b
	m_GfxHeaderEnd

uncmpGfxHeader20:
	m_GfxHeaderRam w7d800+$000, $9200, $0f
	m_GfxHeaderEnd

uncmpGfxHeader21:
	m_GfxHeaderRam w7d800+$100, $9200, $0f
	m_GfxHeaderEnd

uncmpGfxHeader22:
	m_GfxHeaderRam w7d800+$200, $9240, $0a
	m_GfxHeaderEnd

uncmpGfxHeader23:
	m_GfxHeaderRam w7d800+$2b0, $9240, $09
	m_GfxHeaderEnd

uncmpGfxHeader24:
	m_GfxHeaderRam w7d800+$350, $9240, $05
	m_GfxHeaderEnd

uncmpGfxHeader25:
	m_GfxHeaderRam w7d800+$3b0, $9240, $03
	m_GfxHeaderEnd

uncmpGfxHeader26:
	m_GfxHeaderRam w7d800+$3f0, $9240, $03
	m_GfxHeaderEnd

uncmpGfxHeader27:

uncmpGfxHeader28:
	m_GfxHeaderRam w7d800+$430, $9240, $01
	m_GfxHeaderEnd

uncmpGfxHeader29:
	m_GfxHeaderRam w7d800+$450, $9200, $03
	m_GfxHeaderEnd

uncmpGfxHeader2a:
	m_GfxHeaderRam w4TileMap,      $9d60, $15
	m_GfxHeaderRam w4AttributeMap, $9d61, $15
	m_GfxHeaderEnd

uncmpGfxHeader2b:
	m_GfxHeaderRam w7d800,               $8c01, $2f
	m_GfxHeaderRam w3VramTiles,          $9800, $2b
	m_GfxHeaderRam w3TileMappingIndices, $9801, $2b
	m_GfxHeaderEnd

uncmpGfxHeader2c:
	m_GfxHeaderRam w4TileMap,      $9800, $0b
	m_GfxHeaderRam w4AttributeMap, $9801, $0b
	m_GfxHeaderEnd

uncmpGfxHeader2d:
	m_GfxHeaderRam w3VramTiles,          $9840, $1f
	m_GfxHeaderRam w3TileMappingIndices, $9841, $1f
	m_GfxHeaderEnd

uncmpGfxHeader2e:
uncmpGfxHeader2f:

uncmpGfxHeader30:
	m_GfxHeaderRam w6AttributeBuffer, $9801, $1f
	m_GfxHeaderRam w6TileBuffer,      $9800, $1f
	m_GfxHeaderEnd

uncmpGfxHeader31:
	m_GfxHeaderRam w3VramTiles,          $9860, $1f
	m_GfxHeaderRam w3TileMappingIndices, $9861, $1f
	m_GfxHeaderEnd

uncmpGfxHeader32:
	m_GfxHeaderRam w2TmpGfxBuffer, $8200, $1f
	m_GfxHeaderEnd

uncmpGfxHeader33:
	m_GfxHeaderRam w2TmpGfxBuffer, $8400, $1f
	m_GfxHeaderEnd

uncmpGfxHeader34:
	m_GfxHeaderRam w4TileMap,      $9b00, $0f
	m_GfxHeaderRam w4AttributeMap, $9b01, $0f
	m_GfxHeaderEnd

uncmpGfxHeader35:
	m_GfxHeaderRam w7d800, $8300, $2f
	m_GfxHeaderEnd

uncmpGfxHeader36:
	m_GfxHeaderRam w4TileMap,      $9c00, $11
	m_GfxHeaderRam w4AttributeMap, $9c01, $11
	m_GfxHeaderEnd

uncmpGfxHeader37:
	m_GfxHeader gfx_past_chest, $8a91, $02
	m_GfxHeader gfx_past_sign,  $8dc1, $03
	m_GfxHeaderEnd

uncmpGfxHeader38:
	m_GfxHeaderRam w3VramTiles,          $9c00, $09
	m_GfxHeaderRam w3TileMappingIndices, $9c01, $09
	m_GfxHeaderEnd
	
uncmpGfxHeader39:

uncmpGfxHeader3a:
	m_GfxHeader spr_impa_fainted, $8601, $03
	m_GfxHeaderEnd

uncmpGfxHeader3b:
	m_GfxHeader spr_raft, $8601, $07
	m_GfxHeaderEnd

uncmpGfxHeader3c:
	m_GfxHeaderRam w3VramTiles, $9800, $0b
	m_GfxHeaderEnd

uncmpGfxHeader3d:
	m_GfxHeader gfx_animations_2, $8cc1, $03, $740
	m_GfxHeaderEnd

uncmpGfxHeader3e:
	m_GfxHeader gfx_animations_2, $8cc1, $03, $780
	m_GfxHeaderEnd

uncmpGfxHeader3f:
	m_GfxHeader gfx_animations_2, $8cc1, $03, $7c0
	m_GfxHeaderEnd
