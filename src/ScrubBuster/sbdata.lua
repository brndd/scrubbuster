--Various static data used by ScrubBuster

ScrubBuster.BaseStats = { --Race/class base stats in tables, is cool.
--these DON'T have racials baked into them.
Human = { 
	WARRIOR = {
		[1] = { str = 23, agi = 20, sta = 22, int = 20, spi = 20 },
		[2] = { str = 24, agi = 21, sta = 23, int = 20, spi = 20 },
		[3] = { str = 26, agi = 22, sta = 24, int = 20, spi = 21 },
		[4] = { str = 27, agi = 22, sta = 26, int = 20, spi = 21 },
		[5] = { str = 28, agi = 23, sta = 27, int = 20, spi = 21 },
		[6] = { str = 30, agi = 24, sta = 28, int = 20, spi = 21 },
		[7] = { str = 31, agi = 25, sta = 29, int = 21, spi = 22 },
		[8] = { str = 32, agi = 26, sta = 30, int = 21, spi = 22 },
		[9] = { str = 34, agi = 26, sta = 32, int = 21, spi = 22 },
		[10] = { str = 35, agi = 27, sta = 33, int = 21, spi = 23 },
		[11] = { str = 36, agi = 28, sta = 34, int = 21, spi = 23 },
		[12] = { str = 38, agi = 29, sta = 35, int = 21, spi = 23 },
		[13] = { str = 39, agi = 30, sta = 37, int = 21, spi = 24 },
		[14] = { str = 41, agi = 31, sta = 38, int = 21, spi = 24 },
		[15] = { str = 42, agi = 32, sta = 39, int = 21, spi = 24 },
		[16] = { str = 44, agi = 33, sta = 41, int = 21, spi = 25 },
		[17] = { str = 45, agi = 34, sta = 42, int = 22, spi = 25 },
		[18] = { str = 47, agi = 34, sta = 43, int = 22, spi = 25 },
		[19] = { str = 48, agi = 35, sta = 45, int = 22, spi = 26 },
		[20] = { str = 50, agi = 36, sta = 46, int = 22, spi = 26 },
		[21] = { str = 51, agi = 37, sta = 48, int = 22, spi = 26 },
		[22] = { str = 53, agi = 38, sta = 49, int = 22, spi = 27 },
		[23] = { str = 54, agi = 39, sta = 51, int = 22, spi = 27 },
		[24] = { str = 56, agi = 40, sta = 52, int = 23, spi = 28 },
		[25] = { str = 58, agi = 41, sta = 53, int = 23, spi = 28 },
		[26] = { str = 59, agi = 42, sta = 55, int = 23, spi = 28 },
		[27] = { str = 61, agi = 43, sta = 56, int = 23, spi = 29 },
		[28] = { str = 63, agi = 44, sta = 58, int = 23, spi = 29 },
		[29] = { str = 64, agi = 45, sta = 59, int = 23, spi = 30 },
		[30] = { str = 66, agi = 46, sta = 61, int = 24, spi = 30 },
		[31] = { str = 68, agi = 47, sta = 62, int = 24, spi = 30 },
		[32] = { str = 69, agi = 48, sta = 64, int = 24, spi = 31 },
		[33] = { str = 71, agi = 50, sta = 66, int = 24, spi = 31 },
		[34] = { str = 73, agi = 51, sta = 67, int = 24, spi = 32 },
		[35] = { str = 74, agi = 52, sta = 69, int = 24, spi = 32 },
		[36] = { str = 76, agi = 53, sta = 70, int = 25, spi = 33 },
		[37] = { str = 78, agi = 54, sta = 72, int = 25, spi = 33 },
		[38] = { str = 80, agi = 55, sta = 74, int = 25, spi = 34 },
		[39] = { str = 82, agi = 56, sta = 75, int = 25, spi = 34 },
		[40] = { str = 83, agi = 57, sta = 77, int = 25, spi = 35 },
		[41] = { str = 85, agi = 58, sta = 79, int = 26, spi = 35 },
		[42] = { str = 87, agi = 60, sta = 80, int = 26, spi = 35 },
		[43] = { str = 89, agi = 61, sta = 82, int = 26, spi = 36 },
		[44] = { str = 91, agi = 62, sta = 84, int = 26, spi = 36 },
		[45] = { str = 93, agi = 63, sta = 85, int = 26, spi = 37 },
		[46] = { str = 95, agi = 64, sta = 87, int = 27, spi = 37 },
		[47] = { str = 97, agi = 66, sta = 89, int = 27, spi = 38 },
		[48] = { str = 99, agi = 67, sta = 91, int = 27, spi = 38 },
		[49] = { str = 101, agi = 68, sta = 93, int = 27, spi = 39 },
		[50] = { str = 103, agi = 69, sta = 94, int = 28, spi = 40 },
		[51] = { str = 105, agi = 71, sta = 96, int = 28, spi = 40 },
		[52] = { str = 107, agi = 72, sta = 98, int = 28, spi = 41 },
		[53] = { str = 109, agi = 73, sta = 100, int = 28, spi = 41 },
		[54] = { str = 111, agi = 74, sta = 102, int = 29, spi = 42 },
		[55] = { str = 113, agi = 76, sta = 103, int = 29, spi = 42 },
		[56] = { str = 115, agi = 77, sta = 105, int = 29, spi = 43 },
		[57] = { str = 117, agi = 78, sta = 107, int = 29, spi = 43 },
		[58] = { str = 119, agi = 79, sta = 109, int = 30, spi = 44 },
		[59] = { str = 121, agi = 81, sta = 111, int = 30, spi = 44 },
		[60] = { str = 123, agi = 82, sta = 113, int = 30, spi = 45 },
		[61] = { str = 125, agi = 83, sta = 115, int = 30, spi = 46 },
		[62] = { str = 127, agi = 85, sta = 117, int = 31, spi = 46 },
		[63] = { str = 129, agi = 86, sta = 119, int = 31, spi = 47 },
		[64] = { str = 132, agi = 88, sta = 121, int = 31, spi = 47 },
		[65] = { str = 134, agi = 89, sta = 123, int = 32, spi = 48 },
		[66] = { str = 136, agi = 90, sta = 125, int = 32, spi = 49 },
		[67] = { str = 138, agi = 92, sta = 127, int = 32, spi = 49 },
		[68] = { str = 140, agi = 93, sta = 129, int = 32, spi = 50 },
		[69] = { str = 143, agi = 95, sta = 131, int = 33, spi = 50 },
		[70] = { str = 145, agi = 96, sta = 133, int = 33, spi = 51 }
	},
	PALADIN = {
		[1] = { str = 22, agi = 20, sta = 22, int = 20, spi = 21 },
		[2] = { str = 23, agi = 21, sta = 23, int = 21, spi = 22 },
		[3] = { str = 24, agi = 21, sta = 24, int = 21, spi = 22 },
		[4] = { str = 25, agi = 22, sta = 25, int = 22, spi = 23 },
		[5] = { str = 26, agi = 22, sta = 26, int = 23, spi = 24 },
		[6] = { str = 28, agi = 23, sta = 27, int = 23, spi = 25 },
		[7] = { str = 29, agi = 24, sta = 28, int = 24, spi = 25 },
		[8] = { str = 30, agi = 24, sta = 29, int = 25, spi = 26 },
		[9] = { str = 31, agi = 25, sta = 30, int = 25, spi = 27 },
		[10] = { str = 32, agi = 25, sta = 32, int = 26, spi = 27 },
		[11] = { str = 33, agi = 26, sta = 33, int = 27, spi = 28 },
		[12] = { str = 35, agi = 27, sta = 34, int = 27, spi = 29 },
		[13] = { str = 36, agi = 27, sta = 35, int = 28, spi = 30 },
		[14] = { str = 37, agi = 28, sta = 36, int = 29, spi = 31 },
		[15] = { str = 38, agi = 29, sta = 37, int = 30, spi = 31 },
		[16] = { str = 40, agi = 29, sta = 38, int = 30, spi = 32 },
		[17] = { str = 41, agi = 30, sta = 40, int = 31, spi = 33 },
		[18] = { str = 42, agi = 31, sta = 41, int = 32, spi = 34 },
		[19] = { str = 43, agi = 31, sta = 42, int = 33, spi = 35 },
		[20] = { str = 45, agi = 32, sta = 43, int = 33, spi = 35 },
		[21] = { str = 46, agi = 33, sta = 45, int = 34, spi = 36 },
		[22] = { str = 47, agi = 33, sta = 46, int = 35, spi = 37 },
		[23] = { str = 49, agi = 34, sta = 47, int = 36, spi = 38 },
		[24] = { str = 50, agi = 35, sta = 48, int = 37, spi = 39 },
		[25] = { str = 51, agi = 36, sta = 50, int = 37, spi = 40 },
		[26] = { str = 53, agi = 36, sta = 51, int = 38, spi = 41 },
		[27] = { str = 54, agi = 37, sta = 52, int = 39, spi = 42 },
		[28] = { str = 56, agi = 38, sta = 54, int = 40, spi = 43 },
		[29] = { str = 57, agi = 39, sta = 55, int = 41, spi = 43 },
		[30] = { str = 58, agi = 39, sta = 56, int = 42, spi = 44 },
		[31] = { str = 60, agi = 40, sta = 58, int = 43, spi = 45 },
		[32] = { str = 61, agi = 41, sta = 59, int = 43, spi = 46 },
		[33] = { str = 63, agi = 42, sta = 60, int = 44, spi = 47 },
		[34] = { str = 64, agi = 43, sta = 62, int = 45, spi = 48 },
		[35] = { str = 66, agi = 44, sta = 63, int = 46, spi = 49 },
		[36] = { str = 67, agi = 44, sta = 65, int = 47, spi = 50 },
		[37] = { str = 69, agi = 45, sta = 66, int = 48, spi = 51 },
		[38] = { str = 70, agi = 46, sta = 67, int = 49, spi = 52 },
		[39] = { str = 72, agi = 47, sta = 69, int = 50, spi = 53 },
		[40] = { str = 73, agi = 48, sta = 70, int = 51, spi = 54 },
		[41] = { str = 75, agi = 49, sta = 72, int = 52, spi = 55 },
		[42] = { str = 77, agi = 49, sta = 73, int = 53, spi = 56 },
		[43] = { str = 78, agi = 50, sta = 75, int = 54, spi = 57 },
		[44] = { str = 80, agi = 51, sta = 76, int = 55, spi = 58 },
		[45] = { str = 81, agi = 52, sta = 78, int = 56, spi = 59 },
		[46] = { str = 83, agi = 53, sta = 79, int = 57, spi = 61 },
		[47] = { str = 85, agi = 54, sta = 81, int = 58, spi = 62 },
		[48] = { str = 86, agi = 55, sta = 83, int = 59, spi = 63 },
		[49] = { str = 88, agi = 56, sta = 84, int = 60, spi = 64 },
		[50] = { str = 90, agi = 57, sta = 86, int = 61, spi = 65 },
		[51] = { str = 91, agi = 58, sta = 87, int = 62, spi = 66 },
		[52] = { str = 93, agi = 59, sta = 89, int = 63, spi = 67 },
		[53] = { str = 95, agi = 60, sta = 91, int = 64, spi = 68 },
		[54] = { str = 97, agi = 61, sta = 92, int = 65, spi = 69 },
		[55] = { str = 98, agi = 61, sta = 94, int = 66, spi = 71 },
		[56] = { str = 100, agi = 62, sta = 95, int = 67, spi = 72 },
		[57] = { str = 102, agi = 63, sta = 97, int = 68, spi = 73 },
		[58] = { str = 104, agi = 64, sta = 99, int = 69, spi = 74 },
		[59] = { str = 105, agi = 65, sta = 101, int = 70, spi = 75 },
		[60] = { str = 107, agi = 66, sta = 102, int = 71, spi = 77 },
		[61] = { str = 109, agi = 67, sta = 104, int = 73, spi = 78 },
		[62] = { str = 111, agi = 69, sta = 106, int = 74, spi = 79 },
		[63] = { str = 113, agi = 70, sta = 107, int = 75, spi = 80 },
		[64] = { str = 115, agi = 71, sta = 109, int = 76, spi = 81 },
		[65] = { str = 116, agi = 72, sta = 111, int = 77, spi = 83 },
		[66] = { str = 118, agi = 73, sta = 113, int = 78, spi = 84 },
		[67] = { str = 120, agi = 74, sta = 115, int = 79, spi = 85 },
		[68] = { str = 122, agi = 75, sta = 116, int = 81, spi = 86 },
		[69] = { str = 124, agi = 76, sta = 118, int = 82, spi = 88 },
		[70] = { str = 126, agi = 77, sta = 120, int = 83, spi = 89 }
	},
	ROGUE = {
		[1] = { str = 21, agi = 23, sta = 21, int = 20, spi = 20 },
		[2] = { str = 22, agi = 24, sta = 22, int = 20, spi = 20 },
		[3] = { str = 23, agi = 26, sta = 22, int = 20, spi = 21 },
		[4] = { str = 23, agi = 27, sta = 23, int = 20, spi = 21 },
		[5] = { str = 24, agi = 29, sta = 24, int = 21, spi = 21 },
		[6] = { str = 25, agi = 30, sta = 25, int = 21, spi = 22 },
		[7] = { str = 26, agi = 32, sta = 25, int = 21, spi = 22 },
		[8] = { str = 26, agi = 33, sta = 26, int = 21, spi = 23 },
		[9] = { str = 27, agi = 35, sta = 27, int = 21, spi = 23 },
		[10] = { str = 28, agi = 36, sta = 27, int = 21, spi = 23 },
		[11] = { str = 29, agi = 38, sta = 28, int = 22, spi = 24 },
		[12] = { str = 30, agi = 39, sta = 29, int = 22, spi = 24 },
		[13] = { str = 31, agi = 41, sta = 30, int = 22, spi = 25 },
		[14] = { str = 31, agi = 43, sta = 31, int = 22, spi = 25 },
		[15] = { str = 32, agi = 44, sta = 31, int = 22, spi = 25 },
		[16] = { str = 33, agi = 46, sta = 32, int = 23, spi = 26 },
		[17] = { str = 34, agi = 48, sta = 33, int = 23, spi = 26 },
		[18] = { str = 35, agi = 49, sta = 34, int = 23, spi = 27 },
		[19] = { str = 36, agi = 51, sta = 35, int = 23, spi = 27 },
		[20] = { str = 37, agi = 53, sta = 35, int = 23, spi = 28 },
		[21] = { str = 38, agi = 54, sta = 36, int = 24, spi = 28 },
		[22] = { str = 39, agi = 56, sta = 37, int = 24, spi = 29 },
		[23] = { str = 40, agi = 58, sta = 38, int = 24, spi = 29 },
		[24] = { str = 41, agi = 60, sta = 39, int = 24, spi = 30 },
		[25] = { str = 42, agi = 61, sta = 40, int = 25, spi = 30 },
		[26] = { str = 43, agi = 63, sta = 41, int = 25, spi = 31 },
		[27] = { str = 44, agi = 65, sta = 42, int = 25, spi = 31 },
		[28] = { str = 45, agi = 67, sta = 43, int = 25, spi = 32 },
		[29] = { str = 46, agi = 69, sta = 43, int = 25, spi = 32 },
		[30] = { str = 47, agi = 71, sta = 44, int = 26, spi = 33 },
		[31] = { str = 48, agi = 72, sta = 45, int = 26, spi = 33 },
		[32] = { str = 49, agi = 74, sta = 46, int = 26, spi = 34 },
		[33] = { str = 50, agi = 76, sta = 47, int = 27, spi = 34 },
		[34] = { str = 51, agi = 78, sta = 48, int = 27, spi = 35 },
		[35] = { str = 52, agi = 80, sta = 49, int = 27, spi = 35 },
		[36] = { str = 53, agi = 82, sta = 50, int = 27, spi = 36 },
		[37] = { str = 54, agi = 84, sta = 51, int = 28, spi = 36 },
		[38] = { str = 55, agi = 86, sta = 52, int = 28, spi = 37 },
		[39] = { str = 56, agi = 88, sta = 53, int = 28, spi = 38 },
		[40] = { str = 57, agi = 90, sta = 54, int = 28, spi = 38 },
		[41] = { str = 58, agi = 92, sta = 55, int = 29, spi = 39 },
		[42] = { str = 60, agi = 94, sta = 56, int = 29, spi = 39 },
		[43] = { str = 61, agi = 96, sta = 57, int = 29, spi = 40 },
		[44] = { str = 62, agi = 98, sta = 58, int = 30, spi = 40 },
		[45] = { str = 63, agi = 100, sta = 59, int = 30, spi = 41 },
		[46] = { str = 64, agi = 103, sta = 61, int = 30, spi = 42 },
		[47] = { str = 65, agi = 105, sta = 62, int = 31, spi = 42 },
		[48] = { str = 66, agi = 107, sta = 63, int = 31, spi = 43 },
		[49] = { str = 68, agi = 109, sta = 64, int = 31, spi = 44 },
		[50] = { str = 69, agi = 111, sta = 65, int = 32, spi = 44 },
		[51] = { str = 70, agi = 113, sta = 66, int = 32, spi = 45 },
		[52] = { str = 71, agi = 116, sta = 67, int = 32, spi = 45 },
		[53] = { str = 73, agi = 118, sta = 68, int = 33, spi = 46 },
		[54] = { str = 74, agi = 120, sta = 69, int = 33, spi = 47 },
		[55] = { str = 75, agi = 122, sta = 71, int = 33, spi = 47 },
		[56] = { str = 76, agi = 125, sta = 72, int = 34, spi = 48 },
		[57] = { str = 78, agi = 127, sta = 73, int = 34, spi = 49 },
		[58] = { str = 79, agi = 129, sta = 74, int = 34, spi = 49 },
		[59] = { str = 80, agi = 131, sta = 75, int = 35, spi = 50 },
		[60] = { str = 81, agi = 134, sta = 77, int = 35, spi = 51 },
		[61] = { str = 83, agi = 136, sta = 78, int = 35, spi = 51 },
		[62] = { str = 84, agi = 138, sta = 79, int = 36, spi = 52 },
		[63] = { str = 85, agi = 141, sta = 80, int = 36, spi = 53 },
		[64] = { str = 87, agi = 143, sta = 81, int = 37, spi = 54 },
		[65] = { str = 88, agi = 146, sta = 83, int = 37, spi = 54 },
		[66] = { str = 89, agi = 148, sta = 84, int = 37, spi = 55 },
		[67] = { str = 91, agi = 151, sta = 85, int = 38, spi = 56 },
		[68] = { str = 92, agi = 153, sta = 86, int = 38, spi = 57 },
		[69] = { str = 94, agi = 156, sta = 88, int = 39, spi = 57 },
		[70] = { str = 95, agi = 158, sta = 89, int = 39, spi = 58 }
	},
	PRIEST = {
		[1] = { str = 20, agi = 20, sta = 20, int = 22, spi = 23 },
		[2] = { str = 20, agi = 20, sta = 20, int = 23, spi = 24 },
		[3] = { str = 20, agi = 20, sta = 21, int = 25, spi = 26 },
		[4] = { str = 20, agi = 21, sta = 21, int = 26, spi = 27 },
		[5] = { str = 21, agi = 21, sta = 21, int = 27, spi = 28 },
		[6] = { str = 21, agi = 21, sta = 22, int = 29, spi = 30 },
		[7] = { str = 21, agi = 21, sta = 22, int = 30, spi = 31 },
		[8] = { str = 21, agi = 22, sta = 23, int = 31, spi = 33 },
		[9] = { str = 21, agi = 22, sta = 23, int = 33, spi = 34 },
		[10] = { str = 21, agi = 22, sta = 23, int = 34, spi = 36 },
		[11] = { str = 22, agi = 22, sta = 24, int = 36, spi = 37 },
		[12] = { str = 22, agi = 23, sta = 24, int = 37, spi = 39 },
		[13] = { str = 22, agi = 23, sta = 25, int = 38, spi = 40 },
		[14] = { str = 22, agi = 23, sta = 25, int = 40, spi = 42 },
		[15] = { str = 22, agi = 23, sta = 25, int = 41, spi = 43 },
		[16] = { str = 23, agi = 24, sta = 26, int = 43, spi = 45 },
		[17] = { str = 23, agi = 24, sta = 26, int = 44, spi = 46 },
		[18] = { str = 23, agi = 24, sta = 27, int = 46, spi = 48 },
		[19] = { str = 23, agi = 24, sta = 27, int = 47, spi = 49 },
		[20] = { str = 23, agi = 25, sta = 28, int = 49, spi = 51 },
		[21] = { str = 24, agi = 25, sta = 28, int = 51, spi = 53 },
		[22] = { str = 24, agi = 25, sta = 29, int = 52, spi = 54 },
		[23] = { str = 24, agi = 26, sta = 29, int = 54, spi = 56 },
		[24] = { str = 24, agi = 26, sta = 30, int = 55, spi = 58 },
		[25] = { str = 25, agi = 26, sta = 30, int = 57, spi = 59 },
		[26] = { str = 25, agi = 27, sta = 31, int = 59, spi = 61 },
		[27] = { str = 25, agi = 27, sta = 31, int = 60, spi = 63 },
		[28] = { str = 25, agi = 27, sta = 32, int = 62, spi = 65 },
		[29] = { str = 25, agi = 28, sta = 32, int = 64, spi = 66 },
		[30] = { str = 26, agi = 28, sta = 33, int = 65, spi = 68 },
		[31] = { str = 26, agi = 28, sta = 33, int = 67, spi = 70 },
		[32] = { str = 26, agi = 29, sta = 34, int = 69, spi = 72 },
		[33] = { str = 27, agi = 29, sta = 34, int = 70, spi = 73 },
		[34] = { str = 27, agi = 29, sta = 35, int = 72, spi = 75 },
		[35] = { str = 27, agi = 30, sta = 35, int = 74, spi = 77 },
		[36] = { str = 27, agi = 30, sta = 36, int = 76, spi = 79 },
		[37] = { str = 28, agi = 30, sta = 36, int = 78, spi = 81 },
		[38] = { str = 28, agi = 31, sta = 37, int = 79, spi = 83 },
		[39] = { str = 28, agi = 31, sta = 38, int = 81, spi = 85 },
		[40] = { str = 28, agi = 31, sta = 38, int = 83, spi = 87 },
		[41] = { str = 29, agi = 32, sta = 39, int = 85, spi = 88 },
		[42] = { str = 29, agi = 32, sta = 39, int = 87, spi = 90 },
		[43] = { str = 29, agi = 33, sta = 40, int = 89, spi = 92 },
		[44] = { str = 30, agi = 33, sta = 40, int = 91, spi = 94 },
		[45] = { str = 30, agi = 33, sta = 41, int = 92, spi = 96 },
		[46] = { str = 30, agi = 34, sta = 42, int = 94, spi = 98 },
		[47] = { str = 31, agi = 34, sta = 42, int = 96, spi = 100 },
		[48] = { str = 31, agi = 35, sta = 43, int = 98, spi = 102 },
		[49] = { str = 31, agi = 35, sta = 44, int = 100, spi = 104 },
		[50] = { str = 32, agi = 36, sta = 44, int = 102, spi = 106 },
		[51] = { str = 32, agi = 36, sta = 45, int = 104, spi = 109 },
		[52] = { str = 32, agi = 36, sta = 45, int = 106, spi = 111 },
		[53] = { str = 33, agi = 37, sta = 46, int = 108, spi = 113 },
		[54] = { str = 33, agi = 37, sta = 47, int = 110, spi = 115 },
		[55] = { str = 33, agi = 38, sta = 47, int = 112, spi = 117 },
		[56] = { str = 34, agi = 38, sta = 48, int = 114, spi = 119 },
		[57] = { str = 34, agi = 39, sta = 49, int = 117, spi = 121 },
		[58] = { str = 34, agi = 39, sta = 49, int = 119, spi = 124 },
		[59] = { str = 35, agi = 40, sta = 50, int = 121, spi = 126 },
		[60] = { str = 35, agi = 40, sta = 51, int = 123, spi = 128 },
		[61] = { str = 35, agi = 41, sta = 51, int = 125, spi = 130 },
		[62] = { str = 36, agi = 41, sta = 52, int = 127, spi = 132 },
		[63] = { str = 36, agi = 41, sta = 53, int = 129, spi = 135 },
		[64] = { str = 37, agi = 42, sta = 54, int = 132, spi = 137 },
		[65] = { str = 37, agi = 42, sta = 54, int = 134, spi = 139 },
		[66] = { str = 37, agi = 43, sta = 55, int = 136, spi = 142 },
		[67] = { str = 38, agi = 43, sta = 56, int = 138, spi = 144 },
		[68] = { str = 38, agi = 44, sta = 57, int = 140, spi = 146 },
		[69] = { str = 39, agi = 44, sta = 57, int = 143, spi = 149 },
		[70] = { str = 39, agi = 45, sta = 58, int = 145, spi = 151 }
	},
	MAGE = {
		[1] = { str = 20, agi = 20, sta = 20, int = 23, spi = 22 },
		[2] = { str = 20, agi = 20, sta = 20, int = 24, spi = 23 },
		[3] = { str = 20, agi = 20, sta = 21, int = 26, spi = 25 },
		[4] = { str = 20, agi = 20, sta = 21, int = 27, spi = 26 },
		[5] = { str = 20, agi = 21, sta = 21, int = 28, spi = 27 },
		[6] = { str = 20, agi = 21, sta = 21, int = 30, spi = 29 },
		[7] = { str = 21, agi = 21, sta = 22, int = 31, spi = 30 },
		[8] = { str = 21, agi = 21, sta = 22, int = 33, spi = 31 },
		[9] = { str = 21, agi = 21, sta = 22, int = 34, spi = 33 },
		[10] = { str = 21, agi = 21, sta = 23, int = 36, spi = 34 },
		[11] = { str = 21, agi = 22, sta = 23, int = 37, spi = 36 },
		[12] = { str = 21, agi = 22, sta = 23, int = 39, spi = 37 },
		[13] = { str = 21, agi = 22, sta = 24, int = 40, spi = 38 },
		[14] = { str = 21, agi = 22, sta = 24, int = 42, spi = 40 },
		[15] = { str = 21, agi = 22, sta = 24, int = 43, spi = 41 },
		[16] = { str = 21, agi = 23, sta = 25, int = 45, spi = 43 },
		[17] = { str = 22, agi = 23, sta = 25, int = 46, spi = 44 },
		[18] = { str = 22, agi = 23, sta = 25, int = 48, spi = 46 },
		[19] = { str = 22, agi = 23, sta = 26, int = 49, spi = 47 },
		[20] = { str = 22, agi = 23, sta = 26, int = 51, spi = 49 },
		[21] = { str = 22, agi = 24, sta = 26, int = 53, spi = 51 },
		[22] = { str = 22, agi = 24, sta = 27, int = 54, spi = 52 },
		[23] = { str = 22, agi = 24, sta = 27, int = 56, spi = 54 },
		[24] = { str = 23, agi = 24, sta = 28, int = 58, spi = 55 },
		[25] = { str = 23, agi = 25, sta = 28, int = 59, spi = 57 },
		[26] = { str = 23, agi = 25, sta = 28, int = 61, spi = 59 },
		[27] = { str = 23, agi = 25, sta = 29, int = 63, spi = 60 },
		[28] = { str = 23, agi = 25, sta = 29, int = 65, spi = 62 },
		[29] = { str = 23, agi = 25, sta = 30, int = 66, spi = 64 },
		[30] = { str = 24, agi = 26, sta = 30, int = 68, spi = 65 },
		[31] = { str = 24, agi = 26, sta = 30, int = 70, spi = 67 },
		[32] = { str = 24, agi = 26, sta = 31, int = 72, spi = 69 },
		[33] = { str = 24, agi = 27, sta = 31, int = 73, spi = 70 },
		[34] = { str = 24, agi = 27, sta = 32, int = 75, spi = 72 },
		[35] = { str = 24, agi = 27, sta = 32, int = 77, spi = 74 },
		[36] = { str = 25, agi = 27, sta = 33, int = 79, spi = 76 },
		[37] = { str = 25, agi = 28, sta = 33, int = 81, spi = 78 },
		[38] = { str = 25, agi = 28, sta = 34, int = 83, spi = 79 },
		[39] = { str = 25, agi = 28, sta = 34, int = 85, spi = 81 },
		[40] = { str = 25, agi = 28, sta = 35, int = 87, spi = 83 },
		[41] = { str = 26, agi = 29, sta = 35, int = 88, spi = 85 },
		[42] = { str = 26, agi = 29, sta = 35, int = 90, spi = 87 },
		[43] = { str = 26, agi = 29, sta = 36, int = 92, spi = 89 },
		[44] = { str = 26, agi = 30, sta = 36, int = 94, spi = 91 },
		[45] = { str = 26, agi = 30, sta = 37, int = 96, spi = 92 },
		[46] = { str = 27, agi = 30, sta = 37, int = 98, spi = 94 },
		[47] = { str = 27, agi = 31, sta = 38, int = 100, spi = 96 },
		[48] = { str = 27, agi = 31, sta = 38, int = 102, spi = 98 },
		[49] = { str = 27, agi = 31, sta = 39, int = 104, spi = 100 },
		[50] = { str = 28, agi = 32, sta = 40, int = 106, spi = 102 },
		[51] = { str = 28, agi = 32, sta = 40, int = 109, spi = 104 },
		[52] = { str = 28, agi = 32, sta = 41, int = 111, spi = 106 },
		[53] = { str = 28, agi = 33, sta = 41, int = 113, spi = 108 },
		[54] = { str = 29, agi = 33, sta = 42, int = 115, spi = 110 },
		[55] = { str = 29, agi = 33, sta = 42, int = 117, spi = 112 },
		[56] = { str = 29, agi = 34, sta = 43, int = 119, spi = 114 },
		[57] = { str = 29, agi = 34, sta = 43, int = 121, spi = 117 },
		[58] = { str = 30, agi = 34, sta = 44, int = 124, spi = 119 },
		[59] = { str = 30, agi = 35, sta = 44, int = 126, spi = 121 },
		[60] = { str = 30, agi = 35, sta = 45, int = 128, spi = 123 },
		[61] = { str = 30, agi = 35, sta = 46, int = 130, spi = 125 },
		[62] = { str = 31, agi = 36, sta = 46, int = 132, spi = 127 },
		[63] = { str = 31, agi = 36, sta = 47, int = 135, spi = 129 },
		[64] = { str = 31, agi = 37, sta = 47, int = 137, spi = 132 },
		[65] = { str = 32, agi = 37, sta = 48, int = 139, spi = 134 },
		[66] = { str = 32, agi = 37, sta = 49, int = 142, spi = 136 },
		[67] = { str = 32, agi = 38, sta = 49, int = 144, spi = 138 },
		[68] = { str = 32, agi = 38, sta = 50, int = 146, spi = 140 },
		[69] = { str = 33, agi = 39, sta = 50, int = 149, spi = 143 },
		[70] = { str = 33, agi = 39, sta = 51, int = 151, spi = 145 }
	},
	WARLOCK = {
		[1] = { str = 20, agi = 20, sta = 21, int = 22, spi = 22 },
		[2] = { str = 20, agi = 20, sta = 22, int = 23, spi = 23 },
		[3] = { str = 21, agi = 21, sta = 22, int = 24, spi = 24 },
		[4] = { str = 21, agi = 21, sta = 23, int = 26, spi = 25 },
		[5] = { str = 21, agi = 21, sta = 23, int = 27, spi = 27 },
		[6] = { str = 21, agi = 22, sta = 24, int = 28, spi = 28 },
		[7] = { str = 22, agi = 22, sta = 24, int = 29, spi = 29 },
		[8] = { str = 22, agi = 23, sta = 25, int = 30, spi = 30 },
		[9] = { str = 22, agi = 23, sta = 26, int = 32, spi = 31 },
		[10] = { str = 23, agi = 23, sta = 26, int = 33, spi = 33 },
		[11] = { str = 23, agi = 24, sta = 27, int = 34, spi = 34 },
		[12] = { str = 23, agi = 24, sta = 27, int = 35, spi = 35 },
		[13] = { str = 24, agi = 25, sta = 28, int = 37, spi = 36 },
		[14] = { str = 24, agi = 25, sta = 29, int = 38, spi = 38 },
		[15] = { str = 24, agi = 25, sta = 29, int = 39, spi = 39 },
		[16] = { str = 25, agi = 26, sta = 30, int = 41, spi = 40 },
		[17] = { str = 25, agi = 26, sta = 31, int = 42, spi = 42 },
		[18] = { str = 25, agi = 27, sta = 31, int = 43, spi = 43 },
		[19] = { str = 26, agi = 27, sta = 32, int = 45, spi = 44 },
		[20] = { str = 26, agi = 28, sta = 33, int = 46, spi = 46 },
		[21] = { str = 26, agi = 28, sta = 33, int = 48, spi = 47 },
		[22] = { str = 27, agi = 29, sta = 34, int = 49, spi = 49 },
		[23] = { str = 27, agi = 29, sta = 35, int = 51, spi = 50 },
		[24] = { str = 28, agi = 30, sta = 35, int = 52, spi = 51 },
		[25] = { str = 28, agi = 30, sta = 36, int = 53, spi = 53 },
		[26] = { str = 28, agi = 31, sta = 37, int = 55, spi = 54 },
		[27] = { str = 29, agi = 31, sta = 37, int = 56, spi = 56 },
		[28] = { str = 29, agi = 32, sta = 38, int = 58, spi = 57 },
		[29] = { str = 30, agi = 32, sta = 39, int = 59, spi = 59 },
		[30] = { str = 30, agi = 33, sta = 40, int = 61, spi = 60 },
		[31] = { str = 30, agi = 33, sta = 40, int = 62, spi = 62 },
		[32] = { str = 31, agi = 34, sta = 41, int = 64, spi = 63 },
		[33] = { str = 31, agi = 34, sta = 42, int = 66, spi = 65 },
		[34] = { str = 32, agi = 35, sta = 43, int = 67, spi = 66 },
		[35] = { str = 32, agi = 35, sta = 44, int = 69, spi = 68 },
		[36] = { str = 33, agi = 36, sta = 44, int = 70, spi = 69 },
		[37] = { str = 33, agi = 36, sta = 45, int = 72, spi = 71 },
		[38] = { str = 34, agi = 37, sta = 46, int = 74, spi = 73 },
		[39] = { str = 34, agi = 38, sta = 47, int = 75, spi = 74 },
		[40] = { str = 35, agi = 38, sta = 48, int = 77, spi = 76 },
		[41] = { str = 35, agi = 39, sta = 48, int = 79, spi = 78 },
		[42] = { str = 35, agi = 39, sta = 49, int = 80, spi = 79 },
		[43] = { str = 36, agi = 40, sta = 50, int = 82, spi = 81 },
		[44] = { str = 36, agi = 40, sta = 51, int = 84, spi = 83 },
		[45] = { str = 37, agi = 41, sta = 52, int = 85, spi = 84 },
		[46] = { str = 37, agi = 42, sta = 53, int = 87, spi = 86 },
		[47] = { str = 38, agi = 42, sta = 54, int = 89, spi = 88 },
		[48] = { str = 38, agi = 43, sta = 55, int = 91, spi = 89 },
		[49] = { str = 39, agi = 44, sta = 55, int = 93, spi = 91 },
		[50] = { str = 40, agi = 44, sta = 56, int = 94, spi = 93 },
		[51] = { str = 40, agi = 45, sta = 57, int = 96, spi = 95 },
		[52] = { str = 41, agi = 45, sta = 58, int = 98, spi = 97 },
		[53] = { str = 41, agi = 46, sta = 59, int = 100, spi = 98 },
		[54] = { str = 42, agi = 47, sta = 60, int = 102, spi = 100 },
		[55] = { str = 42, agi = 47, sta = 61, int = 103, spi = 102 },
		[56] = { str = 43, agi = 48, sta = 62, int = 105, spi = 104 },
		[57] = { str = 43, agi = 49, sta = 63, int = 107, spi = 106 },
		[58] = { str = 44, agi = 49, sta = 64, int = 109, spi = 108 },
		[59] = { str = 44, agi = 50, sta = 65, int = 111, spi = 109 },
		[60] = { str = 45, agi = 51, sta = 66, int = 113, spi = 111 },
		[61] = { str = 46, agi = 51, sta = 67, int = 115, spi = 113 },
		[62] = { str = 46, agi = 52, sta = 68, int = 117, spi = 115 },
		[63] = { str = 47, agi = 53, sta = 69, int = 119, spi = 117 },
		[64] = { str = 47, agi = 54, sta = 70, int = 121, spi = 119 },
		[65] = { str = 48, agi = 54, sta = 71, int = 123, spi = 121 },
		[66] = { str = 49, agi = 55, sta = 72, int = 125, spi = 123 },
		[67] = { str = 49, agi = 56, sta = 73, int = 127, spi = 125 },
		[68] = { str = 50, agi = 57, sta = 74, int = 129, spi = 127 },
		[69] = { str = 50, agi = 57, sta = 75, int = 131, spi = 129 },
		[70] = { str = 51, agi = 58, sta = 76, int = 133, spi = 131 }
	},
},
Orc = {
	WARRIOR = {
		[1] = { str = 26, agi = 17, sta = 24, int = 17, spi = 23 },
		[2] = { str = 27, agi = 18, sta = 25, int = 17, spi = 23 },
		[3] = { str = 29, agi = 19, sta = 26, int = 17, spi = 24 },
		[4] = { str = 30, agi = 19, sta = 27, int = 17, spi = 24 },
		[5] = { str = 31, agi = 20, sta = 29, int = 17, spi = 24 },
		[6] = { str = 32, agi = 21, sta = 30, int = 17, spi = 24 },
		[7] = { str = 34, agi = 22, sta = 31, int = 18, spi = 25 },
		[8] = { str = 35, agi = 23, sta = 32, int = 18, spi = 25 },
		[9] = { str = 37, agi = 24, sta = 34, int = 18, spi = 25 },
		[10] = { str = 38, agi = 24, sta = 35, int = 18, spi = 26 },
		[11] = { str = 39, agi = 25, sta = 36, int = 18, spi = 26 },
		[12] = { str = 41, agi = 26, sta = 37, int = 18, spi = 26 },
		[13] = { str = 42, agi = 27, sta = 39, int = 18, spi = 27 },
		[14] = { str = 44, agi = 28, sta = 40, int = 18, spi = 27 },
		[15] = { str = 45, agi = 29, sta = 41, int = 18, spi = 27 },
		[16] = { str = 47, agi = 30, sta = 43, int = 19, spi = 28 },
		[17] = { str = 48, agi = 31, sta = 44, int = 19, spi = 28 },
		[18] = { str = 50, agi = 32, sta = 45, int = 19, spi = 28 },
		[19] = { str = 51, agi = 33, sta = 47, int = 19, spi = 29 },
		[20] = { str = 53, agi = 34, sta = 48, int = 19, spi = 29 },
		[21] = { str = 54, agi = 34, sta = 50, int = 19, spi = 29 },
		[22] = { str = 56, agi = 35, sta = 51, int = 19, spi = 30 },
		[23] = { str = 57, agi = 36, sta = 52, int = 20, spi = 30 },
		[24] = { str = 59, agi = 37, sta = 54, int = 20, spi = 30 },
		[25] = { str = 60, agi = 38, sta = 55, int = 20, spi = 31 },
		[26] = { str = 62, agi = 39, sta = 57, int = 20, spi = 31 },
		[27] = { str = 64, agi = 40, sta = 58, int = 20, spi = 32 },
		[28] = { str = 65, agi = 41, sta = 60, int = 20, spi = 32 },
		[29] = { str = 67, agi = 43, sta = 61, int = 21, spi = 32 },
		[30] = { str = 69, agi = 44, sta = 63, int = 21, spi = 33 },
		[31] = { str = 70, agi = 45, sta = 64, int = 21, spi = 33 },
		[32] = { str = 72, agi = 46, sta = 66, int = 21, spi = 34 },
		[33] = { str = 74, agi = 47, sta = 67, int = 21, spi = 34 },
		[34] = { str = 76, agi = 48, sta = 69, int = 21, spi = 35 },
		[35] = { str = 77, agi = 49, sta = 71, int = 22, spi = 35 },
		[36] = { str = 79, agi = 50, sta = 72, int = 22, spi = 36 },
		[37] = { str = 81, agi = 51, sta = 74, int = 22, spi = 36 },
		[38] = { str = 83, agi = 52, sta = 76, int = 22, spi = 36 },
		[39] = { str = 84, agi = 53, sta = 77, int = 22, spi = 37 },
		[40] = { str = 86, agi = 55, sta = 79, int = 23, spi = 37 },
		[41] = { str = 88, agi = 56, sta = 81, int = 23, spi = 38 },
		[42] = { str = 90, agi = 57, sta = 82, int = 23, spi = 38 },
		[43] = { str = 92, agi = 58, sta = 84, int = 23, spi = 39 },
		[44] = { str = 94, agi = 59, sta = 86, int = 23, spi = 39 },
		[45] = { str = 96, agi = 60, sta = 87, int = 24, spi = 40 },
		[46] = { str = 98, agi = 62, sta = 89, int = 24, spi = 40 },
		[47] = { str = 100, agi = 63, sta = 91, int = 24, spi = 41 },
		[48] = { str = 101, agi = 64, sta = 93, int = 24, spi = 41 },
		[49] = { str = 103, agi = 65, sta = 94, int = 25, spi = 42 },
		[50] = { str = 105, agi = 66, sta = 96, int = 25, spi = 42 },
		[51] = { str = 107, agi = 68, sta = 98, int = 25, spi = 43 },
		[52] = { str = 109, agi = 69, sta = 100, int = 25, spi = 43 },
		[53] = { str = 111, agi = 70, sta = 102, int = 25, spi = 44 },
		[54] = { str = 113, agi = 71, sta = 104, int = 26, spi = 45 },
		[55] = { str = 115, agi = 73, sta = 105, int = 26, spi = 45 },
		[56] = { str = 118, agi = 74, sta = 107, int = 26, spi = 46 },
		[57] = { str = 120, agi = 75, sta = 109, int = 26, spi = 46 },
		[58] = { str = 122, agi = 77, sta = 111, int = 27, spi = 47 },
		[59] = { str = 124, agi = 78, sta = 113, int = 27, spi = 47 },
		[60] = { str = 126, agi = 79, sta = 115, int = 27, spi = 48 },
		[61] = { str = 128, agi = 81, sta = 117, int = 27, spi = 48 },
		[62] = { str = 130, agi = 82, sta = 119, int = 28, spi = 49 },
		[63] = { str = 132, agi = 83, sta = 121, int = 28, spi = 50 },
		[64] = { str = 135, agi = 85, sta = 123, int = 28, spi = 50 },
		[65] = { str = 137, agi = 86, sta = 125, int = 29, spi = 51 },
		[66] = { str = 139, agi = 87, sta = 127, int = 29, spi = 52 },
		[67] = { str = 141, agi = 89, sta = 129, int = 29, spi = 52 },
		[68] = { str = 143, agi = 90, sta = 131, int = 29, spi = 53 },
		[69] = { str = 146, agi = 92, sta = 133, int = 30, spi = 53 },
		[70] = { str = 148, agi = 93, sta = 135, int = 30, spi = 54 }
	},
	HUNTER = {
		[1] = { str = 23, agi = 20, sta = 23, int = 17, spi = 24 },
		[2] = { str = 23, agi = 21, sta = 24, int = 18, spi = 25 },
		[3] = { str = 24, agi = 23, sta = 25, int = 18, spi = 25 },
		[4] = { str = 24, agi = 24, sta = 26, int = 19, spi = 26 },
		[5] = { str = 25, agi = 25, sta = 27, int = 19, spi = 26 },
		[6] = { str = 25, agi = 27, sta = 28, int = 20, spi = 27 },
		[7] = { str = 26, agi = 28, sta = 28, int = 21, spi = 28 },
		[8] = { str = 26, agi = 30, sta = 29, int = 21, spi = 28 },
		[9] = { str = 26, agi = 31, sta = 30, int = 22, spi = 29 },
		[10] = { str = 27, agi = 33, sta = 31, int = 22, spi = 30 },
		[11] = { str = 27, agi = 34, sta = 32, int = 23, spi = 30 },
		[12] = { str = 28, agi = 36, sta = 33, int = 24, spi = 31 },
		[13] = { str = 28, agi = 37, sta = 34, int = 24, spi = 32 },
		[14] = { str = 29, agi = 39, sta = 35, int = 25, spi = 33 },
		[15] = { str = 29, agi = 40, sta = 36, int = 26, spi = 33 },
		[16] = { str = 30, agi = 42, sta = 37, int = 26, spi = 34 },
		[17] = { str = 30, agi = 43, sta = 39, int = 27, spi = 35 },
		[18] = { str = 31, agi = 45, sta = 40, int = 28, spi = 35 },
		[19] = { str = 31, agi = 47, sta = 41, int = 28, spi = 36 },
		[20] = { str = 32, agi = 48, sta = 42, int = 29, spi = 37 },
		[21] = { str = 32, agi = 50, sta = 43, int = 30, spi = 38 },
		[22] = { str = 33, agi = 51, sta = 44, int = 31, spi = 39 },
		[23] = { str = 34, agi = 53, sta = 45, int = 31, spi = 39 },
		[24] = { str = 34, agi = 55, sta = 46, int = 32, spi = 40 },
		[25] = { str = 35, agi = 57, sta = 47, int = 33, spi = 41 },
		[26] = { str = 35, agi = 58, sta = 48, int = 34, spi = 42 },
		[27] = { str = 36, agi = 60, sta = 50, int = 34, spi = 43 },
		[28] = { str = 36, agi = 62, sta = 51, int = 35, spi = 43 },
		[29] = { str = 37, agi = 63, sta = 52, int = 36, spi = 44 },
		[30] = { str = 38, agi = 65, sta = 53, int = 37, spi = 45 },
		[31] = { str = 38, agi = 67, sta = 54, int = 37, spi = 46 },
		[32] = { str = 39, agi = 69, sta = 56, int = 38, spi = 47 },
		[33] = { str = 39, agi = 71, sta = 57, int = 39, spi = 48 },
		[34] = { str = 40, agi = 72, sta = 58, int = 40, spi = 49 },
		[35] = { str = 41, agi = 74, sta = 59, int = 41, spi = 49 },
		[36] = { str = 41, agi = 76, sta = 61, int = 42, spi = 50 },
		[37] = { str = 42, agi = 78, sta = 62, int = 42, spi = 51 },
		[38] = { str = 43, agi = 80, sta = 63, int = 43, spi = 52 },
		[39] = { str = 43, agi = 82, sta = 64, int = 44, spi = 53 },
		[40] = { str = 44, agi = 84, sta = 66, int = 45, spi = 54 },
		[41] = { str = 45, agi = 86, sta = 67, int = 46, spi = 55 },
		[42] = { str = 45, agi = 88, sta = 68, int = 47, spi = 56 },
		[43] = { str = 46, agi = 90, sta = 70, int = 47, spi = 57 },
		[44] = { str = 47, agi = 91, sta = 71, int = 48, spi = 58 },
		[45] = { str = 47, agi = 93, sta = 72, int = 49, spi = 59 },
		[46] = { str = 48, agi = 95, sta = 74, int = 50, spi = 60 },
		[47] = { str = 49, agi = 98, sta = 75, int = 51, spi = 61 },
		[48] = { str = 50, agi = 100, sta = 77, int = 52, spi = 62 },
		[49] = { str = 50, agi = 102, sta = 78, int = 53, spi = 63 },
		[50] = { str = 51, agi = 104, sta = 79, int = 54, spi = 64 },
		[51] = { str = 52, agi = 106, sta = 81, int = 55, spi = 65 },
		[52] = { str = 52, agi = 108, sta = 82, int = 56, spi = 66 },
		[53] = { str = 53, agi = 110, sta = 84, int = 57, spi = 67 },
		[54] = { str = 54, agi = 112, sta = 85, int = 58, spi = 68 },
		[55] = { str = 55, agi = 114, sta = 87, int = 59, spi = 69 },
		[56] = { str = 55, agi = 116, sta = 88, int = 60, spi = 70 },
		[57] = { str = 56, agi = 118, sta = 90, int = 61, spi = 71 },
		[58] = { str = 57, agi = 121, sta = 91, int = 62, spi = 72 },
		[59] = { str = 58, agi = 123, sta = 93, int = 63, spi = 73 },
		[60] = { str = 59, agi = 125, sta = 94, int = 64, spi = 74 },
		[61] = { str = 59, agi = 127, sta = 96, int = 65, spi = 76 },
		[62] = { str = 60, agi = 130, sta = 97, int = 66, spi = 77 },
		[63] = { str = 61, agi = 132, sta = 99, int = 67, spi = 78 },
		[64] = { str = 62, agi = 134, sta = 100, int = 68, spi = 79 },
		[65] = { str = 63, agi = 136, sta = 102, int = 69, spi = 80 },
		[66] = { str = 64, agi = 139, sta = 104, int = 70, spi = 81 },
		[67] = { str = 64, agi = 141, sta = 105, int = 71, spi = 82 },
		[68] = { str = 65, agi = 143, sta = 107, int = 72, spi = 84 },
		[69] = { str = 66, agi = 146, sta = 108, int = 73, spi = 85 },
		[70] = { str = 67, agi = 148, sta = 110, int = 74, spi = 86 }
	},
	ROGUE = {
		[1] = { str = 24, agi = 20, sta = 23, int = 17, spi = 23 },
		[2] = { str = 25, agi = 21, sta = 24, int = 17, spi = 23 },
		[3] = { str = 25, agi = 23, sta = 24, int = 17, spi = 24 },
		[4] = { str = 26, agi = 24, sta = 25, int = 17, spi = 24 },
		[5] = { str = 27, agi = 26, sta = 26, int = 18, spi = 24 },
		[6] = { str = 28, agi = 27, sta = 26, int = 18, spi = 25 },
		[7] = { str = 29, agi = 29, sta = 27, int = 18, spi = 25 },
		[8] = { str = 29, agi = 30, sta = 28, int = 18, spi = 26 },
		[9] = { str = 30, agi = 32, sta = 29, int = 18, spi = 26 },
		[10] = { str = 31, agi = 33, sta = 29, int = 19, spi = 26 },
		[11] = { str = 32, agi = 35, sta = 30, int = 19, spi = 27 },
		[12] = { str = 33, agi = 37, sta = 31, int = 19, spi = 27 },
		[13] = { str = 34, agi = 38, sta = 32, int = 19, spi = 28 },
		[14] = { str = 34, agi = 40, sta = 32, int = 19, spi = 28 },
		[15] = { str = 35, agi = 41, sta = 33, int = 19, spi = 28 },
		[16] = { str = 36, agi = 43, sta = 34, int = 20, spi = 29 },
		[17] = { str = 37, agi = 45, sta = 35, int = 20, spi = 29 },
		[18] = { str = 38, agi = 46, sta = 36, int = 20, spi = 30 },
		[19] = { str = 39, agi = 48, sta = 37, int = 20, spi = 30 },
		[20] = { str = 40, agi = 50, sta = 37, int = 21, spi = 31 },
		[21] = { str = 41, agi = 52, sta = 38, int = 21, spi = 31 },
		[22] = { str = 42, agi = 53, sta = 39, int = 21, spi = 31 },
		[23] = { str = 43, agi = 55, sta = 40, int = 21, spi = 32 },
		[24] = { str = 43, agi = 57, sta = 41, int = 21, spi = 32 },
		[25] = { str = 44, agi = 59, sta = 42, int = 22, spi = 33 },
		[26] = { str = 45, agi = 60, sta = 43, int = 22, spi = 33 },
		[27] = { str = 46, agi = 62, sta = 44, int = 22, spi = 34 },
		[28] = { str = 47, agi = 64, sta = 44, int = 22, spi = 34 },
		[29] = { str = 48, agi = 66, sta = 45, int = 23, spi = 35 },
		[30] = { str = 49, agi = 68, sta = 46, int = 23, spi = 35 },
		[31] = { str = 50, agi = 70, sta = 47, int = 23, spi = 36 },
		[32] = { str = 51, agi = 72, sta = 48, int = 23, spi = 36 },
		[33] = { str = 53, agi = 73, sta = 49, int = 24, spi = 37 },
		[34] = { str = 54, agi = 75, sta = 50, int = 24, spi = 38 },
		[35] = { str = 55, agi = 77, sta = 51, int = 24, spi = 38 },
		[36] = { str = 56, agi = 79, sta = 52, int = 24, spi = 39 },
		[37] = { str = 57, agi = 81, sta = 53, int = 25, spi = 39 },
		[38] = { str = 58, agi = 83, sta = 54, int = 25, spi = 40 },
		[39] = { str = 59, agi = 85, sta = 55, int = 25, spi = 40 },
		[40] = { str = 60, agi = 87, sta = 56, int = 26, spi = 41 },
		[41] = { str = 61, agi = 89, sta = 57, int = 26, spi = 41 },
		[42] = { str = 62, agi = 91, sta = 58, int = 26, spi = 42 },
		[43] = { str = 63, agi = 93, sta = 59, int = 27, spi = 43 },
		[44] = { str = 65, agi = 95, sta = 60, int = 27, spi = 43 },
		[45] = { str = 66, agi = 98, sta = 61, int = 27, spi = 44 },
		[46] = { str = 67, agi = 100, sta = 62, int = 27, spi = 44 },
		[47] = { str = 68, agi = 102, sta = 64, int = 28, spi = 45 },
		[48] = { str = 69, agi = 104, sta = 65, int = 28, spi = 46 },
		[49] = { str = 71, agi = 106, sta = 66, int = 28, spi = 46 },
		[50] = { str = 72, agi = 108, sta = 67, int = 29, spi = 47 },
		[51] = { str = 73, agi = 110, sta = 68, int = 29, spi = 48 },
		[52] = { str = 74, agi = 113, sta = 69, int = 29, spi = 48 },
		[53] = { str = 75, agi = 115, sta = 70, int = 30, spi = 49 },
		[54] = { str = 77, agi = 117, sta = 71, int = 30, spi = 50 },
		[55] = { str = 78, agi = 119, sta = 73, int = 30, spi = 50 },
		[56] = { str = 79, agi = 122, sta = 74, int = 31, spi = 51 },
		[57] = { str = 80, agi = 124, sta = 75, int = 31, spi = 52 },
		[58] = { str = 82, agi = 126, sta = 76, int = 31, spi = 52 },
		[59] = { str = 83, agi = 129, sta = 77, int = 32, spi = 53 },
		[60] = { str = 84, agi = 131, sta = 78, int = 32, spi = 54 },
		[61] = { str = 86, agi = 133, sta = 80, int = 33, spi = 54 },
		[62] = { str = 87, agi = 136, sta = 81, int = 33, spi = 55 },
		[63] = { str = 88, agi = 138, sta = 82, int = 33, spi = 56 },
		[64] = { str = 90, agi = 140, sta = 83, int = 34, spi = 57 },
		[65] = { str = 91, agi = 143, sta = 85, int = 34, spi = 57 },
		[66] = { str = 92, agi = 145, sta = 86, int = 34, spi = 58 },
		[67] = { str = 94, agi = 148, sta = 87, int = 35, spi = 59 },
		[68] = { str = 95, agi = 150, sta = 88, int = 35, spi = 59 },
		[69] = { str = 97, agi = 153, sta = 90, int = 36, spi = 60 },
		[70] = { str = 98, agi = 155, sta = 91, int = 36, spi = 61 }
	},
	SHAMAN = {
		[1] = { str = 24, agi = 17, sta = 23, int = 18, spi = 25 },
		[2] = { str = 25, agi = 17, sta = 24, int = 19, spi = 26 },
		[3] = { str = 26, agi = 18, sta = 25, int = 20, spi = 27 },
		[4] = { str = 26, agi = 18, sta = 26, int = 21, spi = 28 },
		[5] = { str = 27, agi = 19, sta = 27, int = 22, spi = 29 },
		[6] = { str = 28, agi = 19, sta = 28, int = 23, spi = 30 },
		[7] = { str = 29, agi = 20, sta = 29, int = 24, spi = 31 },
		[8] = { str = 30, agi = 20, sta = 30, int = 25, spi = 32 },
		[9] = { str = 31, agi = 21, sta = 31, int = 26, spi = 33 },
		[10] = { str = 32, agi = 21, sta = 32, int = 27, spi = 34 },
		[11] = { str = 33, agi = 22, sta = 33, int = 28, spi = 36 },
		[12] = { str = 34, agi = 22, sta = 34, int = 29, spi = 37 },
		[13] = { str = 34, agi = 23, sta = 35, int = 30, spi = 38 },
		[14] = { str = 35, agi = 23, sta = 36, int = 31, spi = 39 },
		[15] = { str = 36, agi = 24, sta = 37, int = 32, spi = 40 },
		[16] = { str = 37, agi = 24, sta = 39, int = 33, spi = 41 },
		[17] = { str = 38, agi = 25, sta = 40, int = 34, spi = 43 },
		[18] = { str = 39, agi = 25, sta = 41, int = 35, spi = 44 },
		[19] = { str = 40, agi = 26, sta = 42, int = 36, spi = 45 },
		[20] = { str = 41, agi = 26, sta = 43, int = 37, spi = 46 },
		[21] = { str = 42, agi = 27, sta = 44, int = 38, spi = 47 },
		[22] = { str = 43, agi = 27, sta = 45, int = 39, spi = 49 },
		[23] = { str = 44, agi = 28, sta = 47, int = 40, spi = 50 },
		[24] = { str = 45, agi = 28, sta = 48, int = 41, spi = 51 },
		[25] = { str = 47, agi = 29, sta = 49, int = 43, spi = 52 },
		[26] = { str = 48, agi = 30, sta = 50, int = 44, spi = 54 },
		[27] = { str = 49, agi = 30, sta = 52, int = 45, spi = 55 },
		[28] = { str = 50, agi = 31, sta = 53, int = 46, spi = 56 },
		[29] = { str = 51, agi = 31, sta = 54, int = 47, spi = 58 },
		[30] = { str = 52, agi = 32, sta = 55, int = 48, spi = 59 },
		[31] = { str = 53, agi = 33, sta = 57, int = 50, spi = 60 },
		[32] = { str = 54, agi = 33, sta = 58, int = 51, spi = 62 },
		[33] = { str = 55, agi = 34, sta = 59, int = 52, spi = 63 },
		[34] = { str = 57, agi = 34, sta = 61, int = 53, spi = 65 },
		[35] = { str = 58, agi = 35, sta = 62, int = 55, spi = 66 },
		[36] = { str = 59, agi = 36, sta = 63, int = 56, spi = 67 },
		[37] = { str = 60, agi = 36, sta = 65, int = 57, spi = 69 },
		[38] = { str = 61, agi = 37, sta = 66, int = 58, spi = 70 },
		[39] = { str = 62, agi = 38, sta = 67, int = 60, spi = 72 },
		[40] = { str = 64, agi = 38, sta = 69, int = 61, spi = 73 },
		[41] = { str = 65, agi = 39, sta = 70, int = 62, spi = 75 },
		[42] = { str = 66, agi = 40, sta = 72, int = 64, spi = 76 },
		[43] = { str = 67, agi = 40, sta = 73, int = 65, spi = 78 },
		[44] = { str = 69, agi = 41, sta = 74, int = 66, spi = 79 },
		[45] = { str = 70, agi = 42, sta = 76, int = 68, spi = 81 },
		[46] = { str = 71, agi = 42, sta = 77, int = 69, spi = 82 },
		[47] = { str = 72, agi = 43, sta = 79, int = 70, spi = 84 },
		[48] = { str = 74, agi = 44, sta = 80, int = 72, spi = 85 },
		[49] = { str = 75, agi = 45, sta = 82, int = 73, spi = 87 },
		[50] = { str = 76, agi = 45, sta = 83, int = 75, spi = 89 },
		[51] = { str = 78, agi = 46, sta = 85, int = 76, spi = 90 },
		[52] = { str = 79, agi = 47, sta = 86, int = 77, spi = 92 },
		[53] = { str = 80, agi = 47, sta = 88, int = 79, spi = 93 },
		[54] = { str = 82, agi = 48, sta = 90, int = 80, spi = 95 },
		[55] = { str = 83, agi = 49, sta = 91, int = 82, spi = 97 },
		[56] = { str = 85, agi = 50, sta = 93, int = 83, spi = 98 },
		[57] = { str = 86, agi = 50, sta = 94, int = 85, spi = 100 },
		[58] = { str = 87, agi = 51, sta = 96, int = 86, spi = 102 },
		[59] = { str = 89, agi = 52, sta = 97, int = 88, spi = 103 },
		[60] = { str = 90, agi = 53, sta = 99, int = 89, spi = 105 },
		[61] = { str = 92, agi = 54, sta = 101, int = 91, spi = 107 },
		[62] = { str = 93, agi = 54, sta = 102, int = 92, spi = 109 },
		[63] = { str = 95, agi = 55, sta = 104, int = 94, spi = 110 },
		[64] = { str = 96, agi = 56, sta = 106, int = 95, spi = 112 },
		[65] = { str = 97, agi = 57, sta = 107, int = 97, spi = 114 },
		[66] = { str = 99, agi = 58, sta = 109, int = 99, spi = 116 },
		[67] = { str = 100, agi = 58, sta = 111, int = 100, spi = 118 },
		[68] = { str = 102, agi = 59, sta = 113, int = 102, spi = 119 },
		[69] = { str = 103, agi = 60, sta = 114, int = 103, spi = 121 },
		[70] = { str = 105, agi = 61, sta = 116, int = 105, spi = 123 }
	},
	WARLOCK = {
		[1] = { str = 23, agi = 17, sta = 23, int = 19, spi = 25 },
		[2] = { str = 23, agi = 17, sta = 24, int = 20, spi = 26 },
		[3] = { str = 24, agi = 18, sta = 24, int = 21, spi = 27 },
		[4] = { str = 24, agi = 18, sta = 25, int = 23, spi = 28 },
		[5] = { str = 24, agi = 18, sta = 25, int = 24, spi = 30 },
		[6] = { str = 24, agi = 19, sta = 26, int = 25, spi = 31 },
		[7] = { str = 25, agi = 19, sta = 26, int = 26, spi = 32 },
		[8] = { str = 25, agi = 20, sta = 27, int = 27, spi = 33 },
		[9] = { str = 25, agi = 20, sta = 27, int = 29, spi = 34 },
		[10] = { str = 26, agi = 20, sta = 28, int = 30, spi = 36 },
		[11] = { str = 26, agi = 21, sta = 29, int = 31, spi = 37 },
		[12] = { str = 26, agi = 21, sta = 29, int = 33, spi = 38 },
		[13] = { str = 27, agi = 22, sta = 30, int = 34, spi = 39 },
		[14] = { str = 27, agi = 22, sta = 31, int = 35, spi = 41 },
		[15] = { str = 27, agi = 23, sta = 31, int = 37, spi = 42 },
		[16] = { str = 28, agi = 23, sta = 32, int = 38, spi = 43 },
		[17] = { str = 28, agi = 23, sta = 32, int = 39, spi = 45 },
		[18] = { str = 28, agi = 24, sta = 33, int = 41, spi = 46 },
		[19] = { str = 29, agi = 24, sta = 34, int = 42, spi = 47 },
		[20] = { str = 29, agi = 25, sta = 34, int = 43, spi = 49 },
		[21] = { str = 29, agi = 25, sta = 35, int = 45, spi = 50 },
		[22] = { str = 30, agi = 26, sta = 36, int = 46, spi = 51 },
		[23] = { str = 30, agi = 26, sta = 37, int = 48, spi = 53 },
		[24] = { str = 30, agi = 27, sta = 37, int = 49, spi = 54 },
		[25] = { str = 31, agi = 27, sta = 38, int = 51, spi = 56 },
		[26] = { str = 31, agi = 28, sta = 39, int = 52, spi = 57 },
		[27] = { str = 32, agi = 28, sta = 39, int = 54, spi = 59 },
		[28] = { str = 32, agi = 29, sta = 40, int = 55, spi = 60 },
		[29] = { str = 32, agi = 29, sta = 41, int = 57, spi = 62 },
		[30] = { str = 33, agi = 30, sta = 42, int = 58, spi = 63 },
		[31] = { str = 33, agi = 30, sta = 42, int = 60, spi = 65 },
		[32] = { str = 34, agi = 31, sta = 43, int = 61, spi = 66 },
		[33] = { str = 34, agi = 31, sta = 44, int = 63, spi = 68 },
		[34] = { str = 35, agi = 32, sta = 45, int = 64, spi = 69 },
		[35] = { str = 35, agi = 32, sta = 45, int = 66, spi = 71 },
		[36] = { str = 36, agi = 33, sta = 46, int = 68, spi = 72 },
		[37] = { str = 36, agi = 34, sta = 47, int = 69, spi = 74 },
		[38] = { str = 36, agi = 34, sta = 48, int = 71, spi = 76 },
		[39] = { str = 37, agi = 35, sta = 49, int = 72, spi = 77 },
		[40] = { str = 37, agi = 35, sta = 50, int = 74, spi = 79 },
		[41] = { str = 38, agi = 36, sta = 50, int = 76, spi = 80 },
		[42] = { str = 38, agi = 36, sta = 51, int = 77, spi = 82 },
		[43] = { str = 39, agi = 37, sta = 52, int = 79, spi = 84 },
		[44] = { str = 39, agi = 38, sta = 53, int = 81, spi = 85 },
		[45] = { str = 40, agi = 38, sta = 54, int = 83, spi = 87 },
		[46] = { str = 40, agi = 39, sta = 55, int = 84, spi = 89 },
		[47] = { str = 41, agi = 39, sta = 56, int = 86, spi = 91 },
		[48] = { str = 41, agi = 40, sta = 56, int = 88, spi = 92 },
		[49] = { str = 42, agi = 41, sta = 57, int = 90, spi = 94 },
		[50] = { str = 42, agi = 41, sta = 58, int = 91, spi = 96 },
		[51] = { str = 43, agi = 42, sta = 59, int = 93, spi = 98 },
		[52] = { str = 43, agi = 43, sta = 60, int = 95, spi = 99 },
		[53] = { str = 44, agi = 43, sta = 61, int = 97, spi = 101 },
		[54] = { str = 45, agi = 44, sta = 62, int = 99, spi = 103 },
		[55] = { str = 45, agi = 45, sta = 63, int = 101, spi = 105 },
		[56] = { str = 46, agi = 45, sta = 64, int = 102, spi = 107 },
		[57] = { str = 46, agi = 46, sta = 65, int = 104, spi = 109 },
		[58] = { str = 47, agi = 47, sta = 66, int = 106, spi = 110 },
		[59] = { str = 47, agi = 47, sta = 67, int = 108, spi = 112 },
		[60] = { str = 48, agi = 48, sta = 68, int = 110, spi = 114 },
		[61] = { str = 48, agi = 49, sta = 69, int = 112, spi = 116 },
		[62] = { str = 49, agi = 49, sta = 70, int = 114, spi = 118 },
		[63] = { str = 50, agi = 50, sta = 71, int = 116, spi = 120 },
		[64] = { str = 50, agi = 51, sta = 72, int = 118, spi = 122 },
		[65] = { str = 51, agi = 51, sta = 73, int = 120, spi = 124 },
		[66] = { str = 52, agi = 52, sta = 74, int = 122, spi = 126 },
		[67] = { str = 52, agi = 53, sta = 75, int = 124, spi = 128 },
		[68] = { str = 53, agi = 54, sta = 76, int = 126, spi = 130 },
		[69] = { str = 53, agi = 54, sta = 77, int = 128, spi = 132 },
		[70] = { str = 54, agi = 55, sta = 78, int = 130, spi = 134 }
	},
},
Dwarf = {
	WARRIOR = {
		[1] = { str = 25, agi = 16, sta = 25, int = 19, spi = 19 },
		[2] = { str = 26, agi = 17, sta = 26, int = 19, spi = 19 },
		[3] = { str = 28, agi = 18, sta = 27, int = 19, spi = 20 },
		[4] = { str = 29, agi = 18, sta = 28, int = 19, spi = 20 },
		[5] = { str = 30, agi = 19, sta = 30, int = 19, spi = 20 },
		[6] = { str = 31, agi = 20, sta = 31, int = 19, spi = 20 },
		[7] = { str = 33, agi = 21, sta = 32, int = 20, spi = 21 },
		[8] = { str = 34, agi = 22, sta = 33, int = 20, spi = 21 },
		[9] = { str = 36, agi = 23, sta = 35, int = 20, spi = 21 },
		[10] = { str = 37, agi = 23, sta = 36, int = 20, spi = 22 },
		[11] = { str = 38, agi = 24, sta = 37, int = 20, spi = 22 },
		[12] = { str = 40, agi = 25, sta = 38, int = 20, spi = 22 },
		[13] = { str = 41, agi = 26, sta = 40, int = 20, spi = 23 },
		[14] = { str = 43, agi = 27, sta = 41, int = 20, spi = 23 },
		[15] = { str = 44, agi = 28, sta = 42, int = 20, spi = 23 },
		[16] = { str = 46, agi = 29, sta = 44, int = 21, spi = 24 },
		[17] = { str = 47, agi = 30, sta = 45, int = 21, spi = 24 },
		[18] = { str = 49, agi = 31, sta = 46, int = 21, spi = 24 },
		[19] = { str = 50, agi = 32, sta = 48, int = 21, spi = 25 },
		[20] = { str = 52, agi = 33, sta = 49, int = 21, spi = 25 },
		[21] = { str = 53, agi = 34, sta = 51, int = 21, spi = 26 },
		[22] = { str = 55, agi = 34, sta = 52, int = 21, spi = 26 },
		[23] = { str = 56, agi = 35, sta = 53, int = 21, spi = 26 },
		[24] = { str = 58, agi = 36, sta = 55, int = 22, spi = 27 },
		[25] = { str = 59, agi = 37, sta = 56, int = 22, spi = 27 },
		[26] = { str = 61, agi = 38, sta = 58, int = 22, spi = 27 },
		[27] = { str = 63, agi = 39, sta = 59, int = 22, spi = 28 },
		[28] = { str = 64, agi = 41, sta = 61, int = 22, spi = 28 },
		[29] = { str = 66, agi = 42, sta = 62, int = 22, spi = 29 },
		[30] = { str = 68, agi = 43, sta = 64, int = 23, spi = 29 },
		[31] = { str = 69, agi = 44, sta = 65, int = 23, spi = 30 },
		[32] = { str = 71, agi = 45, sta = 67, int = 23, spi = 30 },
		[33] = { str = 73, agi = 46, sta = 68, int = 23, spi = 30 },
		[34] = { str = 75, agi = 47, sta = 70, int = 23, spi = 31 },
		[35] = { str = 76, agi = 48, sta = 72, int = 24, spi = 31 },
		[36] = { str = 78, agi = 49, sta = 73, int = 24, spi = 32 },
		[37] = { str = 80, agi = 50, sta = 75, int = 24, spi = 32 },
		[38] = { str = 82, agi = 51, sta = 76, int = 24, spi = 33 },
		[39] = { str = 84, agi = 52, sta = 78, int = 24, spi = 33 },
		[40] = { str = 85, agi = 54, sta = 80, int = 24, spi = 34 },
		[41] = { str = 87, agi = 55, sta = 81, int = 25, spi = 34 },
		[42] = { str = 89, agi = 56, sta = 83, int = 25, spi = 35 },
		[43] = { str = 91, agi = 57, sta = 85, int = 25, spi = 35 },
		[44] = { str = 93, agi = 58, sta = 87, int = 25, spi = 36 },
		[45] = { str = 95, agi = 59, sta = 88, int = 26, spi = 36 },
		[46] = { str = 97, agi = 61, sta = 90, int = 26, spi = 37 },
		[47] = { str = 99, agi = 62, sta = 92, int = 26, spi = 37 },
		[48] = { str = 101, agi = 63, sta = 94, int = 26, spi = 38 },
		[49] = { str = 102, agi = 64, sta = 95, int = 26, spi = 38 },
		[50] = { str = 104, agi = 65, sta = 97, int = 27, spi = 39 },
		[51] = { str = 106, agi = 67, sta = 99, int = 27, spi = 39 },
		[52] = { str = 108, agi = 68, sta = 101, int = 27, spi = 40 },
		[53] = { str = 110, agi = 69, sta = 103, int = 27, spi = 40 },
		[54] = { str = 112, agi = 70, sta = 104, int = 28, spi = 41 },
		[55] = { str = 115, agi = 72, sta = 106, int = 28, spi = 41 },
		[56] = { str = 117, agi = 73, sta = 108, int = 28, spi = 42 },
		[57] = { str = 119, agi = 74, sta = 110, int = 28, spi = 42 },
		[58] = { str = 121, agi = 76, sta = 112, int = 29, spi = 43 },
		[59] = { str = 123, agi = 77, sta = 114, int = 29, spi = 43 },
		[60] = { str = 125, agi = 78, sta = 116, int = 29, spi = 44 },
		[61] = { str = 127, agi = 80, sta = 118, int = 29, spi = 45 },
		[62] = { str = 129, agi = 81, sta = 120, int = 30, spi = 45 },
		[63] = { str = 131, agi = 82, sta = 122, int = 30, spi = 46 },
		[64] = { str = 134, agi = 84, sta = 124, int = 30, spi = 46 },
		[65] = { str = 136, agi = 85, sta = 126, int = 31, spi = 47 },
		[66] = { str = 138, agi = 86, sta = 128, int = 31, spi = 48 },
		[67] = { str = 140, agi = 88, sta = 130, int = 31, spi = 48 },
		[68] = { str = 142, agi = 89, sta = 132, int = 31, spi = 49 },
		[69] = { str = 145, agi = 91, sta = 134, int = 32, spi = 49 },
		[70] = { str = 147, agi = 92, sta = 136, int = 32, spi = 50 }
	},
	PALADIN = {
		[1] = { str = 24, agi = 16, sta = 25, int = 19, spi = 20 },
		[2] = { str = 25, agi = 17, sta = 26, int = 20, spi = 21 },
		[3] = { str = 26, agi = 17, sta = 27, int = 20, spi = 21 },
		[4] = { str = 27, agi = 18, sta = 28, int = 21, spi = 22 },
		[5] = { str = 28, agi = 18, sta = 29, int = 22, spi = 23 },
		[6] = { str = 29, agi = 19, sta = 30, int = 22, spi = 24 },
		[7] = { str = 31, agi = 20, sta = 31, int = 23, spi = 24 },
		[8] = { str = 32, agi = 20, sta = 32, int = 24, spi = 25 },
		[9] = { str = 33, agi = 21, sta = 33, int = 24, spi = 26 },
		[10] = { str = 34, agi = 21, sta = 34, int = 25, spi = 26 },
		[11] = { str = 35, agi = 22, sta = 36, int = 26, spi = 27 },
		[12] = { str = 36, agi = 23, sta = 37, int = 26, spi = 28 },
		[13] = { str = 38, agi = 23, sta = 38, int = 27, spi = 29 },
		[14] = { str = 39, agi = 24, sta = 39, int = 28, spi = 30 },
		[15] = { str = 40, agi = 25, sta = 40, int = 29, spi = 30 },
		[16] = { str = 41, agi = 25, sta = 41, int = 29, spi = 31 },
		[17] = { str = 43, agi = 26, sta = 43, int = 30, spi = 32 },
		[18] = { str = 44, agi = 27, sta = 44, int = 31, spi = 33 },
		[19] = { str = 45, agi = 28, sta = 45, int = 32, spi = 34 },
		[20] = { str = 47, agi = 28, sta = 46, int = 32, spi = 35 },
		[21] = { str = 48, agi = 29, sta = 47, int = 33, spi = 35 },
		[22] = { str = 49, agi = 30, sta = 49, int = 34, spi = 36 },
		[23] = { str = 51, agi = 30, sta = 50, int = 35, spi = 37 },
		[24] = { str = 52, agi = 31, sta = 51, int = 36, spi = 38 },
		[25] = { str = 53, agi = 32, sta = 52, int = 36, spi = 39 },
		[26] = { str = 55, agi = 33, sta = 54, int = 37, spi = 40 },
		[27] = { str = 56, agi = 33, sta = 55, int = 38, spi = 41 },
		[28] = { str = 57, agi = 34, sta = 56, int = 39, spi = 42 },
		[29] = { str = 59, agi = 35, sta = 58, int = 40, spi = 43 },
		[30] = { str = 60, agi = 36, sta = 59, int = 41, spi = 43 },
		[31] = { str = 62, agi = 37, sta = 60, int = 42, spi = 44 },
		[32] = { str = 63, agi = 37, sta = 62, int = 42, spi = 45 },
		[33] = { str = 65, agi = 38, sta = 63, int = 43, spi = 46 },
		[34] = { str = 66, agi = 39, sta = 65, int = 44, spi = 47 },
		[35] = { str = 68, agi = 40, sta = 66, int = 45, spi = 48 },
		[36] = { str = 69, agi = 41, sta = 67, int = 46, spi = 49 },
		[37] = { str = 71, agi = 41, sta = 69, int = 47, spi = 50 },
		[38] = { str = 72, agi = 42, sta = 70, int = 48, spi = 51 },
		[39] = { str = 74, agi = 43, sta = 72, int = 49, spi = 52 },
		[40] = { str = 75, agi = 44, sta = 73, int = 50, spi = 53 },
		[41] = { str = 77, agi = 45, sta = 75, int = 51, spi = 54 },
		[42] = { str = 78, agi = 46, sta = 76, int = 52, spi = 55 },
		[43] = { str = 80, agi = 47, sta = 78, int = 53, spi = 56 },
		[44] = { str = 82, agi = 47, sta = 79, int = 54, spi = 57 },
		[45] = { str = 83, agi = 48, sta = 81, int = 55, spi = 59 },
		[46] = { str = 85, agi = 49, sta = 82, int = 56, spi = 60 },
		[47] = { str = 87, agi = 50, sta = 84, int = 57, spi = 61 },
		[48] = { str = 88, agi = 51, sta = 85, int = 58, spi = 62 },
		[49] = { str = 90, agi = 52, sta = 87, int = 59, spi = 63 },
		[50] = { str = 92, agi = 53, sta = 89, int = 60, spi = 64 },
		[51] = { str = 93, agi = 54, sta = 90, int = 61, spi = 65 },
		[52] = { str = 95, agi = 55, sta = 92, int = 62, spi = 66 },
		[53] = { str = 97, agi = 56, sta = 93, int = 63, spi = 67 },
		[54] = { str = 98, agi = 57, sta = 95, int = 64, spi = 69 },
		[55] = { str = 100, agi = 58, sta = 97, int = 65, spi = 70 },
		[56] = { str = 102, agi = 59, sta = 98, int = 66, spi = 71 },
		[57] = { str = 104, agi = 60, sta = 100, int = 67, spi = 72 },
		[58] = { str = 106, agi = 61, sta = 102, int = 68, spi = 73 },
		[59] = { str = 107, agi = 62, sta = 103, int = 69, spi = 74 },
		[60] = { str = 109, agi = 63, sta = 105, int = 70, spi = 76 },
		[61] = { str = 111, agi = 64, sta = 107, int = 72, spi = 77 },
		[62] = { str = 113, agi = 65, sta = 109, int = 73, spi = 78 },
		[63] = { str = 115, agi = 66, sta = 110, int = 74, spi = 79 },
		[64] = { str = 117, agi = 67, sta = 112, int = 75, spi = 80 },
		[65] = { str = 118, agi = 68, sta = 114, int = 76, spi = 82 },
		[66] = { str = 120, agi = 69, sta = 116, int = 77, spi = 83 },
		[67] = { str = 122, agi = 70, sta = 118, int = 78, spi = 84 },
		[68] = { str = 124, agi = 71, sta = 119, int = 80, spi = 85 },
		[69] = { str = 126, agi = 72, sta = 121, int = 81, spi = 87 },
		[70] = { str = 128, agi = 73, sta = 123, int = 82, spi = 88 }
	},
	HUNTER = {
		[1] = { str = 22, agi = 19, sta = 24, int = 19, spi = 20 },
		[2] = { str = 22, agi = 20, sta = 25, int = 20, spi = 21 },
		[3] = { str = 23, agi = 22, sta = 26, int = 20, spi = 21 },
		[4] = { str = 23, agi = 23, sta = 27, int = 21, spi = 22 },
		[5] = { str = 24, agi = 25, sta = 28, int = 21, spi = 23 },
		[6] = { str = 24, agi = 26, sta = 29, int = 22, spi = 23 },
		[7] = { str = 25, agi = 27, sta = 29, int = 23, spi = 24 },
		[8] = { str = 25, agi = 29, sta = 30, int = 23, spi = 25 },
		[9] = { str = 25, agi = 30, sta = 31, int = 24, spi = 25 },
		[10] = { str = 26, agi = 32, sta = 32, int = 24, spi = 26 },
		[11] = { str = 26, agi = 33, sta = 33, int = 25, spi = 27 },
		[12] = { str = 27, agi = 35, sta = 34, int = 26, spi = 27 },
		[13] = { str = 27, agi = 36, sta = 35, int = 26, spi = 28 },
		[14] = { str = 28, agi = 38, sta = 36, int = 27, spi = 29 },
		[15] = { str = 28, agi = 39, sta = 37, int = 28, spi = 29 },
		[16] = { str = 29, agi = 41, sta = 38, int = 28, spi = 30 },
		[17] = { str = 29, agi = 42, sta = 39, int = 29, spi = 31 },
		[18] = { str = 30, agi = 44, sta = 41, int = 30, spi = 32 },
		[19] = { str = 30, agi = 46, sta = 42, int = 30, spi = 32 },
		[20] = { str = 31, agi = 47, sta = 43, int = 31, spi = 33 },
		[21] = { str = 32, agi = 49, sta = 44, int = 32, spi = 34 },
		[22] = { str = 32, agi = 51, sta = 45, int = 33, spi = 35 },
		[23] = { str = 33, agi = 52, sta = 46, int = 33, spi = 36 },
		[24] = { str = 33, agi = 54, sta = 47, int = 34, spi = 36 },
		[25] = { str = 34, agi = 56, sta = 48, int = 35, spi = 37 },
		[26] = { str = 34, agi = 57, sta = 49, int = 35, spi = 38 },
		[27] = { str = 35, agi = 59, sta = 51, int = 36, spi = 39 },
		[28] = { str = 35, agi = 61, sta = 52, int = 37, spi = 40 },
		[29] = { str = 36, agi = 63, sta = 53, int = 38, spi = 40 },
		[30] = { str = 37, agi = 64, sta = 54, int = 39, spi = 41 },
		[31] = { str = 37, agi = 66, sta = 55, int = 39, spi = 42 },
		[32] = { str = 38, agi = 68, sta = 57, int = 40, spi = 43 },
		[33] = { str = 38, agi = 70, sta = 58, int = 41, spi = 44 },
		[34] = { str = 39, agi = 71, sta = 59, int = 42, spi = 45 },
		[35] = { str = 40, agi = 73, sta = 60, int = 43, spi = 46 },
		[36] = { str = 40, agi = 75, sta = 62, int = 43, spi = 47 },
		[37] = { str = 41, agi = 77, sta = 63, int = 44, spi = 47 },
		[38] = { str = 42, agi = 79, sta = 64, int = 45, spi = 48 },
		[39] = { str = 42, agi = 81, sta = 65, int = 46, spi = 49 },
		[40] = { str = 43, agi = 83, sta = 67, int = 47, spi = 50 },
		[41] = { str = 44, agi = 85, sta = 68, int = 48, spi = 51 },
		[42] = { str = 44, agi = 87, sta = 69, int = 49, spi = 52 },
		[43] = { str = 45, agi = 89, sta = 71, int = 49, spi = 53 },
		[44] = { str = 46, agi = 91, sta = 72, int = 50, spi = 54 },
		[45] = { str = 46, agi = 93, sta = 73, int = 51, spi = 55 },
		[46] = { str = 47, agi = 95, sta = 75, int = 52, spi = 56 },
		[47] = { str = 48, agi = 97, sta = 76, int = 53, spi = 57 },
		[48] = { str = 49, agi = 99, sta = 78, int = 54, spi = 58 },
		[49] = { str = 49, agi = 101, sta = 79, int = 55, spi = 59 },
		[50] = { str = 50, agi = 103, sta = 80, int = 56, spi = 60 },
		[51] = { str = 51, agi = 105, sta = 82, int = 57, spi = 61 },
		[52] = { str = 51, agi = 107, sta = 83, int = 58, spi = 62 },
		[53] = { str = 52, agi = 109, sta = 85, int = 59, spi = 63 },
		[54] = { str = 53, agi = 111, sta = 86, int = 60, spi = 64 },
		[55] = { str = 54, agi = 113, sta = 88, int = 61, spi = 65 },
		[56] = { str = 55, agi = 115, sta = 89, int = 62, spi = 66 },
		[57] = { str = 55, agi = 118, sta = 91, int = 62, spi = 67 },
		[58] = { str = 56, agi = 120, sta = 92, int = 63, spi = 68 },
		[59] = { str = 57, agi = 122, sta = 94, int = 64, spi = 70 },
		[60] = { str = 58, agi = 124, sta = 95, int = 65, spi = 71 },
		[61] = { str = 58, agi = 126, sta = 97, int = 67, spi = 72 },
		[62] = { str = 59, agi = 129, sta = 98, int = 68, spi = 73 },
		[63] = { str = 60, agi = 131, sta = 100, int = 69, spi = 74 },
		[64] = { str = 61, agi = 133, sta = 101, int = 70, spi = 75 },
		[65] = { str = 62, agi = 135, sta = 103, int = 71, spi = 76 },
		[66] = { str = 63, agi = 138, sta = 105, int = 72, spi = 77 },
		[67] = { str = 63, agi = 140, sta = 106, int = 73, spi = 78 },
		[68] = { str = 64, agi = 142, sta = 108, int = 74, spi = 80 },
		[69] = { str = 65, agi = 145, sta = 109, int = 75, spi = 81 },
		[70] = { str = 66, agi = 147, sta = 111, int = 76, spi = 82 }
	},
	ROGUE = {
		[1] = { str = 23, agi = 19, sta = 24, int = 19, spi = 19 },
		[2] = { str = 24, agi = 20, sta = 25, int = 19, spi = 19 },
		[3] = { str = 24, agi = 22, sta = 25, int = 19, spi = 20 },
		[4] = { str = 25, agi = 23, sta = 26, int = 19, spi = 20 },
		[5] = { str = 26, agi = 25, sta = 27, int = 20, spi = 20 },
		[6] = { str = 27, agi = 26, sta = 27, int = 20, spi = 21 },
		[7] = { str = 28, agi = 28, sta = 28, int = 20, spi = 21 },
		[8] = { str = 28, agi = 29, sta = 29, int = 20, spi = 22 },
		[9] = { str = 29, agi = 31, sta = 30, int = 20, spi = 22 },
		[10] = { str = 30, agi = 32, sta = 30, int = 20, spi = 22 },
		[11] = { str = 31, agi = 34, sta = 31, int = 21, spi = 23 },
		[12] = { str = 32, agi = 36, sta = 32, int = 21, spi = 23 },
		[13] = { str = 33, agi = 37, sta = 33, int = 21, spi = 24 },
		[14] = { str = 33, agi = 39, sta = 33, int = 21, spi = 24 },
		[15] = { str = 34, agi = 40, sta = 34, int = 21, spi = 25 },
		[16] = { str = 35, agi = 42, sta = 35, int = 22, spi = 25 },
		[17] = { str = 36, agi = 44, sta = 36, int = 22, spi = 25 },
		[18] = { str = 37, agi = 45, sta = 37, int = 22, spi = 26 },
		[19] = { str = 38, agi = 47, sta = 38, int = 22, spi = 26 },
		[20] = { str = 39, agi = 49, sta = 38, int = 22, spi = 27 },
		[21] = { str = 40, agi = 51, sta = 39, int = 23, spi = 27 },
		[22] = { str = 41, agi = 52, sta = 40, int = 23, spi = 28 },
		[23] = { str = 42, agi = 54, sta = 41, int = 23, spi = 28 },
		[24] = { str = 43, agi = 56, sta = 42, int = 23, spi = 29 },
		[25] = { str = 44, agi = 58, sta = 43, int = 24, spi = 29 },
		[26] = { str = 44, agi = 59, sta = 44, int = 24, spi = 30 },
		[27] = { str = 45, agi = 61, sta = 44, int = 24, spi = 30 },
		[28] = { str = 46, agi = 63, sta = 45, int = 24, spi = 31 },
		[29] = { str = 47, agi = 65, sta = 46, int = 25, spi = 31 },
		[30] = { str = 48, agi = 67, sta = 47, int = 25, spi = 32 },
		[31] = { str = 49, agi = 69, sta = 48, int = 25, spi = 32 },
		[32] = { str = 51, agi = 71, sta = 49, int = 25, spi = 33 },
		[33] = { str = 52, agi = 72, sta = 50, int = 26, spi = 33 },
		[34] = { str = 53, agi = 74, sta = 51, int = 26, spi = 34 },
		[35] = { str = 54, agi = 76, sta = 52, int = 26, spi = 34 },
		[36] = { str = 55, agi = 78, sta = 53, int = 26, spi = 35 },
		[37] = { str = 56, agi = 80, sta = 54, int = 27, spi = 35 },
		[38] = { str = 57, agi = 82, sta = 55, int = 27, spi = 36 },
		[39] = { str = 58, agi = 84, sta = 56, int = 27, spi = 37 },
		[40] = { str = 59, agi = 86, sta = 57, int = 28, spi = 37 },
		[41] = { str = 60, agi = 88, sta = 58, int = 28, spi = 38 },
		[42] = { str = 61, agi = 90, sta = 59, int = 28, spi = 38 },
		[43] = { str = 63, agi = 92, sta = 60, int = 28, spi = 39 },
		[44] = { str = 64, agi = 95, sta = 61, int = 29, spi = 39 },
		[45] = { str = 65, agi = 97, sta = 62, int = 29, spi = 40 },
		[46] = { str = 66, agi = 99, sta = 63, int = 29, spi = 41 },
		[47] = { str = 67, agi = 101, sta = 64, int = 30, spi = 41 },
		[48] = { str = 68, agi = 103, sta = 66, int = 30, spi = 42 },
		[49] = { str = 70, agi = 105, sta = 67, int = 30, spi = 43 },
		[50] = { str = 71, agi = 107, sta = 68, int = 31, spi = 43 },
		[51] = { str = 72, agi = 110, sta = 69, int = 31, spi = 44 },
		[52] = { str = 73, agi = 112, sta = 70, int = 31, spi = 44 },
		[53] = { str = 74, agi = 114, sta = 71, int = 32, spi = 45 },
		[54] = { str = 76, agi = 116, sta = 72, int = 32, spi = 46 },
		[55] = { str = 77, agi = 118, sta = 73, int = 32, spi = 46 },
		[56] = { str = 78, agi = 121, sta = 75, int = 33, spi = 47 },
		[57] = { str = 80, agi = 123, sta = 76, int = 33, spi = 48 },
		[58] = { str = 81, agi = 125, sta = 77, int = 33, spi = 48 },
		[59] = { str = 82, agi = 128, sta = 78, int = 34, spi = 49 },
		[60] = { str = 83, agi = 130, sta = 79, int = 34, spi = 50 },
		[61] = { str = 85, agi = 132, sta = 81, int = 34, spi = 51 },
		[62] = { str = 86, agi = 135, sta = 82, int = 35, spi = 51 },
		[63] = { str = 87, agi = 137, sta = 83, int = 35, spi = 52 },
		[64] = { str = 89, agi = 139, sta = 84, int = 36, spi = 53 },
		[65] = { str = 90, agi = 142, sta = 86, int = 36, spi = 53 },
		[66] = { str = 91, agi = 144, sta = 87, int = 36, spi = 54 },
		[67] = { str = 93, agi = 147, sta = 88, int = 37, spi = 55 },
		[68] = { str = 94, agi = 149, sta = 89, int = 37, spi = 56 },
		[69] = { str = 96, agi = 152, sta = 91, int = 38, spi = 56 },
		[70] = { str = 97, agi = 154, sta = 92, int = 38, spi = 57 }
	},
	PRIEST = {
		[1] = { str = 22, agi = 16, sta = 23, int = 21, spi = 22 },
		[2] = { str = 22, agi = 16, sta = 23, int = 22, spi = 23 },
		[3] = { str = 22, agi = 16, sta = 24, int = 24, spi = 25 },
		[4] = { str = 22, agi = 17, sta = 24, int = 25, spi = 26 },
		[5] = { str = 23, agi = 17, sta = 24, int = 26, spi = 27 },
		[6] = { str = 23, agi = 17, sta = 25, int = 28, spi = 29 },
		[7] = { str = 23, agi = 17, sta = 25, int = 29, spi = 30 },
		[8] = { str = 23, agi = 18, sta = 26, int = 30, spi = 32 },
		[9] = { str = 23, agi = 18, sta = 26, int = 32, spi = 33 },
		[10] = { str = 23, agi = 18, sta = 26, int = 33, spi = 35 },
		[11] = { str = 24, agi = 18, sta = 27, int = 35, spi = 36 },
		[12] = { str = 24, agi = 19, sta = 27, int = 36, spi = 38 },
		[13] = { str = 24, agi = 19, sta = 28, int = 37, spi = 39 },
		[14] = { str = 24, agi = 19, sta = 28, int = 39, spi = 41 },
		[15] = { str = 24, agi = 19, sta = 28, int = 40, spi = 42 },
		[16] = { str = 24, agi = 20, sta = 29, int = 42, spi = 44 },
		[17] = { str = 25, agi = 20, sta = 29, int = 43, spi = 45 },
		[18] = { str = 25, agi = 20, sta = 30, int = 45, spi = 47 },
		[19] = { str = 25, agi = 21, sta = 30, int = 46, spi = 49 },
		[20] = { str = 25, agi = 21, sta = 31, int = 48, spi = 50 },
		[21] = { str = 25, agi = 21, sta = 31, int = 50, spi = 52 },
		[22] = { str = 26, agi = 22, sta = 31, int = 51, spi = 53 },
		[23] = { str = 26, agi = 22, sta = 32, int = 53, spi = 55 },
		[24] = { str = 26, agi = 22, sta = 32, int = 54, spi = 57 },
		[25] = { str = 26, agi = 22, sta = 33, int = 56, spi = 58 },
		[26] = { str = 27, agi = 23, sta = 33, int = 58, spi = 60 },
		[27] = { str = 27, agi = 23, sta = 34, int = 59, spi = 62 },
		[28] = { str = 27, agi = 23, sta = 34, int = 61, spi = 64 },
		[29] = { str = 27, agi = 24, sta = 35, int = 63, spi = 65 },
		[30] = { str = 28, agi = 24, sta = 35, int = 64, spi = 67 },
		[31] = { str = 28, agi = 24, sta = 36, int = 66, spi = 69 },
		[32] = { str = 28, agi = 25, sta = 36, int = 68, spi = 71 },
		[33] = { str = 28, agi = 25, sta = 37, int = 70, spi = 72 },
		[34] = { str = 29, agi = 26, sta = 38, int = 71, spi = 74 },
		[35] = { str = 29, agi = 26, sta = 38, int = 73, spi = 76 },
		[36] = { str = 29, agi = 26, sta = 39, int = 75, spi = 78 },
		[37] = { str = 29, agi = 27, sta = 39, int = 77, spi = 80 },
		[38] = { str = 30, agi = 27, sta = 40, int = 78, spi = 82 },
		[39] = { str = 30, agi = 27, sta = 40, int = 80, spi = 84 },
		[40] = { str = 30, agi = 28, sta = 41, int = 82, spi = 86 },
		[41] = { str = 31, agi = 28, sta = 41, int = 84, spi = 88 },
		[42] = { str = 31, agi = 29, sta = 42, int = 86, spi = 89 },
		[43] = { str = 31, agi = 29, sta = 43, int = 88, spi = 91 },
		[44] = { str = 32, agi = 29, sta = 43, int = 90, spi = 93 },
		[45] = { str = 32, agi = 30, sta = 44, int = 92, spi = 95 },
		[46] = { str = 32, agi = 30, sta = 44, int = 93, spi = 97 },
		[47] = { str = 32, agi = 30, sta = 45, int = 95, spi = 99 },
		[48] = { str = 33, agi = 31, sta = 46, int = 97, spi = 101 },
		[49] = { str = 33, agi = 31, sta = 46, int = 99, spi = 103 },
		[50] = { str = 33, agi = 32, sta = 47, int = 101, spi = 106 },
		[51] = { str = 34, agi = 32, sta = 48, int = 103, spi = 108 },
		[52] = { str = 34, agi = 33, sta = 48, int = 105, spi = 110 },
		[53] = { str = 35, agi = 33, sta = 49, int = 107, spi = 112 },
		[54] = { str = 35, agi = 33, sta = 50, int = 109, spi = 114 },
		[55] = { str = 35, agi = 34, sta = 50, int = 111, spi = 116 },
		[56] = { str = 36, agi = 34, sta = 51, int = 113, spi = 118 },
		[57] = { str = 36, agi = 35, sta = 52, int = 116, spi = 120 },
		[58] = { str = 36, agi = 35, sta = 52, int = 118, spi = 123 },
		[59] = { str = 37, agi = 36, sta = 53, int = 120, spi = 125 },
		[60] = { str = 37, agi = 36, sta = 54, int = 122, spi = 127 },
		[61] = { str = 37, agi = 37, sta = 54, int = 124, spi = 129 },
		[62] = { str = 38, agi = 37, sta = 55, int = 126, spi = 131 },
		[63] = { str = 38, agi = 38, sta = 56, int = 128, spi = 134 },
		[64] = { str = 39, agi = 38, sta = 57, int = 131, spi = 136 },
		[65] = { str = 39, agi = 39, sta = 57, int = 133, spi = 138 },
		[66] = { str = 39, agi = 39, sta = 58, int = 135, spi = 141 },
		[67] = { str = 40, agi = 40, sta = 59, int = 137, spi = 143 },
		[68] = { str = 40, agi = 40, sta = 59, int = 139, spi = 145 },
		[69] = { str = 41, agi = 40, sta = 60, int = 142, spi = 148 },
		[70] = { str = 41, agi = 41, sta = 61, int = 144, spi = 150 }
	},
},
NightElf = {
	WARRIOR = {
		[1] = { str = 20, agi = 25, sta = 21, int = 20, spi = 20 },
		[2] = { str = 21, agi = 26, sta = 22, int = 20, spi = 20 },
		[3] = { str = 23, agi = 27, sta = 23, int = 20, spi = 21 },
		[4] = { str = 24, agi = 27, sta = 25, int = 20, spi = 21 },
		[5] = { str = 25, agi = 28, sta = 26, int = 20, spi = 21 },
		[6] = { str = 27, agi = 29, sta = 27, int = 20, spi = 21 },
		[7] = { str = 28, agi = 30, sta = 28, int = 21, spi = 22 },
		[8] = { str = 29, agi = 31, sta = 29, int = 21, spi = 22 },
		[9] = { str = 31, agi = 31, sta = 31, int = 21, spi = 22 },
		[10] = { str = 32, agi = 32, sta = 32, int = 21, spi = 23 },
		[11] = { str = 33, agi = 33, sta = 33, int = 21, spi = 23 },
		[12] = { str = 35, agi = 34, sta = 34, int = 21, spi = 23 },
		[13] = { str = 36, agi = 35, sta = 36, int = 21, spi = 24 },
		[14] = { str = 38, agi = 36, sta = 37, int = 21, spi = 24 },
		[15] = { str = 39, agi = 37, sta = 38, int = 21, spi = 24 },
		[16] = { str = 41, agi = 37, sta = 40, int = 21, spi = 25 },
		[17] = { str = 42, agi = 38, sta = 41, int = 22, spi = 25 },
		[18] = { str = 44, agi = 39, sta = 43, int = 22, spi = 25 },
		[19] = { str = 45, agi = 40, sta = 44, int = 22, spi = 26 },
		[20] = { str = 47, agi = 41, sta = 45, int = 22, spi = 26 },
		[21] = { str = 48, agi = 42, sta = 47, int = 22, spi = 26 },
		[22] = { str = 50, agi = 43, sta = 48, int = 22, spi = 27 },
		[23] = { str = 52, agi = 44, sta = 50, int = 22, spi = 27 },
		[24] = { str = 53, agi = 45, sta = 51, int = 23, spi = 28 },
		[25] = { str = 55, agi = 46, sta = 52, int = 23, spi = 28 },
		[26] = { str = 56, agi = 47, sta = 54, int = 23, spi = 28 },
		[27] = { str = 58, agi = 48, sta = 55, int = 23, spi = 29 },
		[28] = { str = 60, agi = 49, sta = 57, int = 23, spi = 29 },
		[29] = { str = 61, agi = 50, sta = 58, int = 23, spi = 30 },
		[30] = { str = 63, agi = 51, sta = 60, int = 24, spi = 30 },
		[31] = { str = 65, agi = 52, sta = 62, int = 24, spi = 30 },
		[32] = { str = 66, agi = 53, sta = 63, int = 24, spi = 31 },
		[33] = { str = 68, agi = 54, sta = 65, int = 24, spi = 31 },
		[34] = { str = 70, agi = 55, sta = 66, int = 24, spi = 32 },
		[35] = { str = 72, agi = 56, sta = 68, int = 24, spi = 32 },
		[36] = { str = 73, agi = 58, sta = 69, int = 25, spi = 33 },
		[37] = { str = 75, agi = 59, sta = 71, int = 25, spi = 33 },
		[38] = { str = 77, agi = 60, sta = 73, int = 25, spi = 34 },
		[39] = { str = 79, agi = 61, sta = 74, int = 25, spi = 34 },
		[40] = { str = 81, agi = 62, sta = 76, int = 25, spi = 35 },
		[41] = { str = 82, agi = 63, sta = 78, int = 26, spi = 35 },
		[42] = { str = 84, agi = 64, sta = 79, int = 26, spi = 35 },
		[43] = { str = 86, agi = 66, sta = 81, int = 26, spi = 36 },
		[44] = { str = 88, agi = 67, sta = 83, int = 26, spi = 36 },
		[45] = { str = 90, agi = 68, sta = 85, int = 26, spi = 37 },
		[46] = { str = 92, agi = 69, sta = 86, int = 27, spi = 37 },
		[47] = { str = 94, agi = 70, sta = 88, int = 27, spi = 38 },
		[48] = { str = 96, agi = 72, sta = 90, int = 27, spi = 38 },
		[49] = { str = 98, agi = 73, sta = 92, int = 27, spi = 39 },
		[50] = { str = 100, agi = 74, sta = 93, int = 28, spi = 40 },
		[51] = { str = 102, agi = 75, sta = 95, int = 28, spi = 40 },
		[52] = { str = 104, agi = 77, sta = 97, int = 28, spi = 41 },
		[53] = { str = 106, agi = 78, sta = 99, int = 28, spi = 41 },
		[54] = { str = 108, agi = 79, sta = 101, int = 29, spi = 42 },
		[55] = { str = 110, agi = 80, sta = 103, int = 29, spi = 42 },
		[56] = { str = 112, agi = 82, sta = 104, int = 29, spi = 43 },
		[57] = { str = 114, agi = 83, sta = 106, int = 29, spi = 43 },
		[58] = { str = 116, agi = 84, sta = 108, int = 30, spi = 44 },
		[59] = { str = 118, agi = 86, sta = 110, int = 30, spi = 44 },
		[60] = { str = 120, agi = 87, sta = 112, int = 30, spi = 45 },
		[61] = { str = 122, agi = 88, sta = 114, int = 30, spi = 46 },
		[62] = { str = 124, agi = 90, sta = 116, int = 31, spi = 46 },
		[63] = { str = 127, agi = 91, sta = 118, int = 31, spi = 47 },
		[64] = { str = 129, agi = 92, sta = 120, int = 31, spi = 47 },
		[65] = { str = 131, agi = 94, sta = 122, int = 32, spi = 48 },
		[66] = { str = 133, agi = 95, sta = 124, int = 32, spi = 49 },
		[67] = { str = 135, agi = 97, sta = 126, int = 32, spi = 49 },
		[68] = { str = 138, agi = 98, sta = 128, int = 32, spi = 50 },
		[69] = { str = 140, agi = 100, sta = 130, int = 33, spi = 50 },
		[70] = { str = 142, agi = 101, sta = 132, int = 33, spi = 51 }
	},
	HUNTER = {
		[1] = { str = 17, agi = 28, sta = 20, int = 20, spi = 21 },
		[2] = { str = 17, agi = 29, sta = 21, int = 21, spi = 22 },
		[3] = { str = 18, agi = 31, sta = 22, int = 21, spi = 22 },
		[4] = { str = 18, agi = 32, sta = 23, int = 22, spi = 23 },
		[5] = { str = 19, agi = 33, sta = 24, int = 22, spi = 24 },
		[6] = { str = 19, agi = 35, sta = 25, int = 23, spi = 24 },
		[7] = { str = 20, agi = 36, sta = 26, int = 24, spi = 25 },
		[8] = { str = 20, agi = 38, sta = 27, int = 24, spi = 25 },
		[9] = { str = 21, agi = 39, sta = 27, int = 25, spi = 26 },
		[10] = { str = 21, agi = 40, sta = 28, int = 25, spi = 27 },
		[11] = { str = 22, agi = 42, sta = 29, int = 26, spi = 28 },
		[12] = { str = 22, agi = 43, sta = 30, int = 27, spi = 28 },
		[13] = { str = 23, agi = 45, sta = 31, int = 27, spi = 29 },
		[14] = { str = 23, agi = 46, sta = 32, int = 28, spi = 30 },
		[15] = { str = 24, agi = 48, sta = 34, int = 29, spi = 30 },
		[16] = { str = 24, agi = 50, sta = 35, int = 29, spi = 31 },
		[17] = { str = 25, agi = 51, sta = 36, int = 30, spi = 32 },
		[18] = { str = 25, agi = 53, sta = 37, int = 31, spi = 33 },
		[19] = { str = 26, agi = 54, sta = 38, int = 31, spi = 33 },
		[20] = { str = 26, agi = 56, sta = 39, int = 32, spi = 34 },
		[21] = { str = 27, agi = 57, sta = 40, int = 33, spi = 35 },
		[22] = { str = 27, agi = 59, sta = 41, int = 33, spi = 36 },
		[23] = { str = 28, agi = 61, sta = 42, int = 34, spi = 36 },
		[24] = { str = 28, agi = 62, sta = 43, int = 35, spi = 37 },
		[25] = { str = 29, agi = 64, sta = 44, int = 36, spi = 38 },
		[26] = { str = 30, agi = 66, sta = 46, int = 36, spi = 39 },
		[27] = { str = 30, agi = 68, sta = 47, int = 37, spi = 40 },
		[28] = { str = 31, agi = 69, sta = 48, int = 38, spi = 41 },
		[29] = { str = 31, agi = 71, sta = 49, int = 39, spi = 41 },
		[30] = { str = 32, agi = 73, sta = 50, int = 39, spi = 42 },
		[31] = { str = 33, agi = 75, sta = 52, int = 40, spi = 43 },
		[32] = { str = 33, agi = 76, sta = 53, int = 41, spi = 44 },
		[33] = { str = 34, agi = 78, sta = 54, int = 42, spi = 45 },
		[34] = { str = 34, agi = 80, sta = 55, int = 43, spi = 46 },
		[35] = { str = 35, agi = 82, sta = 57, int = 44, spi = 47 },
		[36] = { str = 36, agi = 84, sta = 58, int = 44, spi = 48 },
		[37] = { str = 36, agi = 86, sta = 59, int = 45, spi = 48 },
		[38] = { str = 37, agi = 87, sta = 60, int = 46, spi = 49 },
		[39] = { str = 38, agi = 89, sta = 62, int = 47, spi = 50 },
		[40] = { str = 38, agi = 91, sta = 63, int = 48, spi = 51 },
		[41] = { str = 39, agi = 93, sta = 64, int = 49, spi = 52 },
		[42] = { str = 40, agi = 95, sta = 66, int = 49, spi = 53 },
		[43] = { str = 40, agi = 97, sta = 67, int = 50, spi = 54 },
		[44] = { str = 41, agi = 99, sta = 68, int = 51, spi = 55 },
		[45] = { str = 42, agi = 101, sta = 70, int = 52, spi = 56 },
		[46] = { str = 42, agi = 103, sta = 71, int = 53, spi = 57 },
		[47] = { str = 43, agi = 105, sta = 72, int = 54, spi = 58 },
		[48] = { str = 44, agi = 107, sta = 74, int = 55, spi = 59 },
		[49] = { str = 45, agi = 109, sta = 75, int = 56, spi = 60 },
		[50] = { str = 45, agi = 111, sta = 77, int = 57, spi = 61 },
		[51] = { str = 46, agi = 113, sta = 78, int = 58, spi = 62 },
		[52] = { str = 47, agi = 115, sta = 79, int = 59, spi = 63 },
		[53] = { str = 47, agi = 118, sta = 81, int = 60, spi = 64 },
		[54] = { str = 48, agi = 120, sta = 82, int = 61, spi = 65 },
		[55] = { str = 49, agi = 122, sta = 84, int = 61, spi = 66 },
		[56] = { str = 50, agi = 124, sta = 85, int = 62, spi = 67 },
		[57] = { str = 50, agi = 126, sta = 87, int = 63, spi = 68 },
		[58] = { str = 51, agi = 128, sta = 88, int = 64, spi = 69 },
		[59] = { str = 52, agi = 131, sta = 90, int = 65, spi = 70 },
		[60] = { str = 53, agi = 133, sta = 91, int = 66, spi = 72 },
		[61] = { str = 54, agi = 135, sta = 93, int = 67, spi = 73 },
		[62] = { str = 54, agi = 137, sta = 94, int = 69, spi = 74 },
		[63] = { str = 55, agi = 140, sta = 96, int = 70, spi = 75 },
		[64] = { str = 56, agi = 142, sta = 97, int = 71, spi = 76 },
		[65] = { str = 57, agi = 144, sta = 99, int = 72, spi = 77 },
		[66] = { str = 58, agi = 147, sta = 101, int = 73, spi = 78 },
		[67] = { str = 58, agi = 149, sta = 102, int = 74, spi = 79 },
		[68] = { str = 59, agi = 151, sta = 104, int = 75, spi = 81 },
		[69] = { str = 60, agi = 154, sta = 105, int = 76, spi = 82 },
		[70] = { str = 61, agi = 156, sta = 107, int = 77, spi = 83 }
	},
	ROGUE = {
		[1] = { str = 18, agi = 28, sta = 20, int = 20, spi = 20 },
		[2] = { str = 19, agi = 29, sta = 21, int = 20, spi = 20 },
		[3] = { str = 20, agi = 31, sta = 21, int = 20, spi = 21 },
		[4] = { str = 20, agi = 32, sta = 22, int = 20, spi = 21 },
		[5] = { str = 21, agi = 34, sta = 23, int = 21, spi = 21 },
		[6] = { str = 22, agi = 35, sta = 24, int = 21, spi = 22 },
		[7] = { str = 23, agi = 37, sta = 24, int = 21, spi = 22 },
		[8] = { str = 24, agi = 38, sta = 25, int = 21, spi = 23 },
		[9] = { str = 24, agi = 40, sta = 26, int = 21, spi = 23 },
		[10] = { str = 25, agi = 41, sta = 26, int = 21, spi = 23 },
		[11] = { str = 26, agi = 43, sta = 27, int = 22, spi = 24 },
		[12] = { str = 27, agi = 44, sta = 28, int = 22, spi = 24 },
		[13] = { str = 28, agi = 46, sta = 29, int = 22, spi = 25 },
		[14] = { str = 29, agi = 48, sta = 30, int = 22, spi = 25 },
		[15] = { str = 29, agi = 49, sta = 30, int = 22, spi = 25 },
		[16] = { str = 30, agi = 51, sta = 31, int = 23, spi = 26 },
		[17] = { str = 31, agi = 52, sta = 32, int = 23, spi = 26 },
		[18] = { str = 32, agi = 54, sta = 33, int = 23, spi = 27 },
		[19] = { str = 33, agi = 56, sta = 34, int = 23, spi = 27 },
		[20] = { str = 34, agi = 57, sta = 35, int = 23, spi = 28 },
		[21] = { str = 35, agi = 59, sta = 35, int = 24, spi = 28 },
		[22] = { str = 36, agi = 61, sta = 36, int = 24, spi = 29 },
		[23] = { str = 37, agi = 63, sta = 37, int = 24, spi = 29 },
		[24] = { str = 38, agi = 64, sta = 38, int = 24, spi = 30 },
		[25] = { str = 39, agi = 66, sta = 39, int = 25, spi = 30 },
		[26] = { str = 40, agi = 68, sta = 40, int = 25, spi = 31 },
		[27] = { str = 41, agi = 70, sta = 41, int = 25, spi = 31 },
		[28] = { str = 42, agi = 72, sta = 42, int = 25, spi = 32 },
		[29] = { str = 43, agi = 73, sta = 43, int = 25, spi = 32 },
		[30] = { str = 44, agi = 75, sta = 43, int = 26, spi = 33 },
		[31] = { str = 45, agi = 77, sta = 44, int = 26, spi = 33 },
		[32] = { str = 46, agi = 79, sta = 45, int = 26, spi = 34 },
		[33] = { str = 47, agi = 81, sta = 46, int = 27, spi = 34 },
		[34] = { str = 48, agi = 83, sta = 47, int = 27, spi = 35 },
		[35] = { str = 49, agi = 85, sta = 48, int = 27, spi = 35 },
		[36] = { str = 50, agi = 87, sta = 49, int = 27, spi = 36 },
		[37] = { str = 51, agi = 89, sta = 50, int = 28, spi = 36 },
		[38] = { str = 52, agi = 91, sta = 51, int = 28, spi = 37 },
		[39] = { str = 53, agi = 93, sta = 52, int = 28, spi = 38 },
		[40] = { str = 54, agi = 95, sta = 53, int = 28, spi = 38 },
		[41] = { str = 56, agi = 97, sta = 54, int = 29, spi = 39 },
		[42] = { str = 57, agi = 99, sta = 55, int = 29, spi = 39 },
		[43] = { str = 58, agi = 101, sta = 56, int = 29, spi = 40 },
		[44] = { str = 59, agi = 103, sta = 57, int = 30, spi = 40 },
		[45] = { str = 60, agi = 105, sta = 59, int = 30, spi = 41 },
		[46] = { str = 61, agi = 107, sta = 60, int = 30, spi = 42 },
		[47] = { str = 62, agi = 109, sta = 61, int = 31, spi = 42 },
		[48] = { str = 64, agi = 112, sta = 62, int = 31, spi = 43 },
		[49] = { str = 65, agi = 114, sta = 63, int = 31, spi = 44 },
		[50] = { str = 66, agi = 116, sta = 64, int = 32, spi = 44 },
		[51] = { str = 67, agi = 118, sta = 65, int = 32, spi = 45 },
		[52] = { str = 68, agi = 120, sta = 66, int = 32, spi = 45 },
		[53] = { str = 70, agi = 123, sta = 67, int = 33, spi = 46 },
		[54] = { str = 71, agi = 125, sta = 69, int = 33, spi = 47 },
		[55] = { str = 72, agi = 127, sta = 70, int = 33, spi = 47 },
		[56] = { str = 73, agi = 129, sta = 71, int = 34, spi = 48 },
		[57] = { str = 75, agi = 132, sta = 72, int = 34, spi = 49 },
		[58] = { str = 76, agi = 134, sta = 73, int = 34, spi = 49 },
		[59] = { str = 77, agi = 136, sta = 74, int = 35, spi = 50 },
		[60] = { str = 79, agi = 139, sta = 76, int = 35, spi = 51 },
		[61] = { str = 80, agi = 141, sta = 77, int = 35, spi = 51 },
		[62] = { str = 81, agi = 143, sta = 78, int = 36, spi = 52 },
		[63] = { str = 82, agi = 146, sta = 79, int = 36, spi = 53 },
		[64] = { str = 84, agi = 148, sta = 80, int = 37, spi = 54 },
		[65] = { str = 85, agi = 151, sta = 82, int = 37, spi = 54 },
		[66] = { str = 87, agi = 153, sta = 83, int = 37, spi = 55 },
		[67] = { str = 88, agi = 156, sta = 84, int = 38, spi = 56 },
		[68] = { str = 89, agi = 158, sta = 85, int = 38, spi = 57 },
		[69] = { str = 91, agi = 160, sta = 87, int = 39, spi = 57 },
		[70] = { str = 92, agi = 163, sta = 88, int = 39, spi = 58 }
	},
	PRIEST = {
		[1] = { str = 17, agi = 25, sta = 19, int = 22, spi = 23 },
		[2] = { str = 17, agi = 25, sta = 19, int = 23, spi = 24 },
		[3] = { str = 17, agi = 25, sta = 20, int = 25, spi = 26 },
		[4] = { str = 17, agi = 26, sta = 20, int = 26, spi = 27 },
		[5] = { str = 18, agi = 26, sta = 20, int = 27, spi = 28 },
		[6] = { str = 18, agi = 26, sta = 21, int = 29, spi = 30 },
		[7] = { str = 18, agi = 26, sta = 21, int = 30, spi = 31 },
		[8] = { str = 18, agi = 26, sta = 22, int = 31, spi = 33 },
		[9] = { str = 18, agi = 27, sta = 22, int = 33, spi = 34 },
		[10] = { str = 19, agi = 27, sta = 22, int = 34, spi = 36 },
		[11] = { str = 19, agi = 27, sta = 23, int = 36, spi = 37 },
		[12] = { str = 19, agi = 27, sta = 23, int = 37, spi = 39 },
		[13] = { str = 19, agi = 28, sta = 24, int = 38, spi = 40 },
		[14] = { str = 19, agi = 28, sta = 24, int = 40, spi = 42 },
		[15] = { str = 19, agi = 28, sta = 25, int = 41, spi = 43 },
		[16] = { str = 20, agi = 28, sta = 25, int = 43, spi = 45 },
		[17] = { str = 20, agi = 29, sta = 25, int = 44, spi = 46 },
		[18] = { str = 20, agi = 29, sta = 26, int = 46, spi = 48 },
		[19] = { str = 20, agi = 29, sta = 26, int = 47, spi = 49 },
		[20] = { str = 21, agi = 30, sta = 27, int = 49, spi = 51 },
		[21] = { str = 21, agi = 30, sta = 27, int = 51, spi = 53 },
		[22] = { str = 21, agi = 30, sta = 28, int = 52, spi = 54 },
		[23] = { str = 21, agi = 30, sta = 28, int = 54, spi = 56 },
		[24] = { str = 21, agi = 31, sta = 29, int = 55, spi = 58 },
		[25] = { str = 22, agi = 31, sta = 29, int = 57, spi = 59 },
		[26] = { str = 22, agi = 31, sta = 30, int = 59, spi = 61 },
		[27] = { str = 22, agi = 32, sta = 30, int = 60, spi = 63 },
		[28] = { str = 22, agi = 32, sta = 31, int = 62, spi = 65 },
		[29] = { str = 23, agi = 32, sta = 31, int = 64, spi = 66 },
		[30] = { str = 23, agi = 33, sta = 32, int = 65, spi = 68 },
		[31] = { str = 23, agi = 33, sta = 32, int = 67, spi = 70 },
		[32] = { str = 23, agi = 33, sta = 33, int = 69, spi = 72 },
		[33] = { str = 24, agi = 34, sta = 33, int = 70, spi = 73 },
		[34] = { str = 24, agi = 34, sta = 34, int = 72, spi = 75 },
		[35] = { str = 24, agi = 34, sta = 34, int = 74, spi = 77 },
		[36] = { str = 24, agi = 35, sta = 35, int = 76, spi = 79 },
		[37] = { str = 25, agi = 35, sta = 35, int = 78, spi = 81 },
		[38] = { str = 25, agi = 35, sta = 36, int = 79, spi = 83 },
		[39] = { str = 25, agi = 36, sta = 37, int = 81, spi = 85 },
		[40] = { str = 26, agi = 36, sta = 37, int = 83, spi = 87 },
		[41] = { str = 26, agi = 37, sta = 38, int = 85, spi = 88 },
		[42] = { str = 26, agi = 37, sta = 38, int = 87, spi = 90 },
		[43] = { str = 27, agi = 37, sta = 39, int = 89, spi = 92 },
		[44] = { str = 27, agi = 38, sta = 39, int = 91, spi = 94 },
		[45] = { str = 27, agi = 38, sta = 40, int = 92, spi = 96 },
		[46] = { str = 27, agi = 39, sta = 41, int = 94, spi = 98 },
		[47] = { str = 28, agi = 39, sta = 41, int = 96, spi = 100 },
		[48] = { str = 28, agi = 39, sta = 42, int = 98, spi = 102 },
		[49] = { str = 28, agi = 40, sta = 43, int = 100, spi = 104 },
		[50] = { str = 29, agi = 40, sta = 43, int = 102, spi = 106 },
		[51] = { str = 29, agi = 41, sta = 44, int = 104, spi = 109 },
		[52] = { str = 29, agi = 41, sta = 44, int = 106, spi = 111 },
		[53] = { str = 30, agi = 42, sta = 45, int = 108, spi = 113 },
		[54] = { str = 30, agi = 42, sta = 46, int = 110, spi = 115 },
		[55] = { str = 30, agi = 43, sta = 46, int = 112, spi = 117 },
		[56] = { str = 31, agi = 43, sta = 47, int = 114, spi = 119 },
		[57] = { str = 31, agi = 43, sta = 48, int = 117, spi = 121 },
		[58] = { str = 31, agi = 44, sta = 48, int = 119, spi = 124 },
		[59] = { str = 32, agi = 44, sta = 49, int = 121, spi = 126 },
		[60] = { str = 32, agi = 45, sta = 50, int = 123, spi = 128 },
		[61] = { str = 33, agi = 45, sta = 51, int = 125, spi = 130 },
		[62] = { str = 33, agi = 46, sta = 51, int = 127, spi = 132 },
		[63] = { str = 33, agi = 46, sta = 52, int = 129, spi = 135 },
		[64] = { str = 34, agi = 47, sta = 53, int = 132, spi = 137 },
		[65] = { str = 34, agi = 47, sta = 53, int = 134, spi = 139 },
		[66] = { str = 34, agi = 48, sta = 54, int = 136, spi = 142 },
		[67] = { str = 35, agi = 48, sta = 55, int = 138, spi = 144 },
		[68] = { str = 35, agi = 49, sta = 56, int = 140, spi = 146 },
		[69] = { str = 36, agi = 49, sta = 56, int = 143, spi = 149 },
		[70] = { str = 36, agi = 50, sta = 57, int = 145, spi = 151 }
	},
	DRUID = {
		[1] = { str = 18, agi = 25, sta = 19, int = 22, spi = 22 },
		[2] = { str = 19, agi = 25, sta = 20, int = 23, spi = 23 },
		[3] = { str = 19, agi = 26, sta = 20, int = 24, spi = 24 },
		[4] = { str = 20, agi = 26, sta = 21, int = 25, spi = 26 },
		[5] = { str = 20, agi = 27, sta = 22, int = 26, spi = 27 },
		[6] = { str = 21, agi = 27, sta = 22, int = 27, spi = 28 },
		[7] = { str = 21, agi = 28, sta = 23, int = 28, spi = 29 },
		[8] = { str = 22, agi = 28, sta = 24, int = 29, spi = 30 },
		[9] = { str = 23, agi = 29, sta = 24, int = 30, spi = 32 },
		[10] = { str = 23, agi = 29, sta = 25, int = 32, spi = 33 },
		[11] = { str = 24, agi = 30, sta = 26, int = 33, spi = 34 },
		[12] = { str = 24, agi = 31, sta = 26, int = 34, spi = 35 },
		[13] = { str = 25, agi = 31, sta = 27, int = 35, spi = 37 },
		[14] = { str = 26, agi = 32, sta = 28, int = 36, spi = 38 },
		[15] = { str = 26, agi = 32, sta = 29, int = 37, spi = 39 },
		[16] = { str = 27, agi = 33, sta = 29, int = 38, spi = 41 },
		[17] = { str = 28, agi = 33, sta = 30, int = 40, spi = 42 },
		[18] = { str = 28, agi = 34, sta = 31, int = 41, spi = 43 },
		[19] = { str = 29, agi = 35, sta = 32, int = 42, spi = 45 },
		[20] = { str = 30, agi = 35, sta = 32, int = 43, spi = 46 },
		[21] = { str = 30, agi = 36, sta = 33, int = 45, spi = 48 },
		[22] = { str = 31, agi = 36, sta = 34, int = 46, spi = 49 },
		[23] = { str = 32, agi = 37, sta = 35, int = 47, spi = 51 },
		[24] = { str = 32, agi = 38, sta = 36, int = 48, spi = 52 },
		[25] = { str = 33, agi = 38, sta = 36, int = 50, spi = 53 },
		[26] = { str = 34, agi = 39, sta = 37, int = 51, spi = 55 },
		[27] = { str = 35, agi = 40, sta = 38, int = 52, spi = 56 },
		[28] = { str = 35, agi = 40, sta = 39, int = 54, spi = 58 },
		[29] = { str = 36, agi = 41, sta = 40, int = 55, spi = 59 },
		[30] = { str = 37, agi = 42, sta = 41, int = 56, spi = 61 },
		[31] = { str = 38, agi = 42, sta = 42, int = 58, spi = 62 },
		[32] = { str = 38, agi = 43, sta = 42, int = 59, spi = 64 },
		[33] = { str = 39, agi = 44, sta = 43, int = 60, spi = 66 },
		[34] = { str = 40, agi = 44, sta = 44, int = 62, spi = 67 },
		[35] = { str = 41, agi = 45, sta = 45, int = 63, spi = 69 },
		[36] = { str = 42, agi = 46, sta = 46, int = 65, spi = 70 },
		[37] = { str = 42, agi = 47, sta = 47, int = 66, spi = 72 },
		[38] = { str = 43, agi = 47, sta = 48, int = 67, spi = 74 },
		[39] = { str = 44, agi = 48, sta = 49, int = 69, spi = 75 },
		[40] = { str = 45, agi = 49, sta = 50, int = 70, spi = 77 },
		[41] = { str = 46, agi = 50, sta = 51, int = 72, spi = 79 },
		[42] = { str = 46, agi = 50, sta = 52, int = 73, spi = 80 },
		[43] = { str = 47, agi = 51, sta = 53, int = 75, spi = 82 },
		[44] = { str = 48, agi = 52, sta = 54, int = 76, spi = 84 },
		[45] = { str = 49, agi = 53, sta = 55, int = 78, spi = 85 },
		[46] = { str = 50, agi = 54, sta = 56, int = 79, spi = 87 },
		[47] = { str = 51, agi = 54, sta = 57, int = 81, spi = 89 },
		[48] = { str = 52, agi = 55, sta = 58, int = 83, spi = 91 },
		[49] = { str = 53, agi = 56, sta = 59, int = 84, spi = 93 },
		[50] = { str = 53, agi = 57, sta = 60, int = 86, spi = 94 },
		[51] = { str = 54, agi = 58, sta = 61, int = 87, spi = 96 },
		[52] = { str = 55, agi = 59, sta = 62, int = 89, spi = 98 },
		[53] = { str = 56, agi = 59, sta = 63, int = 91, spi = 100 },
		[54] = { str = 57, agi = 60, sta = 64, int = 92, spi = 102 },
		[55] = { str = 58, agi = 61, sta = 65, int = 94, spi = 103 },
		[56] = { str = 59, agi = 62, sta = 66, int = 95, spi = 105 },
		[57] = { str = 60, agi = 63, sta = 67, int = 97, spi = 107 },
		[58] = { str = 61, agi = 64, sta = 68, int = 99, spi = 109 },
		[59] = { str = 62, agi = 65, sta = 69, int = 101, spi = 111 },
		[60] = { str = 63, agi = 66, sta = 70, int = 102, spi = 113 },
		[61] = { str = 64, agi = 66, sta = 72, int = 104, spi = 115 },
		[62] = { str = 65, agi = 67, sta = 73, int = 106, spi = 117 },
		[63] = { str = 66, agi = 68, sta = 74, int = 107, spi = 119 },
		[64] = { str = 67, agi = 69, sta = 75, int = 109, spi = 121 },
		[65] = { str = 68, agi = 70, sta = 76, int = 111, spi = 123 },
		[66] = { str = 69, agi = 71, sta = 77, int = 113, spi = 125 },
		[67] = { str = 70, agi = 72, sta = 78, int = 115, spi = 127 },
		[68] = { str = 71, agi = 73, sta = 80, int = 116, spi = 129 },
		[69] = { str = 72, agi = 74, sta = 81, int = 118, spi = 131 },
		[70] = { str = 73, agi = 75, sta = 82, int = 120, spi = 133 }
	},
},
Scourge = { --the forsaken are called "scourge" by UnitRace(), top lel
	WARRIOR = {
		[1] = { str = 22, agi = 18, sta = 23, int = 18, spi = 25 },
		[2] = { str = 23, agi = 19, sta = 24, int = 18, spi = 25 },
		[3] = { str = 25, agi = 20, sta = 25, int = 18, spi = 26 },
		[4] = { str = 26, agi = 20, sta = 26, int = 18, spi = 26 },
		[5] = { str = 27, agi = 21, sta = 28, int = 18, spi = 26 },
		[6] = { str = 29, agi = 22, sta = 29, int = 18, spi = 26 },
		[7] = { str = 30, agi = 23, sta = 30, int = 19, spi = 27 },
		[8] = { str = 31, agi = 24, sta = 31, int = 19, spi = 27 },
		[9] = { str = 33, agi = 25, sta = 33, int = 19, spi = 27 },
		[10] = { str = 34, agi = 25, sta = 34, int = 19, spi = 28 },
		[11] = { str = 35, agi = 26, sta = 35, int = 19, spi = 28 },
		[12] = { str = 37, agi = 27, sta = 36, int = 19, spi = 28 },
		[13] = { str = 38, agi = 28, sta = 38, int = 19, spi = 28 },
		[14] = { str = 40, agi = 29, sta = 39, int = 19, spi = 29 },
		[15] = { str = 41, agi = 30, sta = 40, int = 19, spi = 29 },
		[16] = { str = 43, agi = 31, sta = 42, int = 20, spi = 29 },
		[17] = { str = 44, agi = 32, sta = 43, int = 20, spi = 30 },
		[18] = { str = 46, agi = 33, sta = 44, int = 20, spi = 30 },
		[19] = { str = 47, agi = 34, sta = 46, int = 20, spi = 31 },
		[20] = { str = 49, agi = 34, sta = 47, int = 20, spi = 31 },
		[21] = { str = 50, agi = 35, sta = 49, int = 20, spi = 31 },
		[22] = { str = 52, agi = 36, sta = 50, int = 20, spi = 32 },
		[23] = { str = 53, agi = 37, sta = 51, int = 21, spi = 32 },
		[24] = { str = 55, agi = 38, sta = 53, int = 21, spi = 32 },
		[25] = { str = 57, agi = 39, sta = 54, int = 21, spi = 33 },
		[26] = { str = 58, agi = 40, sta = 56, int = 21, spi = 33 },
		[27] = { str = 60, agi = 41, sta = 57, int = 21, spi = 34 },
		[28] = { str = 62, agi = 42, sta = 59, int = 21, spi = 34 },
		[29] = { str = 63, agi = 43, sta = 60, int = 21, spi = 34 },
		[30] = { str = 65, agi = 44, sta = 62, int = 22, spi = 35 },
		[31] = { str = 67, agi = 46, sta = 63, int = 22, spi = 35 },
		[32] = { str = 68, agi = 47, sta = 65, int = 22, spi = 36 },
		[33] = { str = 70, agi = 48, sta = 67, int = 22, spi = 36 },
		[34] = { str = 72, agi = 49, sta = 68, int = 22, spi = 36 },
		[35] = { str = 74, agi = 50, sta = 70, int = 23, spi = 37 },
		[36] = { str = 75, agi = 51, sta = 71, int = 23, spi = 37 },
		[37] = { str = 77, agi = 52, sta = 73, int = 23, spi = 38 },
		[38] = { str = 79, agi = 53, sta = 75, int = 23, spi = 38 },
		[39] = { str = 81, agi = 54, sta = 76, int = 23, spi = 39 },
		[40] = { str = 83, agi = 55, sta = 78, int = 24, spi = 39 },
		[41] = { str = 84, agi = 57, sta = 80, int = 24, spi = 40 },
		[42] = { str = 86, agi = 58, sta = 81, int = 24, spi = 40 },
		[43] = { str = 88, agi = 59, sta = 83, int = 24, spi = 41 },
		[44] = { str = 90, agi = 60, sta = 85, int = 24, spi = 41 },
		[45] = { str = 92, agi = 61, sta = 86, int = 25, spi = 42 },
		[46] = { str = 94, agi = 62, sta = 88, int = 25, spi = 42 },
		[47] = { str = 96, agi = 64, sta = 90, int = 25, spi = 43 },
		[48] = { str = 98, agi = 65, sta = 92, int = 25, spi = 43 },
		[49] = { str = 100, agi = 66, sta = 93, int = 25, spi = 44 },
		[50] = { str = 102, agi = 67, sta = 95, int = 26, spi = 44 },
		[51] = { str = 104, agi = 69, sta = 97, int = 26, spi = 45 },
		[52] = { str = 106, agi = 70, sta = 99, int = 26, spi = 45 },
		[53] = { str = 108, agi = 71, sta = 101, int = 26, spi = 46 },
		[54] = { str = 110, agi = 72, sta = 103, int = 27, spi = 46 },
		[55] = { str = 112, agi = 74, sta = 104, int = 27, spi = 47 },
		[56] = { str = 114, agi = 75, sta = 106, int = 27, spi = 48 },
		[57] = { str = 116, agi = 76, sta = 108, int = 27, spi = 48 },
		[58] = { str = 118, agi = 78, sta = 110, int = 28, spi = 49 },
		[59] = { str = 120, agi = 79, sta = 112, int = 28, spi = 49 },
		[60] = { str = 122, agi = 80, sta = 114, int = 28, spi = 50 },
		[61] = { str = 124, agi = 82, sta = 116, int = 28, spi = 50 },
		[62] = { str = 126, agi = 83, sta = 118, int = 29, spi = 51 },
		[63] = { str = 128, agi = 84, sta = 120, int = 29, spi = 52 },
		[64] = { str = 131, agi = 86, sta = 122, int = 29, spi = 52 },
		[65] = { str = 133, agi = 87, sta = 124, int = 30, spi = 53 },
		[66] = { str = 135, agi = 88, sta = 126, int = 30, spi = 53 },
		[67] = { str = 137, agi = 90, sta = 128, int = 30, spi = 54 },
		[68] = { str = 139, agi = 91, sta = 130, int = 30, spi = 55 },
		[69] = { str = 142, agi = 93, sta = 132, int = 31, spi = 55 },
		[70] = { str = 144, agi = 94, sta = 134, int = 31, spi = 56 }
	},
	ROGUE = {
		[1] = { str = 20, agi = 21, sta = 22, int = 18, spi = 25 },
		[2] = { str = 21, agi = 22, sta = 23, int = 18, spi = 25 },
		[3] = { str = 22, agi = 24, sta = 23, int = 18, spi = 26 },
		[4] = { str = 22, agi = 25, sta = 24, int = 18, spi = 26 },
		[5] = { str = 23, agi = 27, sta = 25, int = 19, spi = 26 },
		[6] = { str = 24, agi = 28, sta = 25, int = 19, spi = 27 },
		[7] = { str = 25, agi = 30, sta = 26, int = 19, spi = 27 },
		[8] = { str = 25, agi = 31, sta = 27, int = 19, spi = 27 },
		[9] = { str = 26, agi = 33, sta = 28, int = 19, spi = 28 },
		[10] = { str = 27, agi = 34, sta = 28, int = 19, spi = 28 },
		[11] = { str = 28, agi = 36, sta = 29, int = 20, spi = 29 },
		[12] = { str = 29, agi = 38, sta = 30, int = 20, spi = 29 },
		[13] = { str = 30, agi = 39, sta = 31, int = 20, spi = 29 },
		[14] = { str = 31, agi = 41, sta = 32, int = 20, spi = 30 },
		[15] = { str = 31, agi = 42, sta = 32, int = 20, spi = 30 },
		[16] = { str = 32, agi = 44, sta = 33, int = 21, spi = 31 },
		[17] = { str = 33, agi = 46, sta = 34, int = 21, spi = 31 },
		[18] = { str = 34, agi = 47, sta = 35, int = 21, spi = 32 },
		[19] = { str = 35, agi = 49, sta = 36, int = 21, spi = 32 },
		[20] = { str = 36, agi = 51, sta = 36, int = 21, spi = 32 },
		[21] = { str = 37, agi = 52, sta = 37, int = 22, spi = 33 },
		[22] = { str = 38, agi = 54, sta = 38, int = 22, spi = 33 },
		[23] = { str = 39, agi = 56, sta = 39, int = 22, spi = 34 },
		[24] = { str = 40, agi = 58, sta = 40, int = 22, spi = 34 },
		[25] = { str = 41, agi = 60, sta = 41, int = 23, spi = 35 },
		[26] = { str = 42, agi = 61, sta = 42, int = 23, spi = 35 },
		[27] = { str = 43, agi = 63, sta = 43, int = 23, spi = 36 },
		[28] = { str = 44, agi = 65, sta = 44, int = 23, spi = 36 },
		[29] = { str = 45, agi = 67, sta = 44, int = 24, spi = 37 },
		[30] = { str = 46, agi = 69, sta = 45, int = 24, spi = 37 },
		[31] = { str = 47, agi = 71, sta = 46, int = 24, spi = 38 },
		[32] = { str = 48, agi = 72, sta = 47, int = 24, spi = 38 },
		[33] = { str = 49, agi = 74, sta = 48, int = 25, spi = 39 },
		[34] = { str = 50, agi = 76, sta = 49, int = 25, spi = 39 },
		[35] = { str = 51, agi = 78, sta = 50, int = 25, spi = 40 },
		[36] = { str = 52, agi = 80, sta = 51, int = 25, spi = 41 },
		[37] = { str = 53, agi = 82, sta = 52, int = 26, spi = 41 },
		[38] = { str = 54, agi = 84, sta = 53, int = 26, spi = 42 },
		[39] = { str = 55, agi = 86, sta = 54, int = 26, spi = 42 },
		[40] = { str = 56, agi = 88, sta = 55, int = 27, spi = 43 },
		[41] = { str = 57, agi = 90, sta = 56, int = 27, spi = 43 },
		[42] = { str = 59, agi = 92, sta = 57, int = 27, spi = 44 },
		[43] = { str = 60, agi = 94, sta = 58, int = 27, spi = 45 },
		[44] = { str = 61, agi = 96, sta = 59, int = 28, spi = 45 },
		[45] = { str = 62, agi = 99, sta = 60, int = 28, spi = 46 },
		[46] = { str = 63, agi = 101, sta = 61, int = 28, spi = 46 },
		[47] = { str = 64, agi = 103, sta = 63, int = 29, spi = 47 },
		[48] = { str = 66, agi = 105, sta = 64, int = 29, spi = 48 },
		[49] = { str = 67, agi = 107, sta = 65, int = 29, spi = 48 },
		[50] = { str = 68, agi = 109, sta = 66, int = 30, spi = 49 },
		[51] = { str = 69, agi = 111, sta = 67, int = 30, spi = 50 },
		[52] = { str = 70, agi = 114, sta = 68, int = 30, spi = 50 },
		[53] = { str = 72, agi = 116, sta = 69, int = 31, spi = 51 },
		[54] = { str = 73, agi = 118, sta = 70, int = 31, spi = 52 },
		[55] = { str = 74, agi = 120, sta = 72, int = 31, spi = 52 },
		[56] = { str = 75, agi = 123, sta = 73, int = 32, spi = 53 },
		[57] = { str = 77, agi = 125, sta = 74, int = 32, spi = 54 },
		[58] = { str = 78, agi = 127, sta = 75, int = 32, spi = 54 },
		[59] = { str = 79, agi = 130, sta = 76, int = 33, spi = 55 },
		[60] = { str = 81, agi = 132, sta = 77, int = 33, spi = 56 },
		[61] = { str = 82, agi = 134, sta = 79, int = 34, spi = 56 },
		[62] = { str = 83, agi = 137, sta = 80, int = 34, spi = 57 },
		[63] = { str = 84, agi = 139, sta = 81, int = 34, spi = 58 },
		[64] = { str = 86, agi = 141, sta = 82, int = 35, spi = 59 },
		[65] = { str = 87, agi = 144, sta = 84, int = 35, spi = 59 },
		[66] = { str = 88, agi = 146, sta = 85, int = 35, spi = 60 },
		[67] = { str = 90, agi = 149, sta = 86, int = 36, spi = 61 },
		[68] = { str = 91, agi = 151, sta = 87, int = 36, spi = 61 },
		[69] = { str = 93, agi = 154, sta = 89, int = 37, spi = 62 },
		[70] = { str = 94, agi = 156, sta = 90, int = 37, spi = 63 }
	},
	PRIEST = {
		[1] = { str = 19, agi = 18, sta = 21, int = 20, spi = 28 },
		[2] = { str = 19, agi = 18, sta = 21, int = 21, spi = 29 },
		[3] = { str = 19, agi = 18, sta = 22, int = 23, spi = 31 },
		[4] = { str = 19, agi = 19, sta = 22, int = 24, spi = 32 },
		[5] = { str = 20, agi = 19, sta = 22, int = 25, spi = 33 },
		[6] = { str = 20, agi = 19, sta = 23, int = 27, spi = 35 },
		[7] = { str = 20, agi = 19, sta = 23, int = 28, spi = 36 },
		[8] = { str = 20, agi = 20, sta = 24, int = 29, spi = 38 },
		[9] = { str = 20, agi = 20, sta = 24, int = 31, spi = 39 },
		[10] = { str = 20, agi = 20, sta = 24, int = 32, spi = 40 },
		[11] = { str = 21, agi = 20, sta = 25, int = 34, spi = 42 },
		[12] = { str = 21, agi = 21, sta = 25, int = 35, spi = 43 },
		[13] = { str = 21, agi = 21, sta = 26, int = 37, spi = 45 },
		[14] = { str = 21, agi = 21, sta = 26, int = 38, spi = 46 },
		[15] = { str = 21, agi = 21, sta = 26, int = 39, spi = 48 },
		[16] = { str = 22, agi = 22, sta = 27, int = 41, spi = 50 },
		[17] = { str = 22, agi = 22, sta = 27, int = 42, spi = 51 },
		[18] = { str = 22, agi = 22, sta = 28, int = 44, spi = 53 },
		[19] = { str = 22, agi = 23, sta = 28, int = 46, spi = 54 },
		[20] = { str = 22, agi = 23, sta = 29, int = 47, spi = 56 },
		[21] = { str = 23, agi = 23, sta = 29, int = 49, spi = 57 },
		[22] = { str = 23, agi = 23, sta = 30, int = 50, spi = 59 },
		[23] = { str = 23, agi = 24, sta = 30, int = 52, spi = 61 },
		[24] = { str = 23, agi = 24, sta = 31, int = 53, spi = 62 },
		[25] = { str = 24, agi = 24, sta = 31, int = 55, spi = 64 },
		[26] = { str = 24, agi = 25, sta = 32, int = 57, spi = 66 },
		[27] = { str = 24, agi = 25, sta = 32, int = 58, spi = 68 },
		[28] = { str = 24, agi = 25, sta = 33, int = 60, spi = 69 },
		[29] = { str = 25, agi = 26, sta = 33, int = 62, spi = 71 },
		[30] = { str = 25, agi = 26, sta = 34, int = 63, spi = 73 },
		[31] = { str = 25, agi = 26, sta = 34, int = 65, spi = 75 },
		[32] = { str = 25, agi = 27, sta = 35, int = 67, spi = 76 },
		[33] = { str = 26, agi = 27, sta = 35, int = 69, spi = 78 },
		[34] = { str = 26, agi = 27, sta = 36, int = 70, spi = 80 },
		[35] = { str = 26, agi = 28, sta = 36, int = 72, spi = 82 },
		[36] = { str = 26, agi = 28, sta = 37, int = 74, spi = 84 },
		[37] = { str = 27, agi = 28, sta = 37, int = 76, spi = 86 },
		[38] = { str = 27, agi = 29, sta = 38, int = 77, spi = 87 },
		[39] = { str = 27, agi = 29, sta = 38, int = 79, spi = 89 },
		[40] = { str = 28, agi = 30, sta = 39, int = 81, spi = 91 },
		[41] = { str = 28, agi = 30, sta = 40, int = 83, spi = 93 },
		[42] = { str = 28, agi = 30, sta = 40, int = 85, spi = 95 },
		[43] = { str = 28, agi = 31, sta = 41, int = 87, spi = 97 },
		[44] = { str = 29, agi = 31, sta = 41, int = 89, spi = 99 },
		[45] = { str = 29, agi = 32, sta = 42, int = 91, spi = 101 },
		[46] = { str = 29, agi = 32, sta = 43, int = 92, spi = 103 },
		[47] = { str = 30, agi = 32, sta = 43, int = 94, spi = 105 },
		[48] = { str = 30, agi = 33, sta = 44, int = 96, spi = 107 },
		[49] = { str = 30, agi = 33, sta = 44, int = 98, spi = 109 },
		[50] = { str = 31, agi = 34, sta = 45, int = 100, spi = 111 },
		[51] = { str = 31, agi = 34, sta = 46, int = 102, spi = 113 },
		[52] = { str = 31, agi = 35, sta = 46, int = 104, spi = 115 },
		[53] = { str = 32, agi = 35, sta = 47, int = 106, spi = 118 },
		[54] = { str = 32, agi = 35, sta = 48, int = 108, spi = 120 },
		[55] = { str = 32, agi = 36, sta = 48, int = 110, spi = 122 },
		[56] = { str = 33, agi = 36, sta = 49, int = 113, spi = 124 },
		[57] = { str = 33, agi = 37, sta = 50, int = 115, spi = 126 },
		[58] = { str = 33, agi = 37, sta = 50, int = 117, spi = 128 },
		[59] = { str = 34, agi = 38, sta = 51, int = 119, spi = 131 },
		[60] = { str = 34, agi = 38, sta = 52, int = 121, spi = 133 },
		[61] = { str = 34, agi = 39, sta = 52, int = 123, spi = 135 },
		[62] = { str = 35, agi = 39, sta = 53, int = 125, spi = 137 },
		[63] = { str = 35, agi = 40, sta = 54, int = 127, spi = 140 },
		[64] = { str = 36, agi = 40, sta = 55, int = 130, spi = 142 },
		[65] = { str = 36, agi = 41, sta = 55, int = 132, spi = 144 },
		[66] = { str = 36, agi = 41, sta = 56, int = 134, spi = 147 },
		[67] = { str = 37, agi = 41, sta = 57, int = 136, spi = 149 },
		[68] = { str = 37, agi = 42, sta = 58, int = 138, spi = 151 },
		[69] = { str = 38, agi = 42, sta = 58, int = 141, spi = 154 },
		[70] = { str = 38, agi = 43, sta = 59, int = 143, spi = 156 }
	},
	MAGE = {
		[1] = { str = 19, agi = 18, sta = 21, int = 21, spi = 27 },
		[2] = { str = 19, agi = 18, sta = 21, int = 22, spi = 28 },
		[3] = { str = 19, agi = 18, sta = 22, int = 24, spi = 30 },
		[4] = { str = 19, agi = 18, sta = 22, int = 25, spi = 31 },
		[5] = { str = 19, agi = 19, sta = 22, int = 26, spi = 32 },
		[6] = { str = 19, agi = 19, sta = 22, int = 28, spi = 34 },
		[7] = { str = 20, agi = 19, sta = 23, int = 29, spi = 35 },
		[8] = { str = 20, agi = 19, sta = 23, int = 31, spi = 36 },
		[9] = { str = 20, agi = 19, sta = 23, int = 32, spi = 38 },
		[10] = { str = 20, agi = 19, sta = 24, int = 34, spi = 39 },
		[11] = { str = 20, agi = 20, sta = 24, int = 35, spi = 40 },
		[12] = { str = 20, agi = 20, sta = 24, int = 37, spi = 42 },
		[13] = { str = 20, agi = 20, sta = 25, int = 38, spi = 43 },
		[14] = { str = 20, agi = 20, sta = 25, int = 40, spi = 45 },
		[15] = { str = 20, agi = 20, sta = 25, int = 41, spi = 46 },
		[16] = { str = 21, agi = 21, sta = 26, int = 43, spi = 48 },
		[17] = { str = 21, agi = 21, sta = 26, int = 44, spi = 49 },
		[18] = { str = 21, agi = 21, sta = 26, int = 46, spi = 51 },
		[19] = { str = 21, agi = 21, sta = 27, int = 48, spi = 52 },
		[20] = { str = 21, agi = 21, sta = 27, int = 49, spi = 54 },
		[21] = { str = 21, agi = 22, sta = 27, int = 51, spi = 55 },
		[22] = { str = 21, agi = 22, sta = 28, int = 52, spi = 57 },
		[23] = { str = 21, agi = 22, sta = 28, int = 54, spi = 58 },
		[24] = { str = 22, agi = 22, sta = 29, int = 56, spi = 60 },
		[25] = { str = 22, agi = 23, sta = 29, int = 57, spi = 62 },
		[26] = { str = 22, agi = 23, sta = 29, int = 59, spi = 63 },
		[27] = { str = 22, agi = 23, sta = 30, int = 61, spi = 65 },
		[28] = { str = 22, agi = 23, sta = 30, int = 63, spi = 67 },
		[29] = { str = 22, agi = 24, sta = 31, int = 64, spi = 68 },
		[30] = { str = 23, agi = 24, sta = 31, int = 66, spi = 70 },
		[31] = { str = 23, agi = 24, sta = 31, int = 68, spi = 72 },
		[32] = { str = 23, agi = 24, sta = 32, int = 70, spi = 73 },
		[33] = { str = 23, agi = 25, sta = 32, int = 72, spi = 75 },
		[34] = { str = 23, agi = 25, sta = 33, int = 73, spi = 77 },
		[35] = { str = 24, agi = 25, sta = 33, int = 75, spi = 79 },
		[36] = { str = 24, agi = 25, sta = 34, int = 77, spi = 80 },
		[37] = { str = 24, agi = 26, sta = 34, int = 79, spi = 82 },
		[38] = { str = 24, agi = 26, sta = 35, int = 81, spi = 84 },
		[39] = { str = 24, agi = 26, sta = 35, int = 83, spi = 86 },
		[40] = { str = 24, agi = 27, sta = 35, int = 85, spi = 88 },
		[41] = { str = 25, agi = 27, sta = 36, int = 87, spi = 90 },
		[42] = { str = 25, agi = 27, sta = 36, int = 89, spi = 91 },
		[43] = { str = 25, agi = 27, sta = 37, int = 90, spi = 93 },
		[44] = { str = 25, agi = 28, sta = 37, int = 92, spi = 95 },
		[45] = { str = 26, agi = 28, sta = 38, int = 94, spi = 97 },
		[46] = { str = 26, agi = 28, sta = 38, int = 96, spi = 99 },
		[47] = { str = 26, agi = 29, sta = 39, int = 98, spi = 101 },
		[48] = { str = 26, agi = 29, sta = 39, int = 100, spi = 103 },
		[49] = { str = 26, agi = 29, sta = 40, int = 103, spi = 105 },
		[50] = { str = 27, agi = 30, sta = 40, int = 105, spi = 107 },
		[51] = { str = 27, agi = 30, sta = 41, int = 107, spi = 109 },
		[52] = { str = 27, agi = 30, sta = 42, int = 109, spi = 111 },
		[53] = { str = 27, agi = 31, sta = 42, int = 111, spi = 113 },
		[54] = { str = 28, agi = 31, sta = 43, int = 113, spi = 115 },
		[55] = { str = 28, agi = 31, sta = 43, int = 115, spi = 117 },
		[56] = { str = 28, agi = 32, sta = 44, int = 117, spi = 119 },
		[57] = { str = 28, agi = 32, sta = 44, int = 119, spi = 121 },
		[58] = { str = 29, agi = 32, sta = 45, int = 122, spi = 123 },
		[59] = { str = 29, agi = 33, sta = 45, int = 124, spi = 126 },
		[60] = { str = 29, agi = 33, sta = 46, int = 126, spi = 128 },
		[61] = { str = 29, agi = 34, sta = 47, int = 128, spi = 130 },
		[62] = { str = 30, agi = 34, sta = 47, int = 131, spi = 132 },
		[63] = { str = 30, agi = 34, sta = 48, int = 133, spi = 134 },
		[64] = { str = 30, agi = 35, sta = 48, int = 135, spi = 136 },
		[65] = { str = 31, agi = 35, sta = 49, int = 137, spi = 139 },
		[66] = { str = 31, agi = 35, sta = 50, int = 140, spi = 141 },
		[67] = { str = 31, agi = 36, sta = 50, int = 142, spi = 143 },
		[68] = { str = 31, agi = 36, sta = 51, int = 144, spi = 145 },
		[69] = { str = 32, agi = 37, sta = 51, int = 147, spi = 148 },
		[70] = { str = 32, agi = 37, sta = 52, int = 149, spi = 150 }
	},
	WARLOCK = {
		[1] = { str = 19, agi = 18, sta = 22, int = 20, spi = 27 },
		[2] = { str = 19, agi = 18, sta = 23, int = 21, spi = 28 },
		[3] = { str = 20, agi = 19, sta = 23, int = 22, spi = 29 },
		[4] = { str = 20, agi = 19, sta = 24, int = 24, spi = 30 },
		[5] = { str = 20, agi = 19, sta = 24, int = 25, spi = 32 },
		[6] = { str = 20, agi = 20, sta = 25, int = 26, spi = 33 },
		[7] = { str = 21, agi = 20, sta = 25, int = 27, spi = 34 },
		[8] = { str = 21, agi = 21, sta = 26, int = 28, spi = 35 },
		[9] = { str = 21, agi = 21, sta = 26, int = 30, spi = 36 },
		[10] = { str = 22, agi = 21, sta = 27, int = 31, spi = 38 },
		[11] = { str = 22, agi = 22, sta = 28, int = 32, spi = 39 },
		[12] = { str = 22, agi = 22, sta = 28, int = 34, spi = 40 },
		[13] = { str = 23, agi = 23, sta = 29, int = 35, spi = 41 },
		[14] = { str = 23, agi = 23, sta = 30, int = 36, spi = 43 },
		[15] = { str = 23, agi = 24, sta = 30, int = 37, spi = 44 },
		[16] = { str = 24, agi = 24, sta = 31, int = 39, spi = 45 },
		[17] = { str = 24, agi = 24, sta = 31, int = 40, spi = 47 },
		[18] = { str = 24, agi = 25, sta = 32, int = 42, spi = 48 },
		[19] = { str = 25, agi = 25, sta = 33, int = 43, spi = 49 },
		[20] = { str = 25, agi = 26, sta = 33, int = 44, spi = 51 },
		[21] = { str = 26, agi = 26, sta = 34, int = 46, spi = 52 },
		[22] = { str = 26, agi = 27, sta = 35, int = 47, spi = 53 },
		[23] = { str = 26, agi = 27, sta = 36, int = 49, spi = 55 },
		[24] = { str = 27, agi = 28, sta = 36, int = 50, spi = 56 },
		[25] = { str = 27, agi = 28, sta = 37, int = 52, spi = 58 },
		[26] = { str = 27, agi = 29, sta = 38, int = 53, spi = 59 },
		[27] = { str = 28, agi = 29, sta = 38, int = 55, spi = 60 },
		[28] = { str = 28, agi = 30, sta = 39, int = 56, spi = 62 },
		[29] = { str = 29, agi = 30, sta = 40, int = 58, spi = 63 },
		[30] = { str = 29, agi = 31, sta = 41, int = 59, spi = 65 },
		[31] = { str = 30, agi = 31, sta = 41, int = 61, spi = 66 },
		[32] = { str = 30, agi = 32, sta = 42, int = 62, spi = 68 },
		[33] = { str = 30, agi = 32, sta = 43, int = 64, spi = 69 },
		[34] = { str = 31, agi = 33, sta = 44, int = 65, spi = 71 },
		[35] = { str = 31, agi = 33, sta = 45, int = 67, spi = 73 },
		[36] = { str = 32, agi = 34, sta = 45, int = 69, spi = 74 },
		[37] = { str = 32, agi = 34, sta = 46, int = 70, spi = 76 },
		[38] = { str = 33, agi = 35, sta = 47, int = 72, spi = 77 },
		[39] = { str = 33, agi = 36, sta = 48, int = 73, spi = 79 },
		[40] = { str = 34, agi = 36, sta = 49, int = 75, spi = 81 },
		[41] = { str = 34, agi = 37, sta = 49, int = 77, spi = 82 },
		[42] = { str = 35, agi = 37, sta = 50, int = 78, spi = 84 },
		[43] = { str = 35, agi = 38, sta = 51, int = 80, spi = 86 },
		[44] = { str = 36, agi = 39, sta = 52, int = 82, spi = 87 },
		[45] = { str = 36, agi = 39, sta = 53, int = 84, spi = 89 },
		[46] = { str = 37, agi = 40, sta = 54, int = 85, spi = 91 },
		[47] = { str = 37, agi = 40, sta = 55, int = 87, spi = 92 },
		[48] = { str = 38, agi = 41, sta = 55, int = 89, spi = 94 },
		[49] = { str = 38, agi = 42, sta = 56, int = 91, spi = 96 },
		[50] = { str = 39, agi = 42, sta = 57, int = 92, spi = 98 },
		[51] = { str = 39, agi = 43, sta = 58, int = 94, spi = 100 },
		[52] = { str = 40, agi = 44, sta = 59, int = 96, spi = 101 },
		[53] = { str = 40, agi = 44, sta = 60, int = 98, spi = 103 },
		[54] = { str = 41, agi = 45, sta = 61, int = 100, spi = 105 },
		[55] = { str = 41, agi = 45, sta = 62, int = 102, spi = 107 },
		[56] = { str = 42, agi = 46, sta = 63, int = 103, spi = 109 },
		[57] = { str = 42, agi = 47, sta = 64, int = 105, spi = 111 },
		[58] = { str = 43, agi = 47, sta = 65, int = 107, spi = 112 },
		[59] = { str = 43, agi = 48, sta = 66, int = 109, spi = 114 },
		[60] = { str = 44, agi = 49, sta = 67, int = 111, spi = 116 },
		[61] = { str = 45, agi = 50, sta = 68, int = 113, spi = 118 },
		[62] = { str = 45, agi = 50, sta = 69, int = 115, spi = 120 },
		[63] = { str = 46, agi = 51, sta = 70, int = 117, spi = 122 },
		[64] = { str = 46, agi = 52, sta = 71, int = 119, spi = 124 },
		[65] = { str = 47, agi = 52, sta = 72, int = 121, spi = 126 },
		[66] = { str = 48, agi = 53, sta = 73, int = 123, spi = 128 },
		[67] = { str = 48, agi = 54, sta = 74, int = 125, spi = 130 },
		[68] = { str = 49, agi = 55, sta = 75, int = 127, spi = 132 },
		[69] = { str = 49, agi = 55, sta = 76, int = 129, spi = 134 },
		[70] = { str = 50, agi = 56, sta = 77, int = 131, spi = 136 }
	},
},
Tauren = {
	WARRIOR = {
		[1] = { str = 28, agi = 15, sta = 24, int = 15, spi = 22 },
		[2] = { str = 29, agi = 16, sta = 25, int = 15, spi = 22 },
		[3] = { str = 31, agi = 17, sta = 26, int = 15, spi = 23 },
		[4] = { str = 32, agi = 17, sta = 27, int = 15, spi = 23 },
		[5] = { str = 33, agi = 18, sta = 29, int = 15, spi = 23 },
		[6] = { str = 34, agi = 19, sta = 30, int = 15, spi = 23 },
		[7] = { str = 36, agi = 20, sta = 31, int = 16, spi = 24 },
		[8] = { str = 37, agi = 21, sta = 32, int = 16, spi = 24 },
		[9] = { str = 38, agi = 22, sta = 34, int = 16, spi = 24 },
		[10] = { str = 40, agi = 22, sta = 35, int = 16, spi = 25 },
		[11] = { str = 41, agi = 23, sta = 36, int = 16, spi = 25 },
		[12] = { str = 43, agi = 24, sta = 37, int = 16, spi = 25 },
		[13] = { str = 44, agi = 25, sta = 39, int = 16, spi = 26 },
		[14] = { str = 46, agi = 26, sta = 40, int = 16, spi = 26 },
		[15] = { str = 47, agi = 27, sta = 41, int = 17, spi = 26 },
		[16] = { str = 48, agi = 28, sta = 43, int = 17, spi = 27 },
		[17] = { str = 50, agi = 29, sta = 44, int = 17, spi = 27 },
		[18] = { str = 51, agi = 30, sta = 45, int = 17, spi = 27 },
		[19] = { str = 53, agi = 31, sta = 47, int = 17, spi = 28 },
		[20] = { str = 54, agi = 32, sta = 48, int = 17, spi = 28 },
		[21] = { str = 56, agi = 33, sta = 50, int = 17, spi = 28 },
		[22] = { str = 58, agi = 34, sta = 51, int = 18, spi = 29 },
		[23] = { str = 59, agi = 35, sta = 52, int = 18, spi = 29 },
		[24] = { str = 61, agi = 36, sta = 54, int = 18, spi = 30 },
		[25] = { str = 62, agi = 37, sta = 55, int = 18, spi = 30 },
		[26] = { str = 64, agi = 38, sta = 57, int = 18, spi = 30 },
		[27] = { str = 66, agi = 39, sta = 58, int = 18, spi = 31 },
		[28] = { str = 67, agi = 40, sta = 60, int = 18, spi = 31 },
		[29] = { str = 69, agi = 41, sta = 61, int = 19, spi = 32 },
		[30] = { str = 71, agi = 42, sta = 63, int = 19, spi = 32 },
		[31] = { str = 72, agi = 43, sta = 64, int = 19, spi = 32 },
		[32] = { str = 74, agi = 44, sta = 66, int = 19, spi = 33 },
		[33] = { str = 76, agi = 45, sta = 67, int = 19, spi = 33 },
		[34] = { str = 77, agi = 46, sta = 69, int = 20, spi = 34 },
		[35] = { str = 79, agi = 47, sta = 71, int = 20, spi = 34 },
		[36] = { str = 81, agi = 48, sta = 72, int = 20, spi = 35 },
		[37] = { str = 83, agi = 49, sta = 74, int = 20, spi = 35 },
		[38] = { str = 85, agi = 50, sta = 76, int = 20, spi = 35 },
		[39] = { str = 86, agi = 51, sta = 77, int = 21, spi = 36 },
		[40] = { str = 88, agi = 53, sta = 79, int = 21, spi = 36 },
		[41] = { str = 90, agi = 54, sta = 81, int = 21, spi = 37 },
		[42] = { str = 92, agi = 55, sta = 82, int = 21, spi = 37 },
		[43] = { str = 94, agi = 56, sta = 84, int = 21, spi = 38 },
		[44] = { str = 96, agi = 57, sta = 86, int = 22, spi = 38 },
		[45] = { str = 98, agi = 58, sta = 87, int = 22, spi = 39 },
		[46] = { str = 99, agi = 60, sta = 89, int = 22, spi = 39 },
		[47] = { str = 101, agi = 61, sta = 91, int = 22, spi = 40 },
		[48] = { str = 103, agi = 62, sta = 93, int = 22, spi = 40 },
		[49] = { str = 105, agi = 63, sta = 94, int = 23, spi = 41 },
		[50] = { str = 107, agi = 65, sta = 96, int = 23, spi = 41 },
		[51] = { str = 109, agi = 66, sta = 98, int = 23, spi = 42 },
		[52] = { str = 111, agi = 67, sta = 100, int = 23, spi = 42 },
		[53] = { str = 113, agi = 68, sta = 102, int = 24, spi = 43 },
		[54] = { str = 115, agi = 70, sta = 104, int = 24, spi = 44 },
		[55] = { str = 117, agi = 71, sta = 105, int = 24, spi = 44 },
		[56] = { str = 119, agi = 72, sta = 107, int = 24, spi = 45 },
		[57] = { str = 122, agi = 73, sta = 109, int = 25, spi = 45 },
		[58] = { str = 124, agi = 75, sta = 111, int = 25, spi = 46 },
		[59] = { str = 126, agi = 76, sta = 113, int = 25, spi = 46 },
		[60] = { str = 128, agi = 77, sta = 115, int = 25, spi = 47 },
		[61] = { str = 130, agi = 79, sta = 117, int = 26, spi = 48 },
		[62] = { str = 132, agi = 80, sta = 119, int = 26, spi = 48 },
		[63] = { str = 134, agi = 81, sta = 121, int = 26, spi = 49 },
		[64] = { str = 137, agi = 83, sta = 123, int = 26, spi = 49 },
		[65] = { str = 139, agi = 84, sta = 125, int = 27, spi = 50 },
		[66] = { str = 141, agi = 85, sta = 127, int = 27, spi = 51 },
		[67] = { str = 143, agi = 87, sta = 129, int = 27, spi = 51 },
		[68] = { str = 145, agi = 88, sta = 131, int = 27, spi = 52 },
		[69] = { str = 148, agi = 90, sta = 133, int = 28, spi = 52 },
		[70] = { str = 150, agi = 91, sta = 135, int = 28, spi = 53 }
	},
	HUNTER = {
		[1] = { str = 25, agi = 18, sta = 23, int = 15, spi = 23 },
		[2] = { str = 25, agi = 19, sta = 24, int = 16, spi = 24 },
		[3] = { str = 26, agi = 21, sta = 25, int = 16, spi = 24 },
		[4] = { str = 26, agi = 22, sta = 26, int = 17, spi = 25 },
		[5] = { str = 27, agi = 24, sta = 27, int = 17, spi = 25 },
		[6] = { str = 27, agi = 25, sta = 28, int = 18, spi = 26 },
		[7] = { str = 28, agi = 26, sta = 28, int = 19, spi = 27 },
		[8] = { str = 28, agi = 28, sta = 29, int = 19, spi = 27 },
		[9] = { str = 28, agi = 29, sta = 30, int = 20, spi = 28 },
		[10] = { str = 29, agi = 31, sta = 31, int = 20, spi = 29 },
		[11] = { str = 29, agi = 32, sta = 32, int = 21, spi = 29 },
		[12] = { str = 30, agi = 34, sta = 33, int = 22, spi = 30 },
		[13] = { str = 30, agi = 35, sta = 34, int = 22, spi = 31 },
		[14] = { str = 31, agi = 37, sta = 35, int = 23, spi = 32 },
		[15] = { str = 31, agi = 38, sta = 36, int = 24, spi = 32 },
		[16] = { str = 32, agi = 40, sta = 37, int = 24, spi = 33 },
		[17] = { str = 32, agi = 41, sta = 39, int = 25, spi = 34 },
		[18] = { str = 33, agi = 43, sta = 40, int = 26, spi = 35 },
		[19] = { str = 33, agi = 45, sta = 41, int = 27, spi = 35 },
		[20] = { str = 34, agi = 46, sta = 42, int = 27, spi = 36 },
		[21] = { str = 34, agi = 48, sta = 43, int = 28, spi = 37 },
		[22] = { str = 35, agi = 50, sta = 44, int = 29, spi = 38 },
		[23] = { str = 35, agi = 51, sta = 45, int = 29, spi = 38 },
		[24] = { str = 36, agi = 53, sta = 46, int = 30, spi = 39 },
		[25] = { str = 37, agi = 55, sta = 47, int = 31, spi = 40 },
		[26] = { str = 37, agi = 56, sta = 48, int = 32, spi = 41 },
		[27] = { str = 38, agi = 58, sta = 50, int = 32, spi = 42 },
		[28] = { str = 38, agi = 60, sta = 51, int = 33, spi = 42 },
		[29] = { str = 39, agi = 62, sta = 52, int = 34, spi = 43 },
		[30] = { str = 39, agi = 63, sta = 53, int = 35, spi = 44 },
		[31] = { str = 40, agi = 65, sta = 54, int = 36, spi = 45 },
		[32] = { str = 41, agi = 67, sta = 56, int = 36, spi = 46 },
		[33] = { str = 41, agi = 69, sta = 57, int = 37, spi = 47 },
		[34] = { str = 42, agi = 71, sta = 58, int = 38, spi = 48 },
		[35] = { str = 43, agi = 72, sta = 59, int = 39, spi = 48 },
		[36] = { str = 43, agi = 74, sta = 61, int = 40, spi = 49 },
		[37] = { str = 44, agi = 76, sta = 62, int = 40, spi = 50 },
		[38] = { str = 45, agi = 78, sta = 63, int = 41, spi = 51 },
		[39] = { str = 45, agi = 80, sta = 64, int = 42, spi = 52 },
		[40] = { str = 46, agi = 82, sta = 66, int = 43, spi = 53 },
		[41] = { str = 47, agi = 84, sta = 67, int = 44, spi = 54 },
		[42] = { str = 47, agi = 86, sta = 68, int = 45, spi = 55 },
		[43] = { str = 48, agi = 88, sta = 70, int = 46, spi = 56 },
		[44] = { str = 49, agi = 90, sta = 71, int = 46, spi = 57 },
		[45] = { str = 49, agi = 92, sta = 72, int = 47, spi = 58 },
		[46] = { str = 50, agi = 94, sta = 74, int = 48, spi = 59 },
		[47] = { str = 51, agi = 96, sta = 75, int = 49, spi = 60 },
		[48] = { str = 51, agi = 98, sta = 77, int = 50, spi = 61 },
		[49] = { str = 52, agi = 100, sta = 78, int = 51, spi = 62 },
		[50] = { str = 53, agi = 102, sta = 79, int = 52, spi = 63 },
		[51] = { str = 54, agi = 104, sta = 81, int = 53, spi = 64 },
		[52] = { str = 54, agi = 106, sta = 82, int = 54, spi = 65 },
		[53] = { str = 55, agi = 108, sta = 84, int = 55, spi = 66 },
		[54] = { str = 56, agi = 110, sta = 85, int = 56, spi = 67 },
		[55] = { str = 57, agi = 112, sta = 87, int = 57, spi = 68 },
		[56] = { str = 57, agi = 114, sta = 88, int = 58, spi = 69 },
		[57] = { str = 58, agi = 117, sta = 90, int = 59, spi = 70 },
		[58] = { str = 59, agi = 119, sta = 91, int = 60, spi = 71 },
		[59] = { str = 60, agi = 121, sta = 93, int = 61, spi = 72 },
		[60] = { str = 61, agi = 123, sta = 94, int = 62, spi = 74 },
		[61] = { str = 61, agi = 125, sta = 96, int = 63, spi = 75 },
		[62] = { str = 62, agi = 128, sta = 97, int = 64, spi = 76 },
		[63] = { str = 63, agi = 130, sta = 99, int = 65, spi = 77 },
		[64] = { str = 64, agi = 132, sta = 100, int = 66, spi = 78 },
		[65] = { str = 65, agi = 134, sta = 102, int = 67, spi = 79 },
		[66] = { str = 66, agi = 137, sta = 104, int = 68, spi = 80 },
		[67] = { str = 66, agi = 139, sta = 105, int = 69, spi = 81 },
		[68] = { str = 67, agi = 141, sta = 107, int = 70, spi = 83 },
		[69] = { str = 68, agi = 144, sta = 108, int = 71, spi = 84 },
		[70] = { str = 69, agi = 146, sta = 110, int = 72, spi = 85 }
	},
	SHAMAN = {
		[1] = { str = 26, agi = 15, sta = 23, int = 16, spi = 24 },
		[2] = { str = 27, agi = 15, sta = 24, int = 17, spi = 25 },
		[3] = { str = 28, agi = 16, sta = 25, int = 18, spi = 26 },
		[4] = { str = 28, agi = 16, sta = 26, int = 19, spi = 27 },
		[5] = { str = 29, agi = 17, sta = 27, int = 20, spi = 28 },
		[6] = { str = 30, agi = 17, sta = 28, int = 21, spi = 29 },
		[7] = { str = 31, agi = 18, sta = 29, int = 22, spi = 30 },
		[8] = { str = 32, agi = 18, sta = 30, int = 23, spi = 31 },
		[9] = { str = 33, agi = 19, sta = 31, int = 24, spi = 32 },
		[10] = { str = 34, agi = 19, sta = 32, int = 25, spi = 33 },
		[11] = { str = 35, agi = 20, sta = 33, int = 26, spi = 35 },
		[12] = { str = 35, agi = 20, sta = 34, int = 27, spi = 36 },
		[13] = { str = 36, agi = 21, sta = 35, int = 28, spi = 37 },
		[14] = { str = 37, agi = 21, sta = 36, int = 29, spi = 38 },
		[15] = { str = 38, agi = 22, sta = 37, int = 30, spi = 39 },
		[16] = { str = 39, agi = 22, sta = 39, int = 31, spi = 40 },
		[17] = { str = 40, agi = 23, sta = 40, int = 32, spi = 42 },
		[18] = { str = 41, agi = 23, sta = 41, int = 33, spi = 43 },
		[19] = { str = 42, agi = 24, sta = 42, int = 34, spi = 44 },
		[20] = { str = 43, agi = 24, sta = 43, int = 35, spi = 45 },
		[21] = { str = 44, agi = 25, sta = 44, int = 36, spi = 46 },
		[22] = { str = 45, agi = 25, sta = 45, int = 37, spi = 48 },
		[23] = { str = 46, agi = 26, sta = 47, int = 38, spi = 49 },
		[24] = { str = 47, agi = 27, sta = 48, int = 40, spi = 50 },
		[25] = { str = 48, agi = 27, sta = 49, int = 41, spi = 51 },
		[26] = { str = 49, agi = 28, sta = 50, int = 42, spi = 53 },
		[27] = { str = 51, agi = 28, sta = 52, int = 43, spi = 54 },
		[28] = { str = 52, agi = 29, sta = 53, int = 44, spi = 55 },
		[29] = { str = 53, agi = 29, sta = 54, int = 45, spi = 57 },
		[30] = { str = 54, agi = 30, sta = 55, int = 47, spi = 58 },
		[31] = { str = 55, agi = 31, sta = 57, int = 48, spi = 59 },
		[32] = { str = 56, agi = 31, sta = 58, int = 49, spi = 61 },
		[33] = { str = 57, agi = 32, sta = 59, int = 50, spi = 62 },
		[34] = { str = 58, agi = 33, sta = 61, int = 51, spi = 64 },
		[35] = { str = 60, agi = 33, sta = 62, int = 53, spi = 65 },
		[36] = { str = 61, agi = 34, sta = 63, int = 54, spi = 66 },
		[37] = { str = 62, agi = 34, sta = 65, int = 55, spi = 68 },
		[38] = { str = 63, agi = 35, sta = 66, int = 57, spi = 69 },
		[39] = { str = 64, agi = 36, sta = 67, int = 58, spi = 71 },
		[40] = { str = 66, agi = 36, sta = 69, int = 59, spi = 72 },
		[41] = { str = 67, agi = 37, sta = 70, int = 60, spi = 74 },
		[42] = { str = 68, agi = 38, sta = 72, int = 62, spi = 75 },
		[43] = { str = 69, agi = 38, sta = 73, int = 63, spi = 77 },
		[44] = { str = 70, agi = 39, sta = 74, int = 64, spi = 78 },
		[45] = { str = 72, agi = 40, sta = 76, int = 66, spi = 80 },
		[46] = { str = 73, agi = 41, sta = 77, int = 67, spi = 81 },
		[47] = { str = 74, agi = 41, sta = 79, int = 69, spi = 83 },
		[48] = { str = 76, agi = 42, sta = 80, int = 70, spi = 84 },
		[49] = { str = 77, agi = 43, sta = 82, int = 71, spi = 86 },
		[50] = { str = 78, agi = 43, sta = 83, int = 73, spi = 88 },
		[51] = { str = 80, agi = 44, sta = 85, int = 74, spi = 89 },
		[52] = { str = 81, agi = 45, sta = 86, int = 76, spi = 91 },
		[53] = { str = 82, agi = 46, sta = 88, int = 77, spi = 92 },
		[54] = { str = 84, agi = 46, sta = 90, int = 78, spi = 94 },
		[55] = { str = 85, agi = 47, sta = 91, int = 80, spi = 96 },
		[56] = { str = 86, agi = 48, sta = 93, int = 81, spi = 97 },
		[57] = { str = 88, agi = 49, sta = 94, int = 83, spi = 99 },
		[58] = { str = 89, agi = 49, sta = 96, int = 84, spi = 101 },
		[59] = { str = 91, agi = 50, sta = 97, int = 86, spi = 102 },
		[60] = { str = 92, agi = 51, sta = 99, int = 87, spi = 104 },
		[61] = { str = 94, agi = 52, sta = 101, int = 89, spi = 106 },
		[62] = { str = 95, agi = 52, sta = 102, int = 90, spi = 108 },
		[63] = { str = 96, agi = 53, sta = 104, int = 92, spi = 109 },
		[64] = { str = 98, agi = 54, sta = 106, int = 93, spi = 111 },
		[65] = { str = 99, agi = 55, sta = 107, int = 95, spi = 113 },
		[66] = { str = 101, agi = 56, sta = 109, int = 97, spi = 115 },
		[67] = { str = 102, agi = 57, sta = 111, int = 98, spi = 117 },
		[68] = { str = 104, agi = 57, sta = 113, int = 100, spi = 118 },
		[69] = { str = 105, agi = 58, sta = 114, int = 101, spi = 120 },
		[70] = { str = 107, agi = 59, sta = 116, int = 103, spi = 122 }
	},
	DRUID = {
		[1] = { str = 26, agi = 15, sta = 22, int = 17, spi = 24 },
		[2] = { str = 27, agi = 16, sta = 23, int = 18, spi = 25 },
		[3] = { str = 27, agi = 16, sta = 23, int = 19, spi = 26 },
		[4] = { str = 28, agi = 17, sta = 24, int = 20, spi = 27 },
		[5] = { str = 28, agi = 17, sta = 25, int = 21, spi = 29 },
		[6] = { str = 29, agi = 18, sta = 25, int = 22, spi = 30 },
		[7] = { str = 29, agi = 18, sta = 26, int = 23, spi = 31 },
		[8] = { str = 30, agi = 19, sta = 27, int = 24, spi = 32 },
		[9] = { str = 30, agi = 19, sta = 27, int = 26, spi = 34 },
		[10] = { str = 31, agi = 20, sta = 28, int = 27, spi = 35 },
		[11] = { str = 32, agi = 20, sta = 29, int = 28, spi = 36 },
		[12] = { str = 32, agi = 21, sta = 29, int = 29, spi = 37 },
		[13] = { str = 33, agi = 21, sta = 30, int = 30, spi = 39 },
		[14] = { str = 33, agi = 22, sta = 31, int = 31, spi = 40 },
		[15] = { str = 34, agi = 23, sta = 32, int = 32, spi = 41 },
		[16] = { str = 35, agi = 23, sta = 32, int = 34, spi = 43 },
		[17] = { str = 35, agi = 24, sta = 33, int = 35, spi = 44 },
		[18] = { str = 36, agi = 24, sta = 34, int = 36, spi = 45 },
		[19] = { str = 37, agi = 25, sta = 35, int = 37, spi = 47 },
		[20] = { str = 37, agi = 26, sta = 35, int = 39, spi = 48 },
		[21] = { str = 38, agi = 26, sta = 36, int = 40, spi = 50 },
		[22] = { str = 39, agi = 27, sta = 37, int = 41, spi = 51 },
		[23] = { str = 39, agi = 28, sta = 38, int = 42, spi = 52 },
		[24] = { str = 40, agi = 28, sta = 39, int = 44, spi = 54 },
		[25] = { str = 41, agi = 29, sta = 39, int = 45, spi = 55 },
		[26] = { str = 41, agi = 30, sta = 40, int = 46, spi = 57 },
		[27] = { str = 42, agi = 30, sta = 41, int = 47, spi = 58 },
		[28] = { str = 43, agi = 31, sta = 42, int = 49, spi = 60 },
		[29] = { str = 44, agi = 32, sta = 43, int = 50, spi = 61 },
		[30] = { str = 44, agi = 32, sta = 44, int = 52, spi = 63 },
		[31] = { str = 45, agi = 33, sta = 44, int = 53, spi = 64 },
		[32] = { str = 46, agi = 34, sta = 45, int = 54, spi = 66 },
		[33] = { str = 47, agi = 34, sta = 46, int = 56, spi = 67 },
		[34] = { str = 47, agi = 35, sta = 47, int = 57, spi = 69 },
		[35] = { str = 48, agi = 36, sta = 48, int = 58, spi = 71 },
		[36] = { str = 49, agi = 36, sta = 49, int = 60, spi = 72 },
		[37] = { str = 50, agi = 37, sta = 50, int = 61, spi = 74 },
		[38] = { str = 51, agi = 38, sta = 51, int = 63, spi = 76 },
		[39] = { str = 52, agi = 39, sta = 52, int = 64, spi = 77 },
		[40] = { str = 52, agi = 39, sta = 53, int = 66, spi = 79 },
		[41] = { str = 53, agi = 40, sta = 54, int = 67, spi = 81 },
		[42] = { str = 54, agi = 41, sta = 55, int = 69, spi = 82 },
		[43] = { str = 55, agi = 42, sta = 56, int = 70, spi = 84 },
		[44] = { str = 56, agi = 43, sta = 57, int = 72, spi = 86 },
		[45] = { str = 57, agi = 43, sta = 57, int = 73, spi = 87 },
		[46] = { str = 57, agi = 44, sta = 58, int = 75, spi = 89 },
		[47] = { str = 58, agi = 45, sta = 60, int = 76, spi = 91 },
		[48] = { str = 59, agi = 46, sta = 61, int = 78, spi = 93 },
		[49] = { str = 60, agi = 47, sta = 62, int = 79, spi = 94 },
		[50] = { str = 61, agi = 47, sta = 63, int = 81, spi = 96 },
		[51] = { str = 62, agi = 48, sta = 64, int = 83, spi = 98 },
		[52] = { str = 63, agi = 49, sta = 65, int = 84, spi = 100 },
		[53] = { str = 64, agi = 50, sta = 66, int = 86, spi = 102 },
		[54] = { str = 65, agi = 51, sta = 67, int = 87, spi = 104 },
		[55] = { str = 66, agi = 51, sta = 68, int = 89, spi = 105 },
		[56] = { str = 67, agi = 52, sta = 69, int = 91, spi = 107 },
		[57] = { str = 68, agi = 53, sta = 70, int = 92, spi = 109 },
		[58] = { str = 69, agi = 54, sta = 71, int = 94, spi = 111 },
		[59] = { str = 70, agi = 55, sta = 72, int = 96, spi = 113 },
		[60] = { str = 71, agi = 56, sta = 73, int = 97, spi = 115 },
		[61] = { str = 72, agi = 57, sta = 74, int = 99, spi = 117 },
		[62] = { str = 73, agi = 58, sta = 76, int = 101, spi = 119 },
		[63] = { str = 74, agi = 59, sta = 77, int = 103, spi = 121 },
		[64] = { str = 75, agi = 59, sta = 78, int = 104, spi = 123 },
		[65] = { str = 76, agi = 60, sta = 79, int = 106, spi = 125 },
		[66] = { str = 77, agi = 61, sta = 80, int = 108, spi = 127 },
		[67] = { str = 78, agi = 62, sta = 81, int = 110, spi = 129 },
		[68] = { str = 79, agi = 63, sta = 83, int = 111, spi = 131 },
		[69] = { str = 80, agi = 64, sta = 84, int = 113, spi = 133 },
		[70] = { str = 81, agi = 65, sta = 85, int = 115, spi = 135 }
	},	
},
Gnome = {
	WARRIOR = {
		[1] = { str = 18, agi = 23, sta = 21, int = 24, spi = 20 },
		[2] = { str = 19, agi = 24, sta = 22, int = 24, spi = 20 },
		[3] = { str = 21, agi = 25, sta = 23, int = 24, spi = 21 },
		[4] = { str = 22, agi = 25, sta = 25, int = 24, spi = 21 },
		[5] = { str = 23, agi = 26, sta = 26, int = 24, spi = 21 },
		[6] = { str = 25, agi = 27, sta = 27, int = 24, spi = 21 },
		[7] = { str = 26, agi = 28, sta = 28, int = 24, spi = 22 },
		[8] = { str = 27, agi = 29, sta = 29, int = 25, spi = 22 },
		[9] = { str = 29, agi = 29, sta = 31, int = 25, spi = 22 },
		[10] = { str = 30, agi = 30, sta = 32, int = 25, spi = 23 },
		[11] = { str = 32, agi = 31, sta = 33, int = 25, spi = 23 },
		[12] = { str = 33, agi = 32, sta = 34, int = 25, spi = 23 },
		[13] = { str = 34, agi = 33, sta = 36, int = 25, spi = 24 },
		[14] = { str = 36, agi = 34, sta = 37, int = 25, spi = 24 },
		[15] = { str = 37, agi = 35, sta = 38, int = 25, spi = 24 },
		[16] = { str = 39, agi = 36, sta = 40, int = 25, spi = 25 },
		[17] = { str = 40, agi = 36, sta = 41, int = 25, spi = 25 },
		[18] = { str = 42, agi = 37, sta = 43, int = 26, spi = 25 },
		[19] = { str = 43, agi = 38, sta = 44, int = 26, spi = 26 },
		[20] = { str = 45, agi = 39, sta = 45, int = 26, spi = 26 },
		[21] = { str = 47, agi = 40, sta = 47, int = 26, spi = 26 },
		[22] = { str = 48, agi = 41, sta = 48, int = 26, spi = 27 },
		[23] = { str = 50, agi = 42, sta = 50, int = 26, spi = 27 },
		[24] = { str = 51, agi = 43, sta = 51, int = 26, spi = 28 },
		[25] = { str = 53, agi = 44, sta = 52, int = 27, spi = 28 },
		[26] = { str = 55, agi = 45, sta = 54, int = 27, spi = 28 },
		[27] = { str = 56, agi = 46, sta = 55, int = 27, spi = 29 },
		[28] = { str = 58, agi = 47, sta = 57, int = 27, spi = 29 },
		[29] = { str = 59, agi = 48, sta = 58, int = 27, spi = 30 },
		[30] = { str = 61, agi = 49, sta = 60, int = 27, spi = 30 },
		[31] = { str = 63, agi = 50, sta = 62, int = 27, spi = 30 },
		[32] = { str = 65, agi = 51, sta = 63, int = 28, spi = 31 },
		[33] = { str = 66, agi = 52, sta = 65, int = 28, spi = 31 },
		[34] = { str = 68, agi = 53, sta = 66, int = 28, spi = 32 },
		[35] = { str = 70, agi = 55, sta = 68, int = 28, spi = 32 },
		[36] = { str = 72, agi = 56, sta = 69, int = 28, spi = 33 },
		[37] = { str = 73, agi = 57, sta = 71, int = 29, spi = 33 },
		[38] = { str = 75, agi = 58, sta = 73, int = 29, spi = 34 },
		[39] = { str = 77, agi = 59, sta = 74, int = 29, spi = 34 },
		[40] = { str = 79, agi = 60, sta = 76, int = 29, spi = 35 },
		[41] = { str = 81, agi = 61, sta = 78, int = 29, spi = 35 },
		[42] = { str = 82, agi = 62, sta = 79, int = 30, spi = 35 },
		[43] = { str = 84, agi = 64, sta = 81, int = 30, spi = 36 },
		[44] = { str = 86, agi = 65, sta = 83, int = 30, spi = 36 },
		[45] = { str = 88, agi = 66, sta = 85, int = 30, spi = 37 },
		[46] = { str = 90, agi = 67, sta = 86, int = 30, spi = 37 },
		[47] = { str = 92, agi = 68, sta = 88, int = 31, spi = 38 },
		[48] = { str = 94, agi = 70, sta = 90, int = 31, spi = 38 },
		[49] = { str = 96, agi = 71, sta = 92, int = 31, spi = 39 },
		[50] = { str = 98, agi = 72, sta = 93, int = 31, spi = 40 },
		[51] = { str = 100, agi = 73, sta = 95, int = 32, spi = 40 },
		[52] = { str = 102, agi = 75, sta = 97, int = 32, spi = 41 },
		[53] = { str = 104, agi = 76, sta = 99, int = 32, spi = 41 },
		[54] = { str = 106, agi = 77, sta = 101, int = 32, spi = 42 },
		[55] = { str = 108, agi = 78, sta = 103, int = 33, spi = 42 },
		[56] = { str = 110, agi = 80, sta = 104, int = 33, spi = 43 },
		[57] = { str = 112, agi = 81, sta = 106, int = 33, spi = 43 },
		[58] = { str = 114, agi = 82, sta = 108, int = 33, spi = 44 },
		[59] = { str = 116, agi = 84, sta = 110, int = 34, spi = 44 },
		[60] = { str = 118, agi = 85, sta = 112, int = 34, spi = 45 },
		[61] = { str = 120, agi = 86, sta = 114, int = 34, spi = 46 },
		[62] = { str = 122, agi = 88, sta = 116, int = 35, spi = 46 },
		[63] = { str = 125, agi = 89, sta = 118, int = 35, spi = 47 },
		[64] = { str = 127, agi = 91, sta = 120, int = 35, spi = 47 },
		[65] = { str = 129, agi = 92, sta = 122, int = 35, spi = 48 },
		[66] = { str = 131, agi = 93, sta = 124, int = 36, spi = 49 },
		[67] = { str = 133, agi = 95, sta = 126, int = 36, spi = 49 },
		[68] = { str = 136, agi = 96, sta = 128, int = 36, spi = 50 },
		[69] = { str = 138, agi = 98, sta = 130, int = 37, spi = 50 },
		[70] = { str = 140, agi = 99, sta = 132, int = 37, spi = 51 }
	},
	ROGUE = {
		[1] = { str = 16, agi = 26, sta = 20, int = 24, spi = 20 },
		[2] = { str = 17, agi = 27, sta = 21, int = 24, spi = 20 },
		[3] = { str = 18, agi = 29, sta = 21, int = 24, spi = 21 },
		[4] = { str = 18, agi = 30, sta = 22, int = 24, spi = 21 },
		[5] = { str = 19, agi = 32, sta = 23, int = 25, spi = 21 },
		[6] = { str = 20, agi = 33, sta = 24, int = 25, spi = 22 },
		[7] = { str = 21, agi = 35, sta = 24, int = 25, spi = 22 },
		[8] = { str = 22, agi = 36, sta = 25, int = 25, spi = 23 },
		[9] = { str = 22, agi = 38, sta = 26, int = 25, spi = 23 },
		[10] = { str = 23, agi = 39, sta = 26, int = 25, spi = 23 },
		[11] = { str = 24, agi = 41, sta = 27, int = 25, spi = 24 },
		[12] = { str = 25, agi = 42, sta = 28, int = 26, spi = 24 },
		[13] = { str = 26, agi = 44, sta = 29, int = 26, spi = 25 },
		[14] = { str = 27, agi = 46, sta = 30, int = 26, spi = 25 },
		[15] = { str = 28, agi = 47, sta = 30, int = 26, spi = 25 },
		[16] = { str = 28, agi = 49, sta = 31, int = 26, spi = 26 },
		[17] = { str = 29, agi = 50, sta = 32, int = 27, spi = 26 },
		[18] = { str = 30, agi = 52, sta = 33, int = 27, spi = 27 },
		[19] = { str = 31, agi = 54, sta = 34, int = 27, spi = 27 },
		[20] = { str = 32, agi = 56, sta = 35, int = 27, spi = 28 },
		[21] = { str = 33, agi = 57, sta = 35, int = 27, spi = 28 },
		[22] = { str = 34, agi = 59, sta = 36, int = 28, spi = 29 },
		[23] = { str = 35, agi = 61, sta = 37, int = 28, spi = 29 },
		[24] = { str = 36, agi = 62, sta = 38, int = 28, spi = 30 },
		[25] = { str = 37, agi = 64, sta = 39, int = 28, spi = 30 },
		[26] = { str = 38, agi = 66, sta = 40, int = 29, spi = 31 },
		[27] = { str = 39, agi = 68, sta = 41, int = 29, spi = 31 },
		[28] = { str = 40, agi = 70, sta = 42, int = 29, spi = 32 },
		[29] = { str = 41, agi = 72, sta = 43, int = 29, spi = 32 },
		[30] = { str = 42, agi = 73, sta = 43, int = 29, spi = 33 },
		[31] = { str = 43, agi = 75, sta = 44, int = 30, spi = 33 },
		[32] = { str = 44, agi = 77, sta = 45, int = 30, spi = 34 },
		[33] = { str = 45, agi = 79, sta = 46, int = 30, spi = 34 },
		[34] = { str = 46, agi = 81, sta = 47, int = 31, spi = 35 },
		[35] = { str = 47, agi = 83, sta = 48, int = 31, spi = 35 },
		[36] = { str = 48, agi = 85, sta = 49, int = 31, spi = 36 },
		[37] = { str = 49, agi = 87, sta = 50, int = 31, spi = 36 },
		[38] = { str = 50, agi = 89, sta = 51, int = 32, spi = 37 },
		[39] = { str = 51, agi = 91, sta = 52, int = 32, spi = 38 },
		[40] = { str = 53, agi = 93, sta = 53, int = 32, spi = 38 },
		[41] = { str = 54, agi = 95, sta = 54, int = 33, spi = 39 },
		[42] = { str = 55, agi = 97, sta = 55, int = 33, spi = 39 },
		[43] = { str = 56, agi = 99, sta = 56, int = 33, spi = 40 },
		[44] = { str = 57, agi = 101, sta = 57, int = 33, spi = 40 },
		[45] = { str = 58, agi = 103, sta = 59, int = 34, spi = 41 },
		[46] = { str = 59, agi = 105, sta = 60, int = 34, spi = 42 },
		[47] = { str = 61, agi = 107, sta = 61, int = 34, spi = 42 },
		[48] = { str = 62, agi = 110, sta = 62, int = 35, spi = 43 },
		[49] = { str = 63, agi = 112, sta = 63, int = 35, spi = 44 },
		[50] = { str = 64, agi = 114, sta = 64, int = 35, spi = 44 },
		[51] = { str = 65, agi = 116, sta = 65, int = 36, spi = 45 },
		[52] = { str = 67, agi = 118, sta = 66, int = 36, spi = 45 },
		[53] = { str = 68, agi = 121, sta = 67, int = 36, spi = 46 },
		[54] = { str = 69, agi = 123, sta = 69, int = 37, spi = 47 },
		[55] = { str = 70, agi = 125, sta = 70, int = 37, spi = 47 },
		[56] = { str = 72, agi = 127, sta = 71, int = 37, spi = 48 },
		[57] = { str = 73, agi = 130, sta = 72, int = 38, spi = 49 },
		[58] = { str = 74, agi = 132, sta = 73, int = 38, spi = 49 },
		[59] = { str = 75, agi = 134, sta = 74, int = 39, spi = 50 },
		[60] = { str = 77, agi = 137, sta = 76, int = 39, spi = 51 },
		[61] = { str = 78, agi = 139, sta = 77, int = 39, spi = 51 },
		[62] = { str = 79, agi = 141, sta = 78, int = 40, spi = 52 },
		[63] = { str = 81, agi = 144, sta = 79, int = 40, spi = 53 },
		[64] = { str = 82, agi = 146, sta = 80, int = 41, spi = 54 },
		[65] = { str = 83, agi = 149, sta = 82, int = 41, spi = 54 },
		[66] = { str = 85, agi = 151, sta = 83, int = 41, spi = 55 },
		[67] = { str = 86, agi = 154, sta = 84, int = 42, spi = 56 },
		[68] = { str = 87, agi = 156, sta = 85, int = 42, spi = 57 },
		[69] = { str = 89, agi = 158, sta = 87, int = 43, spi = 57 },
		[70] = { str = 90, agi = 161, sta = 88, int = 43, spi = 58 }
	},
	MAGE = {
		[1] = { str = 15, agi = 23, sta = 19, int = 27, spi = 22 },
		[2] = { str = 15, agi = 23, sta = 19, int = 28, spi = 23 },
		[3] = { str = 15, agi = 23, sta = 20, int = 30, spi = 25 },
		[4] = { str = 15, agi = 23, sta = 20, int = 31, spi = 26 },
		[5] = { str = 15, agi = 24, sta = 20, int = 32, spi = 27 },
		[6] = { str = 15, agi = 24, sta = 20, int = 34, spi = 29 },
		[7] = { str = 16, agi = 24, sta = 21, int = 35, spi = 30 },
		[8] = { str = 16, agi = 24, sta = 21, int = 37, spi = 31 },
		[9] = { str = 16, agi = 24, sta = 21, int = 38, spi = 33 },
		[10] = { str = 16, agi = 24, sta = 22, int = 40, spi = 34 },
		[11] = { str = 16, agi = 25, sta = 22, int = 41, spi = 36 },
		[12] = { str = 16, agi = 25, sta = 22, int = 42, spi = 37 },
		[13] = { str = 16, agi = 25, sta = 23, int = 44, spi = 38 },
		[14] = { str = 16, agi = 25, sta = 23, int = 45, spi = 40 },
		[15] = { str = 17, agi = 25, sta = 23, int = 47, spi = 41 },
		[16] = { str = 17, agi = 25, sta = 24, int = 49, spi = 43 },
		[17] = { str = 17, agi = 26, sta = 24, int = 50, spi = 44 },
		[18] = { str = 17, agi = 26, sta = 24, int = 52, spi = 46 },
		[19] = { str = 17, agi = 26, sta = 25, int = 53, spi = 47 },
		[20] = { str = 17, agi = 26, sta = 25, int = 55, spi = 49 },
		[21] = { str = 17, agi = 26, sta = 26, int = 57, spi = 51 },
		[22] = { str = 18, agi = 27, sta = 26, int = 58, spi = 52 },
		[23] = { str = 18, agi = 27, sta = 26, int = 60, spi = 54 },
		[24] = { str = 18, agi = 27, sta = 27, int = 61, spi = 55 },
		[25] = { str = 18, agi = 27, sta = 27, int = 63, spi = 57 },
		[26] = { str = 18, agi = 28, sta = 27, int = 65, spi = 59 },
		[27] = { str = 18, agi = 28, sta = 28, int = 67, spi = 60 },
		[28] = { str = 18, agi = 28, sta = 28, int = 68, spi = 62 },
		[29] = { str = 19, agi = 28, sta = 29, int = 70, spi = 64 },
		[30] = { str = 19, agi = 29, sta = 29, int = 72, spi = 65 },
		[31] = { str = 19, agi = 29, sta = 30, int = 74, spi = 67 },
		[32] = { str = 19, agi = 29, sta = 30, int = 75, spi = 69 },
		[33] = { str = 19, agi = 29, sta = 30, int = 77, spi = 70 },
		[34] = { str = 20, agi = 30, sta = 31, int = 79, spi = 72 },
		[35] = { str = 20, agi = 30, sta = 31, int = 81, spi = 74 },
		[36] = { str = 20, agi = 30, sta = 32, int = 83, spi = 76 },
		[37] = { str = 20, agi = 30, sta = 32, int = 85, spi = 78 },
		[38] = { str = 20, agi = 31, sta = 33, int = 86, spi = 79 },
		[39] = { str = 21, agi = 31, sta = 33, int = 88, spi = 81 },
		[40] = { str = 21, agi = 31, sta = 34, int = 90, spi = 83 },
		[41] = { str = 21, agi = 32, sta = 34, int = 92, spi = 85 },
		[42] = { str = 21, agi = 32, sta = 35, int = 94, spi = 87 },
		[43] = { str = 21, agi = 32, sta = 35, int = 96, spi = 89 },
		[44] = { str = 22, agi = 32, sta = 36, int = 98, spi = 91 },
		[45] = { str = 22, agi = 33, sta = 36, int = 100, spi = 92 },
		[46] = { str = 22, agi = 33, sta = 37, int = 102, spi = 94 },
		[47] = { str = 22, agi = 33, sta = 37, int = 104, spi = 96 },
		[48] = { str = 22, agi = 34, sta = 38, int = 106, spi = 98 },
		[49] = { str = 23, agi = 34, sta = 38, int = 108, spi = 100 },
		[50] = { str = 23, agi = 34, sta = 39, int = 110, spi = 102 },
		[51] = { str = 23, agi = 35, sta = 39, int = 112, spi = 104 },
		[52] = { str = 23, agi = 35, sta = 40, int = 114, spi = 106 },
		[53] = { str = 24, agi = 35, sta = 40, int = 117, spi = 108 },
		[54] = { str = 24, agi = 36, sta = 41, int = 119, spi = 110 },
		[55] = { str = 24, agi = 36, sta = 41, int = 121, spi = 112 },
		[56] = { str = 24, agi = 37, sta = 42, int = 123, spi = 114 },
		[57] = { str = 25, agi = 37, sta = 42, int = 125, spi = 117 },
		[58] = { str = 25, agi = 37, sta = 43, int = 127, spi = 119 },
		[59] = { str = 25, agi = 38, sta = 43, int = 130, spi = 121 },
		[60] = { str = 25, agi = 38, sta = 44, int = 132, spi = 123 },
		[61] = { str = 26, agi = 38, sta = 45, int = 134, spi = 125 },
		[62] = { str = 26, agi = 39, sta = 45, int = 136, spi = 127 },
		[63] = { str = 26, agi = 39, sta = 46, int = 139, spi = 129 },
		[64] = { str = 26, agi = 40, sta = 46, int = 141, spi = 132 },
		[65] = { str = 27, agi = 40, sta = 47, int = 143, spi = 134 },
		[66] = { str = 27, agi = 40, sta = 48, int = 146, spi = 136 },
		[67] = { str = 27, agi = 41, sta = 48, int = 148, spi = 138 },
		[68] = { str = 27, agi = 41, sta = 49, int = 150, spi = 140 },
		[69] = { str = 28, agi = 42, sta = 49, int = 153, spi = 143 },
		[70] = { str = 28, agi = 42, sta = 50, int = 155, spi = 145 }
	},
	WARLOCK = {
		[1] = { str = 15, agi = 23, sta = 20, int = 26, spi = 22 },
		[2] = { str = 15, agi = 23, sta = 21, int = 27, spi = 23 },
		[3] = { str = 16, agi = 24, sta = 21, int = 28, spi = 24 },
		[4] = { str = 16, agi = 24, sta = 22, int = 29, spi = 25 },
		[5] = { str = 16, agi = 24, sta = 22, int = 31, spi = 27 },
		[6] = { str = 17, agi = 25, sta = 23, int = 32, spi = 28 },
		[7] = { str = 17, agi = 25, sta = 23, int = 33, spi = 29 },
		[8] = { str = 17, agi = 26, sta = 24, int = 34, spi = 30 },
		[9] = { str = 17, agi = 26, sta = 25, int = 36, spi = 31 },
		[10] = { str = 18, agi = 26, sta = 25, int = 37, spi = 33 },
		[11] = { str = 18, agi = 27, sta = 26, int = 38, spi = 34 },
		[12] = { str = 18, agi = 27, sta = 26, int = 39, spi = 35 },
		[13] = { str = 19, agi = 28, sta = 27, int = 41, spi = 36 },
		[14] = { str = 19, agi = 28, sta = 28, int = 42, spi = 38 },
		[15] = { str = 20, agi = 28, sta = 28, int = 43, spi = 39 },
		[16] = { str = 20, agi = 29, sta = 29, int = 45, spi = 40 },
		[17] = { str = 20, agi = 29, sta = 30, int = 46, spi = 42 },
		[18] = { str = 21, agi = 30, sta = 30, int = 47, spi = 43 },
		[19] = { str = 21, agi = 30, sta = 31, int = 49, spi = 44 },
		[20] = { str = 21, agi = 31, sta = 32, int = 50, spi = 46 },
		[21] = { str = 22, agi = 31, sta = 32, int = 51, spi = 47 },
		[22] = { str = 22, agi = 31, sta = 33, int = 53, spi = 49 },
		[23] = { str = 23, agi = 32, sta = 34, int = 54, spi = 50 },
		[24] = { str = 23, agi = 32, sta = 34, int = 56, spi = 51 },
		[25] = { str = 23, agi = 33, sta = 35, int = 57, spi = 53 },
		[26] = { str = 24, agi = 33, sta = 36, int = 59, spi = 54 },
		[27] = { str = 24, agi = 34, sta = 37, int = 60, spi = 56 },
		[28] = { str = 25, agi = 34, sta = 37, int = 62, spi = 57 },
		[29] = { str = 25, agi = 35, sta = 38, int = 63, spi = 59 },
		[30] = { str = 25, agi = 35, sta = 39, int = 65, spi = 60 },
		[31] = { str = 26, agi = 36, sta = 40, int = 66, spi = 62 },
		[32] = { str = 26, agi = 36, sta = 40, int = 68, spi = 63 },
		[33] = { str = 27, agi = 37, sta = 41, int = 69, spi = 65 },
		[34] = { str = 27, agi = 38, sta = 42, int = 71, spi = 66 },
		[35] = { str = 28, agi = 38, sta = 43, int = 73, spi = 68 },
		[36] = { str = 28, agi = 39, sta = 43, int = 74, spi = 69 },
		[37] = { str = 28, agi = 39, sta = 44, int = 76, spi = 71 },
		[38] = { str = 29, agi = 40, sta = 45, int = 77, spi = 73 },
		[39] = { str = 29, agi = 40, sta = 46, int = 79, spi = 74 },
		[40] = { str = 30, agi = 41, sta = 47, int = 81, spi = 76 },
		[41] = { str = 30, agi = 41, sta = 48, int = 82, spi = 78 },
		[42] = { str = 31, agi = 42, sta = 48, int = 84, spi = 79 },
		[43] = { str = 31, agi = 43, sta = 49, int = 86, spi = 81 },
		[44] = { str = 32, agi = 43, sta = 50, int = 88, spi = 83 },
		[45] = { str = 32, agi = 44, sta = 51, int = 89, spi = 84 },
		[46] = { str = 33, agi = 44, sta = 52, int = 91, spi = 86 },
		[47] = { str = 33, agi = 45, sta = 53, int = 93, spi = 88 },
		[48] = { str = 34, agi = 46, sta = 54, int = 95, spi = 89 },
		[49] = { str = 34, agi = 46, sta = 54, int = 96, spi = 91 },
		[50] = { str = 35, agi = 47, sta = 55, int = 98, spi = 93 },
		[51] = { str = 35, agi = 48, sta = 56, int = 100, spi = 95 },
		[52] = { str = 36, agi = 48, sta = 57, int = 102, spi = 97 },
		[53] = { str = 36, agi = 49, sta = 58, int = 104, spi = 98 },
		[54] = { str = 37, agi = 50, sta = 59, int = 105, spi = 100 },
		[55] = { str = 37, agi = 50, sta = 60, int = 107, spi = 102 },
		[56] = { str = 38, agi = 51, sta = 61, int = 109, spi = 104 },
		[57] = { str = 38, agi = 52, sta = 62, int = 111, spi = 106 },
		[58] = { str = 39, agi = 52, sta = 63, int = 113, spi = 108 },
		[59] = { str = 40, agi = 53, sta = 64, int = 115, spi = 109 },
		[60] = { str = 40, agi = 54, sta = 65, int = 117, spi = 111 },
		[61] = { str = 41, agi = 54, sta = 66, int = 119, spi = 113 },
		[62] = { str = 41, agi = 55, sta = 67, int = 121, spi = 115 },
		[63] = { str = 42, agi = 56, sta = 68, int = 123, spi = 117 },
		[64] = { str = 42, agi = 57, sta = 69, int = 125, spi = 119 },
		[65] = { str = 43, agi = 57, sta = 70, int = 127, spi = 121 },
		[66] = { str = 44, agi = 58, sta = 71, int = 129, spi = 123 },
		[67] = { str = 44, agi = 59, sta = 72, int = 131, spi = 125 },
		[68] = { str = 45, agi = 59, sta = 73, int = 133, spi = 127 },
		[69] = { str = 45, agi = 60, sta = 74, int = 135, spi = 129 },
		[70] = { str = 46, agi = 61, sta = 75, int = 137, spi = 131 }
	},
},
Troll = {
	WARRIOR = {
		[1] = { str = 24, agi = 22, sta = 23, int = 16, spi = 21 },
		[2] = { str = 25, agi = 23, sta = 24, int = 16, spi = 21 },
		[3] = { str = 27, agi = 24, sta = 25, int = 16, spi = 22 },
		[4] = { str = 28, agi = 24, sta = 26, int = 16, spi = 22 },
		[5] = { str = 29, agi = 25, sta = 28, int = 16, spi = 22 },
		[6] = { str = 31, agi = 26, sta = 29, int = 16, spi = 22 },
		[7] = { str = 32, agi = 27, sta = 30, int = 17, spi = 23 },
		[8] = { str = 33, agi = 28, sta = 31, int = 17, spi = 23 },
		[9] = { str = 35, agi = 28, sta = 33, int = 17, spi = 23 },
		[10] = { str = 36, agi = 29, sta = 34, int = 17, spi = 24 },
		[11] = { str = 37, agi = 30, sta = 35, int = 17, spi = 24 },
		[12] = { str = 39, agi = 31, sta = 36, int = 17, spi = 24 },
		[13] = { str = 40, agi = 32, sta = 38, int = 17, spi = 25 },
		[14] = { str = 42, agi = 33, sta = 39, int = 17, spi = 25 },
		[15] = { str = 43, agi = 34, sta = 40, int = 18, spi = 25 },
		[16] = { str = 45, agi = 35, sta = 42, int = 18, spi = 26 },
		[17] = { str = 46, agi = 35, sta = 43, int = 18, spi = 26 },
		[18] = { str = 48, agi = 36, sta = 44, int = 18, spi = 26 },
		[19] = { str = 49, agi = 37, sta = 46, int = 18, spi = 27 },
		[20] = { str = 51, agi = 38, sta = 47, int = 18, spi = 27 },
		[21] = { str = 52, agi = 39, sta = 49, int = 18, spi = 27 },
		[22] = { str = 54, agi = 40, sta = 50, int = 18, spi = 28 },
		[23] = { str = 55, agi = 41, sta = 51, int = 19, spi = 28 },
		[24] = { str = 57, agi = 42, sta = 53, int = 19, spi = 29 },
		[25] = { str = 59, agi = 43, sta = 54, int = 19, spi = 29 },
		[26] = { str = 60, agi = 44, sta = 56, int = 19, spi = 29 },
		[27] = { str = 62, agi = 45, sta = 57, int = 19, spi = 30 },
		[28] = { str = 63, agi = 46, sta = 59, int = 19, spi = 30 },
		[29] = { str = 65, agi = 47, sta = 60, int = 20, spi = 31 },
		[30] = { str = 67, agi = 48, sta = 62, int = 20, spi = 31 },
		[31] = { str = 69, agi = 49, sta = 63, int = 20, spi = 31 },
		[32] = { str = 70, agi = 50, sta = 65, int = 20, spi = 32 },
		[33] = { str = 72, agi = 51, sta = 67, int = 20, spi = 32 },
		[34] = { str = 74, agi = 53, sta = 68, int = 20, spi = 33 },
		[35] = { str = 75, agi = 54, sta = 70, int = 21, spi = 33 },
		[36] = { str = 77, agi = 55, sta = 71, int = 21, spi = 34 },
		[37] = { str = 79, agi = 56, sta = 73, int = 21, spi = 34 },
		[38] = { str = 81, agi = 57, sta = 75, int = 21, spi = 35 },
		[39] = { str = 83, agi = 58, sta = 76, int = 21, spi = 35 },
		[40] = { str = 84, agi = 59, sta = 78, int = 22, spi = 35 },
		[41] = { str = 86, agi = 60, sta = 80, int = 22, spi = 36 },
		[42] = { str = 88, agi = 62, sta = 81, int = 22, spi = 36 },
		[43] = { str = 90, agi = 63, sta = 83, int = 22, spi = 37 },
		[44] = { str = 92, agi = 64, sta = 85, int = 22, spi = 37 },
		[45] = { str = 94, agi = 65, sta = 86, int = 23, spi = 38 },
		[46] = { str = 96, agi = 66, sta = 88, int = 23, spi = 38 },
		[47] = { str = 98, agi = 67, sta = 90, int = 23, spi = 39 },
		[48] = { str = 100, agi = 69, sta = 92, int = 23, spi = 39 },
		[49] = { str = 102, agi = 70, sta = 93, int = 24, spi = 40 },
		[50] = { str = 103, agi = 71, sta = 95, int = 24, spi = 40 },
		[51] = { str = 105, agi = 72, sta = 97, int = 24, spi = 41 },
		[52] = { str = 107, agi = 74, sta = 99, int = 24, spi = 42 },
		[53] = { str = 109, agi = 75, sta = 101, int = 25, spi = 42 },
		[54] = { str = 112, agi = 76, sta = 103, int = 25, spi = 43 },
		[55] = { str = 114, agi = 78, sta = 104, int = 25, spi = 43 },
		[56] = { str = 116, agi = 79, sta = 106, int = 25, spi = 44 },
		[57] = { str = 118, agi = 80, sta = 108, int = 25, spi = 44 },
		[58] = { str = 120, agi = 81, sta = 110, int = 26, spi = 45 },
		[59] = { str = 122, agi = 83, sta = 112, int = 26, spi = 45 },
		[60] = { str = 124, agi = 84, sta = 114, int = 26, spi = 46 },
		[61] = { str = 126, agi = 85, sta = 116, int = 27, spi = 47 },
		[62] = { str = 128, agi = 87, sta = 118, int = 27, spi = 47 },
		[63] = { str = 130, agi = 88, sta = 120, int = 27, spi = 48 },
		[64] = { str = 133, agi = 90, sta = 122, int = 27, spi = 48 },
		[65] = { str = 135, agi = 91, sta = 124, int = 28, spi = 49 },
		[66] = { str = 137, agi = 92, sta = 126, int = 28, spi = 50 },
		[67] = { str = 139, agi = 94, sta = 128, int = 28, spi = 50 },
		[68] = { str = 141, agi = 95, sta = 130, int = 28, spi = 51 },
		[69] = { str = 144, agi = 97, sta = 132, int = 29, spi = 51 },
		[70] = { str = 146, agi = 98, sta = 134, int = 29, spi = 52 }
	},
	HUNTER = {
		[1] = { str = 21, agi = 25, sta = 22, int = 16, spi = 22 },
		[2] = { str = 21, agi = 26, sta = 23, int = 17, spi = 23 },
		[3] = { str = 22, agi = 28, sta = 24, int = 17, spi = 23 },
		[4] = { str = 22, agi = 29, sta = 25, int = 18, spi = 24 },
		[5] = { str = 23, agi = 30, sta = 26, int = 18, spi = 25 },
		[6] = { str = 23, agi = 32, sta = 27, int = 19, spi = 25 },
		[7] = { str = 24, agi = 33, sta = 28, int = 20, spi = 26 },
		[8] = { str = 24, agi = 35, sta = 28, int = 20, spi = 26 },
		[9] = { str = 25, agi = 36, sta = 29, int = 21, spi = 27 },
		[10] = { str = 25, agi = 38, sta = 30, int = 21, spi = 28 },
		[11] = { str = 25, agi = 39, sta = 31, int = 22, spi = 29 },
		[12] = { str = 26, agi = 41, sta = 32, int = 23, spi = 29 },
		[13] = { str = 26, agi = 42, sta = 33, int = 23, spi = 30 },
		[14] = { str = 27, agi = 44, sta = 34, int = 24, spi = 31 },
		[15] = { str = 27, agi = 45, sta = 35, int = 25, spi = 31 },
		[16] = { str = 28, agi = 47, sta = 36, int = 25, spi = 32 },
		[17] = { str = 28, agi = 48, sta = 38, int = 26, spi = 33 },
		[18] = { str = 29, agi = 50, sta = 39, int = 27, spi = 34 },
		[19] = { str = 29, agi = 51, sta = 40, int = 28, spi = 34 },
		[20] = { str = 30, agi = 53, sta = 41, int = 28, spi = 35 },
		[21] = { str = 31, agi = 55, sta = 42, int = 29, spi = 36 },
		[22] = { str = 31, agi = 56, sta = 43, int = 30, spi = 37 },
		[23] = { str = 32, agi = 58, sta = 44, int = 30, spi = 37 },
		[24] = { str = 32, agi = 60, sta = 45, int = 31, spi = 38 },
		[25] = { str = 33, agi = 61, sta = 46, int = 32, spi = 39 },
		[26] = { str = 33, agi = 63, sta = 48, int = 33, spi = 40 },
		[27] = { str = 34, agi = 65, sta = 49, int = 33, spi = 41 },
		[28] = { str = 35, agi = 66, sta = 50, int = 34, spi = 41 },
		[29] = { str = 35, agi = 68, sta = 51, int = 35, spi = 42 },
		[30] = { str = 36, agi = 70, sta = 52, int = 36, spi = 43 },
		[31] = { str = 36, agi = 72, sta = 53, int = 37, spi = 44 },
		[32] = { str = 37, agi = 73, sta = 55, int = 37, spi = 45 },
		[33] = { str = 38, agi = 75, sta = 56, int = 38, spi = 46 },
		[34] = { str = 38, agi = 77, sta = 57, int = 39, spi = 47 },
		[35] = { str = 39, agi = 79, sta = 58, int = 40, spi = 48 },
		[36] = { str = 39, agi = 81, sta = 60, int = 41, spi = 48 },
		[37] = { str = 40, agi = 83, sta = 61, int = 41, spi = 49 },
		[38] = { str = 41, agi = 85, sta = 62, int = 42, spi = 50 },
		[39] = { str = 41, agi = 86, sta = 63, int = 43, spi = 51 },
		[40] = { str = 42, agi = 88, sta = 65, int = 44, spi = 52 },
		[41] = { str = 43, agi = 90, sta = 66, int = 45, spi = 53 },
		[42] = { str = 43, agi = 92, sta = 67, int = 46, spi = 54 },
		[43] = { str = 44, agi = 94, sta = 69, int = 47, spi = 55 },
		[44] = { str = 45, agi = 96, sta = 70, int = 47, spi = 56 },
		[45] = { str = 45, agi = 98, sta = 71, int = 48, spi = 57 },
		[46] = { str = 46, agi = 100, sta = 73, int = 49, spi = 58 },
		[47] = { str = 47, agi = 102, sta = 74, int = 50, spi = 59 },
		[48] = { str = 48, agi = 104, sta = 76, int = 51, spi = 60 },
		[49] = { str = 48, agi = 106, sta = 77, int = 52, spi = 61 },
		[50] = { str = 49, agi = 108, sta = 78, int = 53, spi = 62 },
		[51] = { str = 50, agi = 110, sta = 80, int = 54, spi = 63 },
		[52] = { str = 51, agi = 113, sta = 81, int = 55, spi = 64 },
		[53] = { str = 51, agi = 115, sta = 83, int = 56, spi = 65 },
		[54] = { str = 52, agi = 117, sta = 84, int = 57, spi = 66 },
		[55] = { str = 53, agi = 119, sta = 86, int = 58, spi = 67 },
		[56] = { str = 54, agi = 121, sta = 87, int = 59, spi = 68 },
		[57] = { str = 54, agi = 123, sta = 89, int = 60, spi = 69 },
		[58] = { str = 55, agi = 126, sta = 90, int = 61, spi = 70 },
		[59] = { str = 56, agi = 128, sta = 92, int = 62, spi = 71 },
		[60] = { str = 57, agi = 130, sta = 93, int = 63, spi = 73 },
		[61] = { str = 58, agi = 132, sta = 95, int = 64, spi = 74 },
		[62] = { str = 58, agi = 134, sta = 96, int = 65, spi = 75 },
		[63] = { str = 59, agi = 137, sta = 98, int = 66, spi = 76 },
		[64] = { str = 60, agi = 139, sta = 99, int = 67, spi = 77 },
		[65] = { str = 61, agi = 141, sta = 101, int = 68, spi = 78 },
		[66] = { str = 62, agi = 144, sta = 103, int = 69, spi = 79 },
		[67] = { str = 62, agi = 146, sta = 104, int = 70, spi = 80 },
		[68] = { str = 63, agi = 148, sta = 106, int = 71, spi = 82 },
		[69] = { str = 64, agi = 151, sta = 107, int = 72, spi = 83 },
		[70] = { str = 65, agi = 153, sta = 109, int = 73, spi = 84 }
	},
	ROGUE = {
		[1] = { str = 22, agi = 25, sta = 22, int = 16, spi = 21 },
		[2] = { str = 23, agi = 26, sta = 23, int = 16, spi = 21 },
		[3] = { str = 24, agi = 28, sta = 23, int = 16, spi = 22 },
		[4] = { str = 24, agi = 29, sta = 24, int = 16, spi = 22 },
		[5] = { str = 25, agi = 31, sta = 25, int = 17, spi = 22 },
		[6] = { str = 26, agi = 32, sta = 25, int = 17, spi = 23 },
		[7] = { str = 27, agi = 34, sta = 26, int = 17, spi = 23 },
		[8] = { str = 27, agi = 35, sta = 27, int = 17, spi = 24 },
		[9] = { str = 28, agi = 37, sta = 28, int = 17, spi = 24 },
		[10] = { str = 29, agi = 38, sta = 28, int = 18, spi = 24 },
		[11] = { str = 30, agi = 40, sta = 29, int = 18, spi = 25 },
		[12] = { str = 31, agi = 41, sta = 30, int = 18, spi = 25 },
		[13] = { str = 32, agi = 43, sta = 31, int = 18, spi = 26 },
		[14] = { str = 32, agi = 45, sta = 32, int = 18, spi = 26 },
		[15] = { str = 33, agi = 46, sta = 32, int = 19, spi = 26 },
		[16] = { str = 34, agi = 48, sta = 33, int = 19, spi = 27 },
		[17] = { str = 35, agi = 50, sta = 34, int = 19, spi = 27 },
		[18] = { str = 36, agi = 51, sta = 35, int = 19, spi = 28 },
		[19] = { str = 37, agi = 53, sta = 36, int = 19, spi = 28 },
		[20] = { str = 38, agi = 55, sta = 36, int = 20, spi = 29 },
		[21] = { str = 39, agi = 56, sta = 37, int = 20, spi = 29 },
		[22] = { str = 40, agi = 58, sta = 38, int = 20, spi = 30 },
		[23] = { str = 41, agi = 60, sta = 39, int = 20, spi = 30 },
		[24] = { str = 42, agi = 62, sta = 40, int = 20, spi = 31 },
		[25] = { str = 43, agi = 63, sta = 41, int = 21, spi = 31 },
		[26] = { str = 44, agi = 65, sta = 42, int = 21, spi = 32 },
		[27] = { str = 45, agi = 67, sta = 43, int = 21, spi = 32 },
		[28] = { str = 46, agi = 69, sta = 44, int = 21, spi = 33 },
		[29] = { str = 47, agi = 71, sta = 44, int = 22, spi = 33 },
		[30] = { str = 48, agi = 72, sta = 45, int = 22, spi = 34 },
		[31] = { str = 49, agi = 74, sta = 46, int = 22, spi = 34 },
		[32] = { str = 50, agi = 76, sta = 47, int = 22, spi = 35 },
		[33] = { str = 51, agi = 78, sta = 48, int = 23, spi = 35 },
		[34] = { str = 52, agi = 80, sta = 49, int = 23, spi = 36 },
		[35] = { str = 53, agi = 82, sta = 50, int = 23, spi = 36 },
		[36] = { str = 54, agi = 84, sta = 51, int = 24, spi = 37 },
		[37] = { str = 55, agi = 86, sta = 52, int = 24, spi = 37 },
		[38] = { str = 56, agi = 88, sta = 53, int = 24, spi = 38 },
		[39] = { str = 57, agi = 90, sta = 54, int = 24, spi = 38 },
		[40] = { str = 58, agi = 92, sta = 55, int = 25, spi = 39 },
		[41] = { str = 59, agi = 94, sta = 56, int = 25, spi = 40 },
		[42] = { str = 60, agi = 96, sta = 57, int = 25, spi = 40 },
		[43] = { str = 62, agi = 98, sta = 58, int = 26, spi = 41 },
		[44] = { str = 63, agi = 100, sta = 59, int = 26, spi = 41 },
		[45] = { str = 64, agi = 102, sta = 60, int = 26, spi = 42 },
		[46] = { str = 65, agi = 104, sta = 61, int = 27, spi = 43 },
		[47] = { str = 66, agi = 107, sta = 63, int = 27, spi = 43 },
		[48] = { str = 67, agi = 109, sta = 64, int = 27, spi = 44 },
		[49] = { str = 69, agi = 111, sta = 65, int = 27, spi = 44 },
		[50] = { str = 70, agi = 113, sta = 66, int = 28, spi = 45 },
		[51] = { str = 71, agi = 115, sta = 67, int = 28, spi = 46 },
		[52] = { str = 72, agi = 117, sta = 68, int = 28, spi = 46 },
		[53] = { str = 74, agi = 120, sta = 69, int = 29, spi = 47 },
		[54] = { str = 75, agi = 122, sta = 70, int = 29, spi = 48 },
		[55] = { str = 76, agi = 124, sta = 72, int = 29, spi = 48 },
		[56] = { str = 77, agi = 126, sta = 73, int = 30, spi = 49 },
		[57] = { str = 79, agi = 129, sta = 74, int = 30, spi = 50 },
		[58] = { str = 80, agi = 131, sta = 75, int = 30, spi = 50 },
		[59] = { str = 81, agi = 133, sta = 76, int = 31, spi = 51 },
		[60] = { str = 82, agi = 136, sta = 77, int = 31, spi = 52 },
		[61] = { str = 84, agi = 138, sta = 79, int = 32, spi = 52 },
		[62] = { str = 85, agi = 140, sta = 80, int = 32, spi = 53 },
		[63] = { str = 86, agi = 143, sta = 81, int = 32, spi = 54 },
		[64] = { str = 88, agi = 145, sta = 82, int = 33, spi = 55 },
		[65] = { str = 89, agi = 148, sta = 84, int = 33, spi = 55 },
		[66] = { str = 90, agi = 150, sta = 85, int = 33, spi = 56 },
		[67] = { str = 92, agi = 153, sta = 86, int = 34, spi = 57 },
		[68] = { str = 93, agi = 155, sta = 87, int = 34, spi = 58 },
		[69] = { str = 95, agi = 157, sta = 89, int = 35, spi = 58 },
		[70] = { str = 96, agi = 160, sta = 90, int = 35, spi = 59 }
	},
	PRIEST = {
		[1] = { str = 21, agi = 22, sta = 21, int = 18, spi = 24 },
		[2] = { str = 21, agi = 22, sta = 21, int = 19, spi = 25 },
		[3] = { str = 21, agi = 22, sta = 22, int = 21, spi = 27 },
		[4] = { str = 21, agi = 23, sta = 22, int = 22, spi = 28 },
		[5] = { str = 22, agi = 23, sta = 22, int = 23, spi = 29 },
		[6] = { str = 22, agi = 23, sta = 23, int = 25, spi = 31 },
		[7] = { str = 22, agi = 23, sta = 23, int = 26, spi = 32 },
		[8] = { str = 22, agi = 24, sta = 24, int = 27, spi = 34 },
		[9] = { str = 22, agi = 24, sta = 24, int = 29, spi = 35 },
		[10] = { str = 22, agi = 24, sta = 24, int = 30, spi = 37 },
		[11] = { str = 23, agi = 24, sta = 25, int = 32, spi = 38 },
		[12] = { str = 23, agi = 24, sta = 25, int = 33, spi = 40 },
		[13] = { str = 23, agi = 25, sta = 26, int = 35, spi = 41 },
		[14] = { str = 23, agi = 25, sta = 26, int = 36, spi = 43 },
		[15] = { str = 23, agi = 25, sta = 26, int = 38, spi = 44 },
		[16] = { str = 24, agi = 26, sta = 27, int = 39, spi = 46 },
		[17] = { str = 24, agi = 26, sta = 27, int = 41, spi = 47 },
		[18] = { str = 24, agi = 26, sta = 28, int = 42, spi = 49 },
		[19] = { str = 24, agi = 26, sta = 28, int = 44, spi = 50 },
		[20] = { str = 24, agi = 27, sta = 29, int = 45, spi = 52 },
		[21] = { str = 25, agi = 27, sta = 29, int = 47, spi = 54 },
		[22] = { str = 25, agi = 27, sta = 30, int = 48, spi = 55 },
		[23] = { str = 25, agi = 28, sta = 30, int = 50, spi = 57 },
		[24] = { str = 25, agi = 28, sta = 31, int = 52, spi = 59 },
		[25] = { str = 25, agi = 28, sta = 31, int = 53, spi = 60 },
		[26] = { str = 26, agi = 28, sta = 32, int = 55, spi = 62 },
		[27] = { str = 26, agi = 29, sta = 32, int = 56, spi = 64 },
		[28] = { str = 26, agi = 29, sta = 33, int = 58, spi = 65 },
		[29] = { str = 26, agi = 29, sta = 33, int = 60, spi = 67 },
		[30] = { str = 27, agi = 30, sta = 34, int = 62, spi = 69 },
		[31] = { str = 27, agi = 30, sta = 34, int = 63, spi = 71 },
		[32] = { str = 27, agi = 30, sta = 35, int = 65, spi = 73 },
		[33] = { str = 27, agi = 31, sta = 35, int = 67, spi = 74 },
		[34] = { str = 28, agi = 31, sta = 36, int = 68, spi = 76 },
		[35] = { str = 28, agi = 32, sta = 36, int = 70, spi = 78 },
		[36] = { str = 28, agi = 32, sta = 37, int = 72, spi = 80 },
		[37] = { str = 29, agi = 32, sta = 37, int = 74, spi = 82 },
		[38] = { str = 29, agi = 33, sta = 38, int = 76, spi = 84 },
		[39] = { str = 29, agi = 33, sta = 38, int = 77, spi = 86 },
		[40] = { str = 29, agi = 33, sta = 39, int = 79, spi = 87 },
		[41] = { str = 30, agi = 34, sta = 40, int = 81, spi = 89 },
		[42] = { str = 30, agi = 34, sta = 40, int = 83, spi = 91 },
		[43] = { str = 30, agi = 35, sta = 41, int = 85, spi = 93 },
		[44] = { str = 31, agi = 35, sta = 41, int = 87, spi = 95 },
		[45] = { str = 31, agi = 35, sta = 42, int = 89, spi = 97 },
		[46] = { str = 31, agi = 36, sta = 43, int = 91, spi = 99 },
		[47] = { str = 32, agi = 36, sta = 43, int = 93, spi = 101 },
		[48] = { str = 32, agi = 37, sta = 44, int = 94, spi = 103 },
		[49] = { str = 32, agi = 37, sta = 44, int = 96, spi = 105 },
		[50] = { str = 33, agi = 37, sta = 45, int = 98, spi = 107 },
		[51] = { str = 33, agi = 38, sta = 46, int = 100, spi = 110 },
		[52] = { str = 33, agi = 38, sta = 46, int = 102, spi = 112 },
		[53] = { str = 34, agi = 39, sta = 47, int = 104, spi = 114 },
		[54] = { str = 34, agi = 39, sta = 48, int = 106, spi = 116 },
		[55] = { str = 34, agi = 40, sta = 48, int = 109, spi = 118 },
		[56] = { str = 35, agi = 40, sta = 49, int = 111, spi = 120 },
		[57] = { str = 35, agi = 41, sta = 50, int = 113, spi = 122 },
		[58] = { str = 35, agi = 41, sta = 50, int = 115, spi = 125 },
		[59] = { str = 36, agi = 42, sta = 51, int = 117, spi = 127 },
		[60] = { str = 36, agi = 42, sta = 52, int = 119, spi = 129 },
		[61] = { str = 36, agi = 42, sta = 52, int = 121, spi = 131 },
		[62] = { str = 37, agi = 43, sta = 53, int = 123, spi = 133 },
		[63] = { str = 37, agi = 43, sta = 54, int = 125, spi = 136 },
		[64] = { str = 38, agi = 44, sta = 55, int = 128, spi = 138 },
		[65] = { str = 38, agi = 44, sta = 55, int = 130, spi = 140 },
		[66] = { str = 38, agi = 45, sta = 56, int = 132, spi = 143 },
		[67] = { str = 39, agi = 45, sta = 57, int = 134, spi = 145 },
		[68] = { str = 39, agi = 46, sta = 58, int = 136, spi = 147 },
		[69] = { str = 40, agi = 46, sta = 58, int = 139, spi = 150 },
		[70] = { str = 40, agi = 47, sta = 59, int = 141, spi = 152 }
	},
	SHAMAN = {
		[1] = { str = 22, agi = 22, sta = 22, int = 17, spi = 23 },
		[2] = { str = 23, agi = 22, sta = 23, int = 18, spi = 24 },
		[3] = { str = 24, agi = 23, sta = 24, int = 19, spi = 25 },
		[4] = { str = 25, agi = 23, sta = 25, int = 20, spi = 26 },
		[5] = { str = 25, agi = 24, sta = 26, int = 21, spi = 27 },
		[6] = { str = 26, agi = 24, sta = 27, int = 22, spi = 28 },
		[7] = { str = 27, agi = 25, sta = 28, int = 23, spi = 29 },
		[8] = { str = 28, agi = 25, sta = 29, int = 24, spi = 30 },
		[9] = { str = 29, agi = 25, sta = 30, int = 25, spi = 31 },
		[10] = { str = 30, agi = 26, sta = 31, int = 26, spi = 33 },
		[11] = { str = 31, agi = 26, sta = 32, int = 27, spi = 34 },
		[12] = { str = 32, agi = 27, sta = 33, int = 28, spi = 35 },
		[13] = { str = 33, agi = 27, sta = 34, int = 29, spi = 36 },
		[14] = { str = 34, agi = 28, sta = 35, int = 30, spi = 37 },
		[15] = { str = 34, agi = 28, sta = 36, int = 31, spi = 38 },
		[16] = { str = 35, agi = 29, sta = 38, int = 32, spi = 39 },
		[17] = { str = 36, agi = 29, sta = 39, int = 33, spi = 41 },
		[18] = { str = 37, agi = 30, sta = 40, int = 34, spi = 42 },
		[19] = { str = 38, agi = 30, sta = 41, int = 35, spi = 43 },
		[20] = { str = 39, agi = 31, sta = 42, int = 36, spi = 44 },
		[21] = { str = 40, agi = 32, sta = 43, int = 37, spi = 45 },
		[22] = { str = 41, agi = 32, sta = 45, int = 38, spi = 47 },
		[23] = { str = 43, agi = 33, sta = 46, int = 39, spi = 48 },
		[24] = { str = 44, agi = 33, sta = 47, int = 40, spi = 49 },
		[25] = { str = 45, agi = 34, sta = 48, int = 42, spi = 51 },
		[26] = { str = 46, agi = 34, sta = 49, int = 43, spi = 52 },
		[27] = { str = 47, agi = 35, sta = 51, int = 44, spi = 53 },
		[28] = { str = 48, agi = 35, sta = 52, int = 45, spi = 54 },
		[29] = { str = 49, agi = 36, sta = 53, int = 46, spi = 56 },
		[30] = { str = 50, agi = 37, sta = 54, int = 48, spi = 57 },
		[31] = { str = 51, agi = 37, sta = 56, int = 49, spi = 59 },
		[32] = { str = 52, agi = 38, sta = 57, int = 50, spi = 60 },
		[33] = { str = 53, agi = 38, sta = 58, int = 51, spi = 61 },
		[34] = { str = 55, agi = 39, sta = 60, int = 52, spi = 63 },
		[35] = { str = 56, agi = 40, sta = 61, int = 54, spi = 64 },
		[36] = { str = 57, agi = 40, sta = 62, int = 55, spi = 66 },
		[37] = { str = 58, agi = 41, sta = 64, int = 56, spi = 67 },
		[38] = { str = 59, agi = 42, sta = 65, int = 57, spi = 68 },
		[39] = { str = 61, agi = 42, sta = 66, int = 59, spi = 70 },
		[40] = { str = 62, agi = 43, sta = 68, int = 60, spi = 71 },
		[41] = { str = 63, agi = 44, sta = 69, int = 61, spi = 73 },
		[42] = { str = 64, agi = 44, sta = 71, int = 63, spi = 74 },
		[43] = { str = 65, agi = 45, sta = 72, int = 64, spi = 76 },
		[44] = { str = 67, agi = 46, sta = 74, int = 65, spi = 77 },
		[45] = { str = 68, agi = 46, sta = 75, int = 67, spi = 79 },
		[46] = { str = 69, agi = 47, sta = 76, int = 68, spi = 80 },
		[47] = { str = 71, agi = 48, sta = 78, int = 69, spi = 82 },
		[48] = { str = 72, agi = 49, sta = 79, int = 71, spi = 83 },
		[49] = { str = 73, agi = 49, sta = 81, int = 72, spi = 85 },
		[50] = { str = 74, agi = 50, sta = 82, int = 74, spi = 87 },
		[51] = { str = 76, agi = 51, sta = 84, int = 75, spi = 88 },
		[52] = { str = 77, agi = 51, sta = 85, int = 77, spi = 90 },
		[53] = { str = 78, agi = 52, sta = 87, int = 78, spi = 92 },
		[54] = { str = 80, agi = 53, sta = 89, int = 79, spi = 93 },
		[55] = { str = 81, agi = 54, sta = 90, int = 81, spi = 95 },
		[56] = { str = 83, agi = 55, sta = 92, int = 82, spi = 96 },
		[57] = { str = 84, agi = 55, sta = 93, int = 84, spi = 98 },
		[58] = { str = 85, agi = 56, sta = 95, int = 85, spi = 100 },
		[59] = { str = 87, agi = 57, sta = 97, int = 87, spi = 102 },
		[60] = { str = 88, agi = 58, sta = 98, int = 88, spi = 103 },
		[61] = { str = 90, agi = 58, sta = 100, int = 90, spi = 105 },
		[62] = { str = 91, agi = 59, sta = 101, int = 91, spi = 107 },
		[63] = { str = 93, agi = 60, sta = 103, int = 93, spi = 108 },
		[64] = { str = 94, agi = 61, sta = 105, int = 94, spi = 110 },
		[65] = { str = 95, agi = 62, sta = 106, int = 96, spi = 112 },
		[66] = { str = 97, agi = 63, sta = 108, int = 98, spi = 114 },
		[67] = { str = 98, agi = 63, sta = 110, int = 99, spi = 116 },
		[68] = { str = 100, agi = 64, sta = 112, int = 101, spi = 117 },
		[69] = { str = 101, agi = 65, sta = 113, int = 102, spi = 119 },
		[70] = { str = 103, agi = 66, sta = 115, int = 104, spi = 121 }
	},
	MAGE = {
		[1] = { str = 21, agi = 22, sta = 21, int = 19, spi = 23 },
		[2] = { str = 21, agi = 22, sta = 21, int = 20, spi = 24 },
		[3] = { str = 21, agi = 22, sta = 22, int = 22, spi = 26 },
		[4] = { str = 21, agi = 22, sta = 22, int = 23, spi = 27 },
		[5] = { str = 21, agi = 23, sta = 22, int = 25, spi = 28 },
		[6] = { str = 21, agi = 23, sta = 22, int = 26, spi = 30 },
		[7] = { str = 21, agi = 23, sta = 23, int = 27, spi = 31 },
		[8] = { str = 22, agi = 23, sta = 23, int = 29, spi = 32 },
		[9] = { str = 22, agi = 23, sta = 23, int = 30, spi = 34 },
		[10] = { str = 22, agi = 23, sta = 24, int = 32, spi = 35 },
		[11] = { str = 22, agi = 24, sta = 24, int = 33, spi = 37 },
		[12] = { str = 22, agi = 24, sta = 24, int = 35, spi = 38 },
		[13] = { str = 22, agi = 24, sta = 25, int = 36, spi = 39 },
		[14] = { str = 22, agi = 24, sta = 25, int = 38, spi = 41 },
		[15] = { str = 22, agi = 24, sta = 25, int = 39, spi = 42 },
		[16] = { str = 22, agi = 24, sta = 26, int = 41, spi = 44 },
		[17] = { str = 23, agi = 25, sta = 26, int = 42, spi = 45 },
		[18] = { str = 23, agi = 25, sta = 26, int = 44, spi = 47 },
		[19] = { str = 23, agi = 25, sta = 27, int = 46, spi = 48 },
		[20] = { str = 23, agi = 25, sta = 27, int = 47, spi = 50 },
		[21] = { str = 23, agi = 25, sta = 27, int = 49, spi = 51 },
		[22] = { str = 23, agi = 26, sta = 28, int = 51, spi = 53 },
		[23] = { str = 23, agi = 26, sta = 28, int = 52, spi = 55 },
		[24] = { str = 24, agi = 26, sta = 29, int = 54, spi = 56 },
		[25] = { str = 24, agi = 26, sta = 29, int = 56, spi = 58 },
		[26] = { str = 24, agi = 27, sta = 29, int = 57, spi = 60 },
		[27] = { str = 24, agi = 27, sta = 30, int = 59, spi = 61 },
		[28] = { str = 24, agi = 27, sta = 30, int = 61, spi = 63 },
		[29] = { str = 24, agi = 27, sta = 31, int = 63, spi = 65 },
		[30] = { str = 24, agi = 28, sta = 31, int = 64, spi = 66 },
		[31] = { str = 25, agi = 28, sta = 31, int = 66, spi = 68 },
		[32] = { str = 25, agi = 28, sta = 32, int = 68, spi = 70 },
		[33] = { str = 25, agi = 28, sta = 32, int = 70, spi = 71 },
		[34] = { str = 25, agi = 29, sta = 33, int = 71, spi = 73 },
		[35] = { str = 25, agi = 29, sta = 33, int = 73, spi = 75 },
		[36] = { str = 26, agi = 29, sta = 34, int = 75, spi = 77 },
		[37] = { str = 26, agi = 29, sta = 34, int = 77, spi = 79 },
		[38] = { str = 26, agi = 30, sta = 35, int = 79, spi = 80 },
		[39] = { str = 26, agi = 30, sta = 35, int = 81, spi = 82 },
		[40] = { str = 26, agi = 30, sta = 35, int = 83, spi = 84 },
		[41] = { str = 27, agi = 31, sta = 36, int = 85, spi = 86 },
		[42] = { str = 27, agi = 31, sta = 36, int = 87, spi = 88 },
		[43] = { str = 27, agi = 31, sta = 37, int = 89, spi = 90 },
		[44] = { str = 27, agi = 32, sta = 37, int = 91, spi = 91 },
		[45] = { str = 27, agi = 32, sta = 38, int = 93, spi = 93 },
		[46] = { str = 28, agi = 32, sta = 38, int = 95, spi = 95 },
		[47] = { str = 28, agi = 32, sta = 39, int = 97, spi = 97 },
		[48] = { str = 28, agi = 33, sta = 39, int = 99, spi = 99 },
		[49] = { str = 28, agi = 33, sta = 40, int = 101, spi = 101 },
		[50] = { str = 29, agi = 33, sta = 40, int = 103, spi = 103 },
		[51] = { str = 29, agi = 34, sta = 41, int = 105, spi = 105 },
		[52] = { str = 29, agi = 34, sta = 42, int = 107, spi = 107 },
		[53] = { str = 29, agi = 35, sta = 42, int = 109, spi = 109 },
		[54] = { str = 30, agi = 35, sta = 43, int = 111, spi = 111 },
		[55] = { str = 30, agi = 35, sta = 43, int = 113, spi = 113 },
		[56] = { str = 30, agi = 36, sta = 44, int = 115, spi = 115 },
		[57] = { str = 30, agi = 36, sta = 44, int = 118, spi = 118 },
		[58] = { str = 31, agi = 36, sta = 45, int = 120, spi = 120 },
		[59] = { str = 31, agi = 37, sta = 45, int = 122, spi = 122 },
		[60] = { str = 31, agi = 37, sta = 46, int = 124, spi = 124 },
		[61] = { str = 31, agi = 37, sta = 47, int = 126, spi = 126 },
		[62] = { str = 32, agi = 38, sta = 47, int = 129, spi = 128 },
		[63] = { str = 32, agi = 38, sta = 48, int = 131, spi = 130 },
		[64] = { str = 32, agi = 39, sta = 48, int = 133, spi = 133 },
		[65] = { str = 33, agi = 39, sta = 49, int = 135, spi = 135 },
		[66] = { str = 33, agi = 39, sta = 50, int = 138, spi = 137 },
		[67] = { str = 33, agi = 40, sta = 50, int = 140, spi = 139 },
		[68] = { str = 33, agi = 40, sta = 51, int = 142, spi = 141 },
		[69] = { str = 34, agi = 41, sta = 51, int = 145, spi = 144 },
		[70] = { str = 34, agi = 41, sta = 52, int = 147, spi = 146 }
	},
},
BloodElf = {
	PALADIN = {
		[1] = { str = 19, agi = 22, sta = 20, int = 24, spi = 20 }, 
		[2] = { str = 20, agi = 23, sta = 21, int = 25, spi = 21 }, 
		[3] = { str = 21, agi = 23, sta = 22, int = 25, spi = 21 }, 
		[4] = { str = 22, agi = 24, sta = 23, int = 26, spi = 22 }, 
		[5] = { str = 23, agi = 24, sta = 24, int = 27, spi = 23 }, 
		[6] = { str = 25, agi = 25, sta = 25, int = 27, spi = 24 }, 
		[7] = { str = 26, agi = 25, sta = 26, int = 28, spi = 24 }, 
		[8] = { str = 27, agi = 26, sta = 27, int = 29, spi = 25 }, 
		[9] = { str = 28, agi = 27, sta = 28, int = 29, spi = 26 }, 
		[10] = { str = 29, agi = 27, sta = 30, int = 30, spi = 26 }, 
		[11] = { str = 30, agi = 28, sta = 31, int = 31, spi = 27 }, 
		[12] = { str = 32, agi = 29, sta = 32, int = 31, spi = 28 }, 
		[13] = { str = 33, agi = 29, sta = 33, int = 32, spi = 29 }, 
		[14] = { str = 34, agi = 30, sta = 34, int = 33, spi = 30 }, 
		[15] = { str = 35, agi = 31, sta = 35, int = 33, spi = 30 }, 
		[16] = { str = 37, agi = 31, sta = 36, int = 34, spi = 31 }, 
		[17] = { str = 38, agi = 32, sta = 38, int = 35, spi = 32 }, 
		[18] = { str = 39, agi = 33, sta = 39, int = 36, spi = 33 }, 
		[19] = { str = 40, agi = 33, sta = 40, int = 36, spi = 34 }, 
		[20] = { str = 42, agi = 34, sta = 41, int = 37, spi = 35 }, 
		[21] = { str = 43, agi = 35, sta = 43, int = 38, spi = 35 }, 
		[22] = { str = 44, agi = 35, sta = 44, int = 39, spi = 36 }, 
		[23] = { str = 46, agi = 36, sta = 45, int = 40, spi = 37 }, 
		[24] = { str = 47, agi = 37, sta = 46, int = 40, spi = 38 }, 
		[25] = { str = 49, agi = 38, sta = 48, int = 41, spi = 39 }, 
		[26] = { str = 50, agi = 38, sta = 49, int = 42, spi = 40 }, 
		[27] = { str = 51, agi = 39, sta = 50, int = 43, spi = 41 }, 
		[28] = { str = 53, agi = 40, sta = 52, int = 44, spi = 42 }, 
		[29] = { str = 54, agi = 41, sta = 53, int = 45, spi = 43 }, 
		[30] = { str = 56, agi = 41, sta = 54, int = 45, spi = 43 }, 
		[31] = { str = 57, agi = 42, sta = 56, int = 46, spi = 44 }, 
		[32] = { str = 58, agi = 43, sta = 57, int = 47, spi = 45 }, 
		[33] = { str = 60, agi = 44, sta = 58, int = 48, spi = 46 }, 
		[34] = { str = 61, agi = 45, sta = 60, int = 49, spi = 47 }, 
		[35] = { str = 63, agi = 45, sta = 61, int = 50, spi = 48 }, 
		[36] = { str = 64, agi = 46, sta = 63, int = 51, spi = 49 }, 
		[37] = { str = 66, agi = 47, sta = 64, int = 52, spi = 50 }, 
		[38] = { str = 67, agi = 48, sta = 66, int = 53, spi = 51 }, 
		[39] = { str = 69, agi = 49, sta = 67, int = 54, spi = 52 }, 
		[40] = { str = 71, agi = 50, sta = 68, int = 55, spi = 53 }, 
		[41] = { str = 72, agi = 50, sta = 70, int = 55, spi = 54 }, 
		[42] = { str = 74, agi = 51, sta = 71, int = 56, spi = 55 }, 
		[43] = { str = 75, agi = 52, sta = 73, int = 57, spi = 56 }, 
		[44] = { str = 77, agi = 53, sta = 74, int = 58, spi = 57 }, 
		[45] = { str = 79, agi = 54, sta = 76, int = 59, spi = 59 }, 
		[46] = { str = 80, agi = 55, sta = 77, int = 60, spi = 60 }, 
		[47] = { str = 82, agi = 56, sta = 79, int = 61, spi = 61 }, 
		[48] = { str = 83, agi = 57, sta = 81, int = 62, spi = 62 }, 
		[49] = { str = 85, agi = 58, sta = 82, int = 63, spi = 63 }, 
		[50] = { str = 87, agi = 59, sta = 84, int = 64, spi = 64 }, 
		[51] = { str = 89, agi = 60, sta = 85, int = 66, spi = 65 }, 
		[52] = { str = 90, agi = 61, sta = 87, int = 67, spi = 66 }, 
		[53] = { str = 92, agi = 61, sta = 89, int = 68, spi = 67 }, 
		[54] = { str = 94, agi = 62, sta = 90, int = 69, spi = 69 }, 
		[55] = { str = 95, agi = 63, sta = 92, int = 70, spi = 70 }, 
		[56] = { str = 97, agi = 64, sta = 94, int = 71, spi = 71 }, 
		[57] = { str = 99, agi = 65, sta = 95, int = 72, spi = 72 }, 
		[58] = { str = 101, agi = 66, sta = 97, int = 73, spi = 73 }, 
		[59] = { str = 102, agi = 67, sta = 99, int = 74, spi = 74 }, 
		[60] = { str = 104, agi = 68, sta = 100, int = 75, spi = 76 }, 
		[61] = { str = 106, agi = 69, sta = 102, int = 76, spi = 77 }, 
		[62] = { str = 108, agi = 70, sta = 104, int = 78, spi = 78 }, 
		[63] = { str = 110, agi = 72, sta = 105, int = 79, spi = 79 }, 
		[64] = { str = 112, agi = 73, sta = 107, int = 80, spi = 80 }, 
		[65] = { str = 113, agi = 74, sta = 109, int = 81, spi = 82 }, 
		[66] = { str = 115, agi = 75, sta = 111, int = 82, spi = 83 }, 
		[67] = { str = 117, agi = 76, sta = 113, int = 83, spi = 84 }, 
		[68] = { str = 119, agi = 77, sta = 114, int = 85, spi = 85 }, 
		[69] = { str = 121, agi = 78, sta = 116, int = 86, spi = 87 }, 
		[70] = { str = 123, agi = 79, sta = 118, int = 87, spi = 88 }
	},
	HUNTER = {
		[1] = { str = 17, agi = 25, sta = 19, int = 24, spi = 20 }, 
		[2] = { str = 17, agi = 26, sta = 20, int = 25, spi = 21 }, 
		[3] = { str = 18, agi = 28, sta = 21, int = 25, spi = 21 }, 
		[4] = { str = 18, agi = 29, sta = 22, int = 26, spi = 22 }, 
		[5] = { str = 19, agi = 30, sta = 23, int = 26, spi = 23 }, 
		[6] = { str = 19, agi = 32, sta = 24, int = 27, spi = 23 }, 
		[7] = { str = 20, agi = 33, sta = 25, int = 27, spi = 24 }, 
		[8] = { str = 20, agi = 35, sta = 26, int = 28, spi = 25 }, 
		[9] = { str = 21, agi = 36, sta = 26, int = 29, spi = 25 }, 
		[10] = { str = 21, agi = 38, sta = 27, int = 29, spi = 26 }, 
		[11] = { str = 22, agi = 39, sta = 28, int = 30, spi = 27 }, 
		[12] = { str = 22, agi = 41, sta = 29, int = 31, spi = 27 }, 
		[13] = { str = 23, agi = 42, sta = 30, int = 31, spi = 28 }, 
		[14] = { str = 23, agi = 44, sta = 31, int = 32, spi = 29 }, 
		[15] = { str = 24, agi = 45, sta = 33, int = 32, spi = 29 }, 
		[16] = { str = 24, agi = 47, sta = 34, int = 33, spi = 30 }, 
		[17] = { str = 25, agi = 48, sta = 35, int = 34, spi = 31 }, 
		[18] = { str = 25, agi = 50, sta = 36, int = 34, spi = 32 }, 
		[19] = { str = 26, agi = 51, sta = 37, int = 35, spi = 32 }, 
		[20] = { str = 26, agi = 53, sta = 38, int = 36, spi = 33 }, 
		[21] = { str = 27, agi = 55, sta = 39, int = 37, spi = 34 }, 
		[22] = { str = 27, agi = 56, sta = 40, int = 37, spi = 35 }, 
		[23] = { str = 28, agi = 58, sta = 41, int = 38, spi = 36 }, 
		[24] = { str = 28, agi = 60, sta = 42, int = 39, spi = 36 }, 
		[25] = { str = 29, agi = 61, sta = 43, int = 39, spi = 37 }, 
		[26] = { str = 30, agi = 63, sta = 45, int = 40, spi = 38 }, 
		[27] = { str = 30, agi = 65, sta = 46, int = 41, spi = 39 }, 
		[28] = { str = 31, agi = 66, sta = 47, int = 42, spi = 40 }, 
		[29] = { str = 31, agi = 68, sta = 48, int = 42, spi = 40 }, 
		[30] = { str = 32, agi = 70, sta = 49, int = 43, spi = 41 }, 
		[31] = { str = 33, agi = 72, sta = 51, int = 44, spi = 42 }, 
		[32] = { str = 33, agi = 73, sta = 52, int = 45, spi = 43 }, 
		[33] = { str = 34, agi = 75, sta = 53, int = 46, spi = 44 }, 
		[34] = { str = 34, agi = 77, sta = 54, int = 46, spi = 45 }, 
		[35] = { str = 35, agi = 79, sta = 56, int = 47, spi = 46 }, 
		[36] = { str = 36, agi = 81, sta = 57, int = 48, spi = 47 }, 
		[37] = { str = 36, agi = 83, sta = 58, int = 49, spi = 47 }, 
		[38] = { str = 37, agi = 85, sta = 59, int = 50, spi = 48 }, 
		[39] = { str = 38, agi = 86, sta = 61, int = 51, spi = 49 }, 
		[40] = { str = 38, agi = 88, sta = 62, int = 51, spi = 50 }, 
		[41] = { str = 39, agi = 90, sta = 63, int = 52, spi = 51 }, 
		[42] = { str = 40, agi = 92, sta = 65, int = 53, spi = 52 }, 
		[43] = { str = 40, agi = 94, sta = 66, int = 54, spi = 53 }, 
		[44] = { str = 41, agi = 96, sta = 67, int = 55, spi = 54 }, 
		[45] = { str = 42, agi = 98, sta = 69, int = 56, spi = 55 }, 
		[46] = { str = 42, agi = 100, sta = 70, int = 57, spi = 56 }, 
		[47] = { str = 43, agi = 102, sta = 71, int = 58, spi = 57 }, 
		[48] = { str = 44, agi = 104, sta = 73, int = 59, spi = 58 }, 
		[49] = { str = 45, agi = 106, sta = 74, int = 60, spi = 59 }, 
		[50] = { str = 45, agi = 108, sta = 76, int = 61, spi = 60 }, 
		[51] = { str = 46, agi = 110, sta = 77, int = 61, spi = 61 }, 
		[52] = { str = 47, agi = 113, sta = 78, int = 62, spi = 62 }, 
		[53] = { str = 47, agi = 115, sta = 80, int = 63, spi = 63 }, 
		[54] = { str = 48, agi = 117, sta = 81, int = 64, spi = 64 }, 
		[55] = { str = 49, agi = 119, sta = 83, int = 65, spi = 65 }, 
		[56] = { str = 50, agi = 121, sta = 84, int = 66, spi = 66 }, 
		[57] = { str = 50, agi = 123, sta = 86, int = 67, spi = 67 }, 
		[58] = { str = 51, agi = 126, sta = 87, int = 68, spi = 68 }, 
		[59] = { str = 52, agi = 128, sta = 89, int = 69, spi = 70 }, 
		[60] = { str = 53, agi = 130, sta = 90, int = 70, spi = 71 }, 
		[61] = { str = 54, agi = 132, sta = 92, int = 71, spi = 72 }, 
		[62] = { str = 54, agi = 134, sta = 93, int = 72, spi = 73 }, 
		[63] = { str = 55, agi = 137, sta = 95, int = 73, spi = 74 }, 
		[64] = { str = 56, agi = 139, sta = 96, int = 75, spi = 75 }, 
		[65] = { str = 57, agi = 141, sta = 98, int = 76, spi = 76 }, 
		[66] = { str = 58, agi = 144, sta = 100, int = 77, spi = 77 }, 
		[67] = { str = 58, agi = 146, sta = 101, int = 78, spi = 78 }, 
		[68] = { str = 59, agi = 148, sta = 103, int = 79, spi = 80 }, 
		[69] = { str = 60, agi = 151, sta = 104, int = 80, spi = 81 }, 
		[70] = { str = 61, agi = 153, sta = 106, int = 81, spi = 82 }
	},
	ROGUE = {
		[1] = { str = 18, agi = 25, sta = 19, int = 24, spi = 19 }, 
		[2] = { str = 19, agi = 26, sta = 20, int = 24, spi = 19 }, 
		[3] = { str = 20, agi = 28, sta = 20, int = 24, spi = 20 }, 
		[4] = { str = 20, agi = 29, sta = 21, int = 24, spi = 20 }, 
		[5] = { str = 21, agi = 31, sta = 22, int = 25, spi = 20 }, 
		[6] = { str = 22, agi = 32, sta = 23, int = 25, spi = 21 }, 
		[7] = { str = 23, agi = 34, sta = 23, int = 25, spi = 21 }, 
		[8] = { str = 24, agi = 35, sta = 24, int = 25, spi = 22 }, 
		[9] = { str = 24, agi = 37, sta = 25, int = 25, spi = 22 }, 
		[10] = { str = 25, agi = 38, sta = 25, int = 25, spi = 22 }, 
		[11] = { str = 26, agi = 40, sta = 26, int = 25, spi = 23 }, 
		[12] = { str = 27, agi = 41, sta = 27, int = 26, spi = 23 }, 
		[13] = { str = 28, agi = 43, sta = 28, int = 26, spi = 24 }, 
		[14] = { str = 29, agi = 45, sta = 29, int = 26, spi = 24 }, 
		[15] = { str = 29, agi = 46, sta = 29, int = 26, spi = 25 }, 
		[16] = { str = 30, agi = 48, sta = 30, int = 26, spi = 25 }, 
		[17] = { str = 31, agi = 50, sta = 31, int = 27, spi = 25 }, 
		[18] = { str = 32, agi = 51, sta = 32, int = 27, spi = 26 }, 
		[19] = { str = 33, agi = 53, sta = 33, int = 27, spi = 26 }, 
		[20] = { str = 34, agi = 55, sta = 34, int = 27, spi = 27 }, 
		[21] = { str = 35, agi = 56, sta = 34, int = 27, spi = 27 }, 
		[22] = { str = 36, agi = 58, sta = 35, int = 28, spi = 28 }, 
		[23] = { str = 37, agi = 60, sta = 36, int = 28, spi = 28 }, 
		[24] = { str = 38, agi = 62, sta = 37, int = 28, spi = 29 }, 
		[25] = { str = 39, agi = 63, sta = 38, int = 28, spi = 29 }, 
		[26] = { str = 40, agi = 65, sta = 39, int = 29, spi = 30 }, 
		[27] = { str = 41, agi = 67, sta = 40, int = 29, spi = 30 }, 
		[28] = { str = 42, agi = 69, sta = 41, int = 29, spi = 31 }, 
		[29] = { str = 43, agi = 71, sta = 42, int = 29, spi = 31 }, 
		[30] = { str = 44, agi = 72, sta = 42, int = 29, spi = 32 }, 
		[31] = { str = 45, agi = 74, sta = 43, int = 30, spi = 32 }, 
		[32] = { str = 46, agi = 76, sta = 44, int = 30, spi = 33 }, 
		[33] = { str = 47, agi = 78, sta = 45, int = 30, spi = 33 }, 
		[34] = { str = 48, agi = 80, sta = 46, int = 31, spi = 34 }, 
		[35] = { str = 49, agi = 82, sta = 47, int = 31, spi = 34 }, 
		[36] = { str = 50, agi = 84, sta = 48, int = 31, spi = 35 }, 
		[37] = { str = 51, agi = 86, sta = 49, int = 31, spi = 35 }, 
		[38] = { str = 52, agi = 88, sta = 50, int = 32, spi = 36 }, 
		[39] = { str = 53, agi = 90, sta = 51, int = 32, spi = 37 }, 
		[40] = { str = 54, agi = 92, sta = 52, int = 32, spi = 37 }, 
		[41] = { str = 56, agi = 94, sta = 53, int = 33, spi = 38 }, 
		[42] = { str = 57, agi = 96, sta = 54, int = 33, spi = 38 }, 
		[43] = { str = 58, agi = 98, sta = 55, int = 33, spi = 39 }, 
		[44] = { str = 59, agi = 100, sta = 56, int = 33, spi = 39 }, 
		[45] = { str = 60, agi = 102, sta = 58, int = 34, spi = 40 }, 
		[46] = { str = 61, agi = 104, sta = 59, int = 34, spi = 41 }, 
		[47] = { str = 62, agi = 107, sta = 60, int = 34, spi = 41 }, 
		[48] = { str = 64, agi = 109, sta = 61, int = 35, spi = 42 }, 
		[49] = { str = 65, agi = 111, sta = 62, int = 35, spi = 43 }, 
		[50] = { str = 66, agi = 113, sta = 63, int = 35, spi = 43 }, 
		[51] = { str = 67, agi = 115, sta = 64, int = 36, spi = 44 }, 
		[52] = { str = 68, agi = 117, sta = 65, int = 36, spi = 44 }, 
		[53] = { str = 70, agi = 120, sta = 66, int = 36, spi = 45 }, 
		[54] = { str = 71, agi = 122, sta = 68, int = 37, spi = 46 }, 
		[55] = { str = 72, agi = 124, sta = 69, int = 37, spi = 46 }, 
		[56] = { str = 73, agi = 126, sta = 70, int = 37, spi = 47 }, 
		[57] = { str = 75, agi = 129, sta = 71, int = 38, spi = 48 }, 
		[58] = { str = 76, agi = 131, sta = 72, int = 38, spi = 48 }, 
		[59] = { str = 77, agi = 133, sta = 73, int = 39, spi = 49 }, 
		[60] = { str = 79, agi = 136, sta = 75, int = 39, spi = 50 }, 
		[61] = { str = 80, agi = 138, sta = 76, int = 39, spi = 51 }, 
		[62] = { str = 81, agi = 140, sta = 77, int = 40, spi = 51 }, 
		[63] = { str = 82, agi = 143, sta = 78, int = 40, spi = 52 }, 
		[64] = { str = 84, agi = 145, sta = 79, int = 41, spi = 53 }, 
		[65] = { str = 85, agi = 148, sta = 81, int = 41, spi = 53 }, 
		[66] = { str = 87, agi = 150, sta = 82, int = 41, spi = 54 }, 
		[67] = { str = 88, agi = 153, sta = 83, int = 42, spi = 55 }, 
		[68] = { str = 89, agi = 155, sta = 84, int = 42, spi = 56 }, 
		[69] = { str = 91, agi = 157, sta = 86, int = 43, spi = 56 }, 
		[70] = { str = 92, agi = 160, sta = 87, int = 43, spi = 57 }
	},
	PRIEST = {
		[1] = { str = 17, agi = 22, sta = 18, int = 26, spi = 22 }, 
		[2] = { str = 17, agi = 22, sta = 18, int = 27, spi = 23 }, 
		[3] = { str = 17, agi = 22, sta = 19, int = 29, spi = 25 }, 
		[4] = { str = 17, agi = 23, sta = 19, int = 30, spi = 26 }, 
		[5] = { str = 18, agi = 23, sta = 19, int = 31, spi = 27 }, 
		[6] = { str = 18, agi = 23, sta = 20, int = 33, spi = 29 }, 
		[7] = { str = 18, agi = 23, sta = 20, int = 34, spi = 30 }, 
		[8] = { str = 18, agi = 24, sta = 21, int = 35, spi = 32 }, 
		[9] = { str = 18, agi = 24, sta = 21, int = 37, spi = 33 }, 
		[10] = { str = 19, agi = 24, sta = 21, int = 38, spi = 35 }, 
		[11] = { str = 19, agi = 24, sta = 22, int = 39, spi = 36 }, 
		[12] = { str = 19, agi = 24, sta = 22, int = 41, spi = 38 }, 
		[13] = { str = 19, agi = 25, sta = 23, int = 42, spi = 39 }, 
		[14] = { str = 19, agi = 25, sta = 23, int = 44, spi = 41 }, 
		[15] = { str = 19, agi = 25, sta = 24, int = 45, spi = 42 }, 
		[16] = { str = 20, agi = 26, sta = 24, int = 47, spi = 44 }, 
		[17] = { str = 20, agi = 26, sta = 24, int = 48, spi = 45 }, 
		[18] = { str = 20, agi = 26, sta = 25, int = 50, spi = 47 }, 
		[19] = { str = 20, agi = 26, sta = 25, int = 51, spi = 49 }, 
		[20] = { str = 21, agi = 27, sta = 26, int = 53, spi = 50 }, 
		[21] = { str = 21, agi = 27, sta = 26, int = 54, spi = 52 }, 
		[22] = { str = 21, agi = 27, sta = 27, int = 56, spi = 53 }, 
		[23] = { str = 21, agi = 28, sta = 27, int = 58, spi = 55 }, 
		[24] = { str = 21, agi = 28, sta = 28, int = 59, spi = 57 }, 
		[25] = { str = 22, agi = 28, sta = 28, int = 61, spi = 58 }, 
		[26] = { str = 22, agi = 28, sta = 29, int = 62, spi = 60 }, 
		[27] = { str = 22, agi = 29, sta = 29, int = 64, spi = 62 }, 
		[28] = { str = 22, agi = 29, sta = 30, int = 66, spi = 64 }, 
		[29] = { str = 23, agi = 29, sta = 30, int = 67, spi = 65 }, 
		[30] = { str = 23, agi = 30, sta = 31, int = 69, spi = 67 }, 
		[31] = { str = 23, agi = 30, sta = 31, int = 71, spi = 69 }, 
		[32] = { str = 23, agi = 30, sta = 32, int = 72, spi = 71 }, 
		[33] = { str = 24, agi = 31, sta = 32, int = 74, spi = 72 }, 
		[34] = { str = 24, agi = 31, sta = 33, int = 76, spi = 74 }, 
		[35] = { str = 24, agi = 32, sta = 33, int = 78, spi = 76 }, 
		[36] = { str = 24, agi = 32, sta = 34, int = 80, spi = 78 }, 
		[37] = { str = 25, agi = 32, sta = 34, int = 81, spi = 80 }, 
		[38] = { str = 25, agi = 33, sta = 35, int = 83, spi = 82 }, 
		[39] = { str = 25, agi = 33, sta = 36, int = 85, spi = 84 }, 
		[40] = { str = 26, agi = 33, sta = 36, int = 87, spi = 86 }, 
		[41] = { str = 26, agi = 34, sta = 37, int = 89, spi = 88 }, 
		[42] = { str = 26, agi = 34, sta = 37, int = 91, spi = 89 }, 
		[43] = { str = 27, agi = 35, sta = 38, int = 92, spi = 91 }, 
		[44] = { str = 27, agi = 35, sta = 38, int = 94, spi = 93 }, 
		[45] = { str = 27, agi = 35, sta = 39, int = 96, spi = 95 }, 
		[46] = { str = 27, agi = 36, sta = 40, int = 98, spi = 97 }, 
		[47] = { str = 28, agi = 36, sta = 40, int = 100, spi = 99 }, 
		[48] = { str = 28, agi = 37, sta = 41, int = 102, spi = 101 }, 
		[49] = { str = 28, agi = 37, sta = 42, int = 104, spi = 103 }, 
		[50] = { str = 29, agi = 37, sta = 42, int = 106, spi = 106 }, 
		[51] = { str = 29, agi = 38, sta = 43, int = 108, spi = 108 }, 
		[52] = { str = 29, agi = 38, sta = 43, int = 110, spi = 110 }, 
		[53] = { str = 30, agi = 39, sta = 44, int = 112, spi = 112 }, 
		[54] = { str = 30, agi = 39, sta = 45, int = 114, spi = 114 }, 
		[55] = { str = 30, agi = 40, sta = 45, int = 116, spi = 116 }, 
		[56] = { str = 31, agi = 40, sta = 46, int = 118, spi = 118 }, 
		[57] = { str = 31, agi = 41, sta = 47, int = 120, spi = 120 }, 
		[58] = { str = 31, agi = 41, sta = 47, int = 123, spi = 123 }, 
		[59] = { str = 32, agi = 42, sta = 48, int = 125, spi = 125 }, 
		[60] = { str = 32, agi = 42, sta = 49, int = 127, spi = 127 }, 
		[61] = { str = 33, agi = 42, sta = 50, int = 129, spi = 129 }, 
		[62] = { str = 33, agi = 43, sta = 50, int = 131, spi = 131 }, 
		[63] = { str = 33, agi = 43, sta = 51, int = 133, spi = 134 }, 
		[64] = { str = 34, agi = 44, sta = 52, int = 135, spi = 136 }, 
		[65] = { str = 34, agi = 44, sta = 52, int = 138, spi = 138 }, 
		[66] = { str = 34, agi = 45, sta = 53, int = 140, spi = 141 }, 
		[67] = { str = 35, agi = 45, sta = 54, int = 142, spi = 143 }, 
		[68] = { str = 35, agi = 46, sta = 55, int = 144, spi = 145 }, 
		[69] = { str = 36, agi = 46, sta = 55, int = 147, spi = 148 }, 
		[70] = { str = 36, agi = 47, sta = 56, int = 149, spi = 150 }
	},
	MAGE = {
		[1] = { str = 17, agi = 22, sta = 18, int = 27, spi = 21 }, 
		[2] = { str = 17, agi = 22, sta = 18, int = 28, spi = 22 }, 
		[3] = { str = 17, agi = 22, sta = 19, int = 30, spi = 24 }, 
		[4] = { str = 17, agi = 22, sta = 19, int = 31, spi = 25 }, 
		[5] = { str = 17, agi = 23, sta = 19, int = 32, spi = 26 }, 
		[6] = { str = 17, agi = 23, sta = 19, int = 34, spi = 28 }, 
		[7] = { str = 18, agi = 23, sta = 20, int = 35, spi = 29 }, 
		[8] = { str = 18, agi = 23, sta = 20, int = 37, spi = 30 }, 
		[9] = { str = 18, agi = 23, sta = 20, int = 38, spi = 32 }, 
		[10] = { str = 18, agi = 23, sta = 21, int = 40, spi = 33 }, 
		[11] = { str = 18, agi = 24, sta = 21, int = 41, spi = 35 }, 
		[12] = { str = 18, agi = 24, sta = 21, int = 42, spi = 36 }, 
		[13] = { str = 18, agi = 24, sta = 22, int = 44, spi = 37 }, 
		[14] = { str = 18, agi = 24, sta = 22, int = 45, spi = 39 }, 
		[15] = { str = 18, agi = 24, sta = 22, int = 47, spi = 40 }, 
		[16] = { str = 19, agi = 24, sta = 23, int = 49, spi = 42 }, 
		[17] = { str = 19, agi = 25, sta = 23, int = 50, spi = 43 }, 
		[18] = { str = 19, agi = 25, sta = 23, int = 52, spi = 45 }, 
		[19] = { str = 19, agi = 25, sta = 24, int = 53, spi = 46 }, 
		[20] = { str = 19, agi = 25, sta = 24, int = 55, spi = 48 }, 
		[21] = { str = 19, agi = 25, sta = 25, int = 57, spi = 50 }, 
		[22] = { str = 19, agi = 26, sta = 25, int = 58, spi = 51 }, 
		[23] = { str = 20, agi = 26, sta = 25, int = 60, spi = 53 }, 
		[24] = { str = 20, agi = 26, sta = 26, int = 61, spi = 54 }, 
		[25] = { str = 20, agi = 26, sta = 26, int = 63, spi = 56 }, 
		[26] = { str = 20, agi = 27, sta = 26, int = 65, spi = 58 }, 
		[27] = { str = 20, agi = 27, sta = 27, int = 67, spi = 59 }, 
		[28] = { str = 20, agi = 27, sta = 27, int = 68, spi = 61 }, 
		[29] = { str = 21, agi = 27, sta = 28, int = 70, spi = 63 }, 
		[30] = { str = 21, agi = 28, sta = 28, int = 72, spi = 64 }, 
		[31] = { str = 21, agi = 28, sta = 29, int = 74, spi = 66 }, 
		[32] = { str = 21, agi = 28, sta = 29, int = 75, spi = 68 }, 
		[33] = { str = 21, agi = 28, sta = 29, int = 77, spi = 70 }, 
		[34] = { str = 21, agi = 29, sta = 30, int = 79, spi = 71 }, 
		[35] = { str = 22, agi = 29, sta = 30, int = 81, spi = 73 }, 
		[36] = { str = 22, agi = 29, sta = 31, int = 83, spi = 75 }, 
		[37] = { str = 22, agi = 29, sta = 31, int = 85, spi = 77 }, 
		[38] = { str = 22, agi = 30, sta = 32, int = 86, spi = 78 }, 
		[39] = { str = 22, agi = 30, sta = 32, int = 88, spi = 80 }, 
		[40] = { str = 23, agi = 30, sta = 33, int = 90, spi = 82 }, 
		[41] = { str = 23, agi = 31, sta = 33, int = 92, spi = 84 }, 
		[42] = { str = 23, agi = 31, sta = 34, int = 94, spi = 86 }, 
		[43] = { str = 23, agi = 31, sta = 34, int = 96, spi = 88 }, 
		[44] = { str = 23, agi = 32, sta = 35, int = 98, spi = 90 }, 
		[45] = { str = 24, agi = 32, sta = 35, int = 100, spi = 92 }, 
		[46] = { str = 24, agi = 32, sta = 36, int = 102, spi = 93 }, 
		[47] = { str = 24, agi = 32, sta = 36, int = 104, spi = 95 }, 
		[48] = { str = 24, agi = 33, sta = 37, int = 106, spi = 97 }, 
		[49] = { str = 25, agi = 33, sta = 37, int = 108, spi = 99 }, 
		[50] = { str = 25, agi = 33, sta = 38, int = 110, spi = 101 }, 
		[51] = { str = 25, agi = 34, sta = 38, int = 112, spi = 103 }, 
		[52] = { str = 25, agi = 34, sta = 39, int = 114, spi = 105 }, 
		[53] = { str = 25, agi = 35, sta = 39, int = 117, spi = 107 }, 
		[54] = { str = 26, agi = 35, sta = 40, int = 119, spi = 109 }, 
		[55] = { str = 26, agi = 35, sta = 40, int = 121, spi = 111 }, 
		[56] = { str = 26, agi = 36, sta = 41, int = 123, spi = 113 }, 
		[57] = { str = 26, agi = 36, sta = 41, int = 125, spi = 116 }, 
		[58] = { str = 27, agi = 36, sta = 42, int = 127, spi = 118 }, 
		[59] = { str = 27, agi = 37, sta = 42, int = 130, spi = 120 }, 
		[60] = { str = 27, agi = 37, sta = 43, int = 132, spi = 122 }, 
		[61] = { str = 27, agi = 37, sta = 44, int = 134, spi = 124 }, 
		[62] = { str = 28, agi = 38, sta = 44, int = 136, spi = 126 }, 
		[63] = { str = 28, agi = 38, sta = 45, int = 139, spi = 128 }, 
		[64] = { str = 28, agi = 39, sta = 45, int = 141, spi = 131 }, 
		[65] = { str = 29, agi = 39, sta = 46, int = 143, spi = 133 }, 
		[66] = { str = 29, agi = 39, sta = 47, int = 146, spi = 135 }, 
		[67] = { str = 29, agi = 40, sta = 47, int = 148, spi = 137 }, 
		[68] = { str = 29, agi = 40, sta = 48, int = 150, spi = 139 }, 
		[69] = { str = 30, agi = 41, sta = 48, int = 153, spi = 142 }, 
		[70] = { str = 30, agi = 41, sta = 49, int = 155, spi = 144 }
	},
	WARLOCK = {
		[1] = { str = 17, agi = 22, sta = 19, int = 26, spi = 21 }, 
		[2] = { str = 17, agi = 22, sta = 20, int = 27, spi = 22 }, 
		[3] = { str = 18, agi = 23, sta = 20, int = 28, spi = 23 }, 
		[4] = { str = 18, agi = 23, sta = 21, int = 29, spi = 24 }, 
		[5] = { str = 18, agi = 23, sta = 21, int = 31, spi = 26 }, 
		[6] = { str = 18, agi = 24, sta = 22, int = 32, spi = 27 }, 
		[7] = { str = 19, agi = 24, sta = 22, int = 33, spi = 28 }, 
		[8] = { str = 19, agi = 25, sta = 23, int = 34, spi = 29 }, 
		[9] = { str = 19, agi = 25, sta = 24, int = 36, spi = 30 }, 
		[10] = { str = 20, agi = 25, sta = 24, int = 37, spi = 32 }, 
		[11] = { str = 20, agi = 26, sta = 25, int = 38, spi = 33 }, 
		[12] = { str = 20, agi = 26, sta = 25, int = 39, spi = 34 }, 
		[13] = { str = 21, agi = 27, sta = 26, int = 41, spi = 36 }, 
		[14] = { str = 21, agi = 27, sta = 27, int = 42, spi = 37 }, 
		[15] = { str = 21, agi = 27, sta = 27, int = 43, spi = 38 }, 
		[16] = { str = 22, agi = 28, sta = 28, int = 45, spi = 39 }, 
		[17] = { str = 22, agi = 28, sta = 29, int = 46, spi = 41 }, 
		[18] = { str = 23, agi = 29, sta = 29, int = 47, spi = 42 }, 
		[19] = { str = 23, agi = 29, sta = 30, int = 49, spi = 43 }, 
		[20] = { str = 23, agi = 30, sta = 31, int = 50, spi = 45 }, 
		[21] = { str = 24, agi = 30, sta = 31, int = 51, spi = 46 }, 
		[22] = { str = 24, agi = 31, sta = 32, int = 53, spi = 48 }, 
		[23] = { str = 24, agi = 31, sta = 33, int = 54, spi = 49 }, 
		[24] = { str = 25, agi = 31, sta = 33, int = 56, spi = 50 }, 
		[25] = { str = 25, agi = 32, sta = 34, int = 57, spi = 52 }, 
		[26] = { str = 26, agi = 32, sta = 35, int = 59, spi = 53 }, 
		[27] = { str = 26, agi = 33, sta = 36, int = 60, spi = 55 }, 
		[28] = { str = 26, agi = 33, sta = 36, int = 62, spi = 56 }, 
		[29] = { str = 27, agi = 34, sta = 37, int = 63, spi = 58 }, 
		[30] = { str = 27, agi = 34, sta = 38, int = 65, spi = 59 }, 
		[31] = { str = 28, agi = 35, sta = 39, int = 66, spi = 61 }, 
		[32] = { str = 28, agi = 36, sta = 39, int = 68, spi = 62 }, 
		[33] = { str = 29, agi = 36, sta = 40, int = 69, spi = 64 }, 
		[34] = { str = 29, agi = 37, sta = 41, int = 71, spi = 65 }, 
		[35] = { str = 29, agi = 37, sta = 42, int = 73, spi = 67 }, 
		[36] = { str = 30, agi = 38, sta = 42, int = 74, spi = 69 }, 
		[37] = { str = 30, agi = 38, sta = 43, int = 76, spi = 70 }, 
		[38] = { str = 31, agi = 39, sta = 44, int = 77, spi = 72 }, 
		[39] = { str = 31, agi = 39, sta = 45, int = 79, spi = 73 }, 
		[40] = { str = 32, agi = 40, sta = 46, int = 81, spi = 75 }, 
		[41] = { str = 32, agi = 41, sta = 47, int = 82, spi = 77 }, 
		[42] = { str = 33, agi = 41, sta = 47, int = 84, spi = 78 }, 
		[43] = { str = 33, agi = 42, sta = 48, int = 86, spi = 80 }, 
		[44] = { str = 34, agi = 42, sta = 49, int = 88, spi = 82 }, 
		[45] = { str = 34, agi = 43, sta = 50, int = 89, spi = 83 }, 
		[46] = { str = 35, agi = 44, sta = 51, int = 91, spi = 85 }, 
		[47] = { str = 35, agi = 44, sta = 52, int = 93, spi = 87 }, 
		[48] = { str = 36, agi = 45, sta = 53, int = 95, spi = 89 }, 
		[49] = { str = 36, agi = 45, sta = 53, int = 96, spi = 90 }, 
		[50] = { str = 37, agi = 46, sta = 54, int = 98, spi = 92 }, 
		[51] = { str = 37, agi = 47, sta = 55, int = 100, spi = 94 }, 
		[52] = { str = 38, agi = 47, sta = 56, int = 102, spi = 96 }, 
		[53] = { str = 38, agi = 48, sta = 57, int = 104, spi = 97 }, 
		[54] = { str = 39, agi = 49, sta = 58, int = 105, spi = 99 }, 
		[55] = { str = 39, agi = 49, sta = 59, int = 107, spi = 101 }, 
		[56] = { str = 40, agi = 50, sta = 60, int = 109, spi = 103 }, 
		[57] = { str = 40, agi = 51, sta = 61, int = 111, spi = 105 }, 
		[58] = { str = 41, agi = 51, sta = 62, int = 113, spi = 107 }, 
		[59] = { str = 42, agi = 52, sta = 63, int = 115, spi = 108 }, 
		[60] = { str = 42, agi = 53, sta = 64, int = 117, spi = 110 }, 
		[61] = { str = 43, agi = 53, sta = 65, int = 119, spi = 112 }, 
		[62] = { str = 43, agi = 54, sta = 66, int = 121, spi = 114 }, 
		[63] = { str = 44, agi = 55, sta = 67, int = 123, spi = 116 }, 
		[64] = { str = 44, agi = 56, sta = 68, int = 125, spi = 118 }, 
		[65] = { str = 45, agi = 56, sta = 69, int = 127, spi = 120 }, 
		[66] = { str = 46, agi = 57, sta = 70, int = 129, spi = 122 }, 
		[67] = { str = 46, agi = 58, sta = 71, int = 131, spi = 124 }, 
		[68] = { str = 47, agi = 58, sta = 72, int = 133, spi = 126 }, 
		[69] = { str = 47, agi = 59, sta = 73, int = 135, spi = 128 }, 
		[70] = { str = 48, agi = 60, sta = 74, int = 137, spi = 130 }
	}
},
Draenei = {
	WARRIOR = {
		[1] = { str = 24, agi = 17, sta = 21, int = 21, spi = 22 },
		[2] = { str = 25, agi = 18, sta = 22, int = 21, spi = 22 },
		[3] = { str = 27, agi = 19, sta = 23, int = 21, spi = 23 },
		[4] = { str = 28, agi = 19, sta = 25, int = 21, spi = 23 },
		[5] = { str = 29, agi = 20, sta = 26, int = 21, spi = 23 },
		[6] = { str = 31, agi = 21, sta = 27, int = 21, spi = 23 },
		[7] = { str = 32, agi = 22, sta = 28, int = 21, spi = 24 },
		[8] = { str = 33, agi = 23, sta = 29, int = 22, spi = 24 },
		[9] = { str = 35, agi = 24, sta = 31, int = 22, spi = 24 },
		[10] = { str = 36, agi = 24, sta = 32, int = 22, spi = 25 },
		[11] = { str = 37, agi = 25, sta = 33, int = 22, spi = 25 },
		[12] = { str = 39, agi = 26, sta = 34, int = 22, spi = 25 },
		[13] = { str = 40, agi = 27, sta = 36, int = 22, spi = 26 },
		[14] = { str = 42, agi = 28, sta = 37, int = 22, spi = 26 },
		[15] = { str = 43, agi = 29, sta = 38, int = 22, spi = 26 },
		[16] = { str = 45, agi = 30, sta = 40, int = 22, spi = 27 },
		[17] = { str = 46, agi = 31, sta = 41, int = 23, spi = 27 },
		[18] = { str = 48, agi = 32, sta = 43, int = 23, spi = 27 },
		[19] = { str = 49, agi = 33, sta = 44, int = 23, spi = 28 },
		[20] = { str = 51, agi = 34, sta = 45, int = 23, spi = 28 },
		[21] = { str = 52, agi = 34, sta = 47, int = 23, spi = 28 },
		[22] = { str = 54, agi = 35, sta = 48, int = 23, spi = 29 },
		[23] = { str = 55, agi = 36, sta = 50, int = 23, spi = 29 },
		[24] = { str = 57, agi = 37, sta = 51, int = 24, spi = 30 },
		[25] = { str = 59, agi = 38, sta = 52, int = 24, spi = 30 },
		[26] = { str = 60, agi = 39, sta = 54, int = 24, spi = 30 },
		[27] = { str = 62, agi = 40, sta = 55, int = 24, spi = 31 },
		[28] = { str = 63, agi = 41, sta = 57, int = 24, spi = 31 },
		[29] = { str = 65, agi = 43, sta = 58, int = 24, spi = 32 },
		[30] = { str = 67, agi = 44, sta = 60, int = 24, spi = 32 },
		[31] = { str = 69, agi = 45, sta = 62, int = 25, spi = 32 },
		[32] = { str = 70, agi = 46, sta = 63, int = 25, spi = 33 },
		[33] = { str = 72, agi = 47, sta = 65, int = 25, spi = 33 },
		[34] = { str = 74, agi = 48, sta = 66, int = 25, spi = 34 },
		[35] = { str = 75, agi = 49, sta = 68, int = 25, spi = 34 },
		[36] = { str = 77, agi = 50, sta = 69, int = 26, spi = 35 },
		[37] = { str = 79, agi = 51, sta = 71, int = 26, spi = 35 },
		[38] = { str = 81, agi = 52, sta = 73, int = 26, spi = 35 },
		[39] = { str = 83, agi = 53, sta = 74, int = 26, spi = 36 },
		[40] = { str = 84, agi = 55, sta = 76, int = 26, spi = 36 },
		[41] = { str = 86, agi = 56, sta = 78, int = 27, spi = 37 },
		[42] = { str = 88, agi = 57, sta = 79, int = 27, spi = 37 },
		[43] = { str = 90, agi = 58, sta = 81, int = 27, spi = 38 },
		[44] = { str = 92, agi = 59, sta = 83, int = 27, spi = 38 },
		[45] = { str = 94, agi = 60, sta = 85, int = 27, spi = 39 },
		[46] = { str = 96, agi = 62, sta = 86, int = 28, spi = 39 },
		[47] = { str = 98, agi = 63, sta = 88, int = 28, spi = 40 },
		[48] = { str = 100, agi = 64, sta = 90, int = 28, spi = 40 },
		[49] = { str = 102, agi = 65, sta = 92, int = 28, spi = 41 },
		[50] = { str = 103, agi = 66, sta = 93, int = 29, spi = 41 },
		[51] = { str = 105, agi = 68, sta = 95, int = 29, spi = 42 },
		[52] = { str = 107, agi = 69, sta = 97, int = 29, spi = 42 },
		[53] = { str = 109, agi = 70, sta = 99, int = 29, spi = 43 },
		[54] = { str = 112, agi = 71, sta = 101, int = 30, spi = 44 },
		[55] = { str = 114, agi = 73, sta = 103, int = 30, spi = 44 },
		[56] = { str = 116, agi = 74, sta = 104, int = 30, spi = 45 },
		[57] = { str = 118, agi = 75, sta = 106, int = 30, spi = 45 },
		[58] = { str = 120, agi = 77, sta = 108, int = 31, spi = 46 },
		[59] = { str = 122, agi = 78, sta = 110, int = 31, spi = 46 },
		[60] = { str = 124, agi = 79, sta = 112, int = 31, spi = 47 },
		[61] = { str = 126, agi = 81, sta = 114, int = 31, spi = 48 },
		[62] = { str = 128, agi = 82, sta = 116, int = 32, spi = 48 },
		[63] = { str = 130, agi = 83, sta = 118, int = 32, spi = 49 },
		[64] = { str = 133, agi = 85, sta = 120, int = 32, spi = 49 },
		[65] = { str = 135, agi = 86, sta = 122, int = 33, spi = 50 },
		[66] = { str = 137, agi = 87, sta = 124, int = 33, spi = 51 },
		[67] = { str = 139, agi = 89, sta = 126, int = 33, spi = 51 },
		[68] = { str = 141, agi = 90, sta = 128, int = 33, spi = 52 },
		[69] = { str = 144, agi = 92, sta = 130, int = 34, spi = 52 },
		[70] = { str = 146, agi = 93, sta = 132, int = 34, spi = 53 }
	},
	PALADIN = {
		[1] = { str = 23, agi = 17, sta = 21, int = 21, spi = 23 },
		[2] = { str = 24, agi = 18, sta = 22, int = 22, spi = 24 },
		[3] = { str = 25, agi = 18, sta = 23, int = 22, spi = 24 },
		[4] = { str = 26, agi = 19, sta = 24, int = 23, spi = 25 },
		[5] = { str = 27, agi = 19, sta = 25, int = 24, spi = 26 },
		[6] = { str = 29, agi = 20, sta = 26, int = 24, spi = 26 },
		[7] = { str = 30, agi = 21, sta = 27, int = 25, spi = 27 },
		[8] = { str = 31, agi = 21, sta = 28, int = 26, spi = 28 },
		[9] = { str = 32, agi = 22, sta = 29, int = 26, spi = 29 },
		[10] = { str = 33, agi = 22, sta = 31, int = 27, spi = 29 },
		[11] = { str = 34, agi = 23, sta = 32, int = 28, spi = 30 },
		[12] = { str = 36, agi = 24, sta = 33, int = 28, spi = 31 },
		[13] = { str = 37, agi = 24, sta = 34, int = 29, spi = 32 },
		[14] = { str = 38, agi = 25, sta = 35, int = 30, spi = 32 },
		[15] = { str = 39, agi = 26, sta = 36, int = 31, spi = 33 },
		[16] = { str = 40, agi = 26, sta = 37, int = 31, spi = 34 },
		[17] = { str = 42, agi = 27, sta = 39, int = 32, spi = 35 },
		[18] = { str = 43, agi = 28, sta = 40, int = 33, spi = 36 },
		[19] = { str = 44, agi = 28, sta = 41, int = 34, spi = 37 },
		[20] = { str = 46, agi = 29, sta = 42, int = 34, spi = 37 },
		[21] = { str = 47, agi = 30, sta = 44, int = 35, spi = 38 },
		[22] = { str = 48, agi = 31, sta = 45, int = 36, spi = 39 },
		[23] = { str = 50, agi = 31, sta = 46, int = 37, spi = 40 },
		[24] = { str = 51, agi = 32, sta = 47, int = 38, spi = 41 },
		[25] = { str = 52, agi = 33, sta = 49, int = 38, spi = 42 },
		[26] = { str = 54, agi = 34, sta = 50, int = 39, spi = 43 },
		[27] = { str = 55, agi = 34, sta = 51, int = 40, spi = 44 },
		[28] = { str = 56, agi = 35, sta = 53, int = 41, spi = 44 },
		[29] = { str = 58, agi = 36, sta = 54, int = 42, spi = 45 },
		[30] = { str = 59, agi = 37, sta = 55, int = 43, spi = 46 },
		[31] = { str = 61, agi = 37, sta = 57, int = 43, spi = 47 },
		[32] = { str = 62, agi = 38, sta = 58, int = 44, spi = 48 },
		[33] = { str = 64, agi = 39, sta = 59, int = 45, spi = 49 },
		[34] = { str = 65, agi = 40, sta = 61, int = 46, spi = 50 },
		[35] = { str = 67, agi = 41, sta = 62, int = 47, spi = 51 },
		[36] = { str = 68, agi = 42, sta = 64, int = 48, spi = 52 },
		[37] = { str = 70, agi = 42, sta = 65, int = 49, spi = 53 },
		[38] = { str = 71, agi = 43, sta = 67, int = 50, spi = 54 },
		[39] = { str = 73, agi = 44, sta = 68, int = 51, spi = 55 },
		[40] = { str = 74, agi = 45, sta = 69, int = 52, spi = 56 },
		[41] = { str = 76, agi = 46, sta = 71, int = 53, spi = 57 },
		[42] = { str = 78, agi = 47, sta = 72, int = 54, spi = 58 },
		[43] = { str = 79, agi = 47, sta = 74, int = 55, spi = 59 },
		[44] = { str = 81, agi = 48, sta = 75, int = 56, spi = 60 },
		[45] = { str = 82, agi = 49, sta = 77, int = 57, spi = 61 },
		[46] = { str = 84, agi = 50, sta = 78, int = 58, spi = 62 },
		[47] = { str = 86, agi = 51, sta = 80, int = 59, spi = 64 },
		[48] = { str = 87, agi = 52, sta = 82, int = 60, spi = 65 },
		[49] = { str = 89, agi = 53, sta = 83, int = 61, spi = 66 },
		[50] = { str = 91, agi = 54, sta = 85, int = 62, spi = 67 },
		[51] = { str = 92, agi = 55, sta = 86, int = 63, spi = 68 },
		[52] = { str = 94, agi = 56, sta = 88, int = 64, spi = 69 },
		[53] = { str = 96, agi = 57, sta = 90, int = 65, spi = 70 },
		[54] = { str = 97, agi = 58, sta = 91, int = 66, spi = 71 },
		[55] = { str = 99, agi = 59, sta = 93, int = 67, spi = 73 },
		[56] = { str = 101, agi = 60, sta = 95, int = 68, spi = 74 },
		[57] = { str = 103, agi = 61, sta = 96, int = 69, spi = 75 },
		[58] = { str = 105, agi = 62, sta = 98, int = 70, spi = 76 },
		[59] = { str = 106, agi = 63, sta = 100, int = 71, spi = 77 },
		[60] = { str = 108, agi = 64, sta = 101, int = 72, spi = 78 },
		[61] = { str = 110, agi = 65, sta = 103, int = 74, spi = 80 },
		[62] = { str = 112, agi = 66, sta = 105, int = 75, spi = 81 },
		[63] = { str = 114, agi = 67, sta = 106, int = 76, spi = 82 },
		[64] = { str = 116, agi = 68, sta = 108, int = 77, spi = 83 },
		[65] = { str = 117, agi = 69, sta = 110, int = 78, spi = 85 },
		[66] = { str = 119, agi = 70, sta = 112, int = 79, spi = 86 },
		[67] = { str = 121, agi = 71, sta = 114, int = 80, spi = 87 },
		[68] = { str = 123, agi = 72, sta = 115, int = 82, spi = 88 },
		[69] = { str = 125, agi = 73, sta = 117, int = 83, spi = 90 },
		[70] = { str = 127, agi = 74, sta = 119, int = 84, spi = 91 }
	
	},
	HUNTER = {
		[1] = { str = 21, agi = 20, sta = 20, int = 21, spi = 23 },
		[2] = { str = 21, agi = 21, sta = 21, int = 22, spi = 24 },
		[3] = { str = 22, agi = 23, sta = 22, int = 22, spi = 24 },
		[4] = { str = 22, agi = 24, sta = 23, int = 23, spi = 25 },
		[5] = { str = 23, agi = 25, sta = 24, int = 23, spi = 25 },
		[6] = { str = 23, agi = 27, sta = 25, int = 24, spi = 26 },
		[7] = { str = 24, agi = 28, sta = 26, int = 24, spi = 27 },
		[8] = { str = 24, agi = 30, sta = 27, int = 25, spi = 27 },
		[9] = { str = 25, agi = 31, sta = 27, int = 26, spi = 28 },
		[10] = { str = 25, agi = 33, sta = 28, int = 26, spi = 29 },
		[11] = { str = 25, agi = 34, sta = 29, int = 27, spi = 29 },
		[12] = { str = 26, agi = 36, sta = 30, int = 28, spi = 30 },
		[13] = { str = 26, agi = 37, sta = 31, int = 28, spi = 31 },
		[14] = { str = 27, agi = 39, sta = 32, int = 29, spi = 32 },
		[15] = { str = 27, agi = 40, sta = 34, int = 30, spi = 32 },
		[16] = { str = 28, agi = 42, sta = 35, int = 30, spi = 33 },
		[17] = { str = 28, agi = 43, sta = 36, int = 31, spi = 34 },
		[18] = { str = 29, agi = 45, sta = 37, int = 32, spi = 35 },
		[19] = { str = 29, agi = 47, sta = 38, int = 32, spi = 35 },
		[20] = { str = 30, agi = 48, sta = 39, int = 33, spi = 36 },
		[21] = { str = 31, agi = 50, sta = 40, int = 34, spi = 37 },
		[22] = { str = 31, agi = 51, sta = 41, int = 34, spi = 38 },
		[23] = { str = 32, agi = 53, sta = 42, int = 35, spi = 38 },
		[24] = { str = 32, agi = 55, sta = 43, int = 36, spi = 39 },
		[25] = { str = 33, agi = 57, sta = 44, int = 37, spi = 40 },
		[26] = { str = 33, agi = 58, sta = 46, int = 37, spi = 41 },
		[27] = { str = 34, agi = 60, sta = 47, int = 38, spi = 42 },
		[28] = { str = 35, agi = 62, sta = 48, int = 39, spi = 42 },
		[29] = { str = 35, agi = 63, sta = 49, int = 40, spi = 43 },
		[30] = { str = 36, agi = 65, sta = 50, int = 40, spi = 44 },
		[31] = { str = 36, agi = 67, sta = 52, int = 41, spi = 45 },
		[32] = { str = 37, agi = 69, sta = 53, int = 42, spi = 46 },
		[33] = { str = 38, agi = 71, sta = 54, int = 43, spi = 47 },
		[34] = { str = 38, agi = 72, sta = 55, int = 44, spi = 48 },
		[35] = { str = 39, agi = 74, sta = 57, int = 44, spi = 48 },
		[36] = { str = 39, agi = 76, sta = 58, int = 45, spi = 49 },
		[37] = { str = 40, agi = 78, sta = 59, int = 46, spi = 50 },
		[38] = { str = 41, agi = 80, sta = 60, int = 47, spi = 51 },
		[39] = { str = 41, agi = 82, sta = 62, int = 48, spi = 52 },
		[40] = { str = 42, agi = 84, sta = 63, int = 49, spi = 53 },
		[41] = { str = 43, agi = 86, sta = 64, int = 50, spi = 54 },
		[42] = { str = 43, agi = 88, sta = 66, int = 50, spi = 55 },
		[43] = { str = 44, agi = 90, sta = 67, int = 51, spi = 56 },
		[44] = { str = 45, agi = 91, sta = 68, int = 52, spi = 57 },
		[45] = { str = 45, agi = 93, sta = 70, int = 53, spi = 58 },
		[46] = { str = 46, agi = 95, sta = 71, int = 54, spi = 59 },
		[47] = { str = 47, agi = 98, sta = 72, int = 55, spi = 60 },
		[48] = { str = 48, agi = 100, sta = 74, int = 56, spi = 61 },
		[49] = { str = 48, agi = 102, sta = 75, int = 57, spi = 62 },
		[50] = { str = 49, agi = 104, sta = 77, int = 58, spi = 63 },
		[51] = { str = 50, agi = 106, sta = 78, int = 59, spi = 64 },
		[52] = { str = 51, agi = 108, sta = 79, int = 60, spi = 65 },
		[53] = { str = 51, agi = 110, sta = 81, int = 61, spi = 66 },
		[54] = { str = 52, agi = 112, sta = 82, int = 61, spi = 67 },
		[55] = { str = 53, agi = 114, sta = 84, int = 62, spi = 68 },
		[56] = { str = 54, agi = 116, sta = 85, int = 63, spi = 69 },
		[57] = { str = 54, agi = 118, sta = 87, int = 64, spi = 70 },
		[58] = { str = 55, agi = 121, sta = 88, int = 65, spi = 71 },
		[59] = { str = 56, agi = 123, sta = 90, int = 66, spi = 72 },
		[60] = { str = 57, agi = 125, sta = 91, int = 67, spi = 74 },
		[61] = { str = 58, agi = 127, sta = 93, int = 68, spi = 75 },
		[62] = { str = 58, agi = 130, sta = 94, int = 69, spi = 76 },
		[63] = { str = 59, agi = 132, sta = 96, int = 71, spi = 77 },
		[64] = { str = 60, agi = 134, sta = 97, int = 72, spi = 78 },
		[65] = { str = 61, agi = 136, sta = 99, int = 73, spi = 79 },
		[66] = { str = 62, agi = 139, sta = 101, int = 74, spi = 80 },
		[67] = { str = 62, agi = 141, sta = 102, int = 75, spi = 81 },
		[68] = { str = 63, agi = 143, sta = 104, int = 76, spi = 83 },
		[69] = { str = 64, agi = 146, sta = 105, int = 77, spi = 84 },
		[70] = { str = 65, agi = 148, sta = 107, int = 78, spi = 85 }
	},
	PRIEST = {
		[1] = { str = 21, agi = 17, sta = 19, int = 23, spi = 25 },
		[2] = { str = 21, agi = 17, sta = 19, int = 24, spi = 26 },
		[3] = { str = 21, agi = 17, sta = 20, int = 26, spi = 28 },
		[4] = { str = 21, agi = 18, sta = 20, int = 27, spi = 29 },
		[5] = { str = 22, agi = 18, sta = 20, int = 28, spi = 30 },
		[6] = { str = 22, agi = 18, sta = 21, int = 30, spi = 32 },
		[7] = { str = 22, agi = 18, sta = 21, int = 31, spi = 33 },
		[8] = { str = 22, agi = 19, sta = 22, int = 32, spi = 35 },
		[9] = { str = 22, agi = 19, sta = 22, int = 34, spi = 36 },
		[10] = { str = 22, agi = 19, sta = 22, int = 35, spi = 38 },
		[11] = { str = 23, agi = 19, sta = 23, int = 37, spi = 39 },
		[12] = { str = 23, agi = 20, sta = 23, int = 38, spi = 41 },
		[13] = { str = 23, agi = 20, sta = 24, int = 39, spi = 42 },
		[14] = { str = 23, agi = 20, sta = 24, int = 41, spi = 44 },
		[15] = { str = 23, agi = 20, sta = 25, int = 42, spi = 45 },
		[16] = { str = 24, agi = 21, sta = 25, int = 44, spi = 47 },
		[17] = { str = 24, agi = 21, sta = 25, int = 45, spi = 48 },
		[18] = { str = 24, agi = 21, sta = 26, int = 47, spi = 50 },
		[19] = { str = 24, agi = 22, sta = 26, int = 48, spi = 51 },
		[20] = { str = 24, agi = 22, sta = 27, int = 50, spi = 53 },
		[21] = { str = 25, agi = 22, sta = 27, int = 51, spi = 55 },
		[22] = { str = 25, agi = 22, sta = 28, int = 53, spi = 56 },
		[23] = { str = 25, agi = 23, sta = 28, int = 55, spi = 58 },
		[24] = { str = 25, agi = 23, sta = 29, int = 56, spi = 60 },
		[25] = { str = 25, agi = 23, sta = 29, int = 58, spi = 61 },
		[26] = { str = 26, agi = 24, sta = 30, int = 60, spi = 63 },
		[27] = { str = 26, agi = 24, sta = 30, int = 61, spi = 65 },
		[28] = { str = 26, agi = 24, sta = 31, int = 63, spi = 66 },
		[29] = { str = 26, agi = 25, sta = 31, int = 65, spi = 68 },
		[30] = { str = 27, agi = 25, sta = 32, int = 66, spi = 70 },
		[31] = { str = 27, agi = 25, sta = 32, int = 68, spi = 72 },
		[32] = { str = 27, agi = 26, sta = 33, int = 70, spi = 73 },
		[33] = { str = 27, agi = 26, sta = 33, int = 71, spi = 75 },
		[34] = { str = 28, agi = 26, sta = 34, int = 73, spi = 77 },
		[35] = { str = 28, agi = 27, sta = 34, int = 75, spi = 79 },
		[36] = { str = 28, agi = 27, sta = 35, int = 77, spi = 81 },
		[37] = { str = 29, agi = 28, sta = 35, int = 79, spi = 83 },
		[38] = { str = 29, agi = 28, sta = 36, int = 80, spi = 85 },
		[39] = { str = 29, agi = 28, sta = 37, int = 82, spi = 86 },
		[40] = { str = 29, agi = 29, sta = 37, int = 84, spi = 88 },
		[41] = { str = 30, agi = 29, sta = 38, int = 86, spi = 90 },
		[42] = { str = 30, agi = 29, sta = 38, int = 88, spi = 92 },
		[43] = { str = 30, agi = 30, sta = 39, int = 90, spi = 94 },
		[44] = { str = 31, agi = 30, sta = 39, int = 91, spi = 96 },
		[45] = { str = 31, agi = 31, sta = 40, int = 93, spi = 98 },
		[46] = { str = 31, agi = 31, sta = 41, int = 95, spi = 100 },
		[47] = { str = 32, agi = 31, sta = 41, int = 97, spi = 102 },
		[48] = { str = 32, agi = 32, sta = 42, int = 99, spi = 104 },
		[49] = { str = 32, agi = 32, sta = 43, int = 101, spi = 106 },
		[50] = { str = 33, agi = 33, sta = 43, int = 103, spi = 108 },
		[51] = { str = 33, agi = 33, sta = 44, int = 105, spi = 110 },
		[52] = { str = 33, agi = 34, sta = 44, int = 107, spi = 113 },
		[53] = { str = 34, agi = 34, sta = 45, int = 109, spi = 115 },
		[54] = { str = 34, agi = 34, sta = 46, int = 111, spi = 117 },
		[55] = { str = 34, agi = 35, sta = 46, int = 113, spi = 119 },
		[56] = { str = 35, agi = 35, sta = 47, int = 115, spi = 121 },
		[57] = { str = 35, agi = 36, sta = 48, int = 118, spi = 123 },
		[58] = { str = 35, agi = 36, sta = 48, int = 120, spi = 126 },
		[59] = { str = 36, agi = 37, sta = 49, int = 122, spi = 128 },
		[60] = { str = 36, agi = 37, sta = 50, int = 124, spi = 130 },
		[61] = { str = 36, agi = 38, sta = 51, int = 126, spi = 132 },
		[62] = { str = 37, agi = 38, sta = 51, int = 128, spi = 134 },
		[63] = { str = 37, agi = 39, sta = 52, int = 130, spi = 137 },
		[64] = { str = 38, agi = 39, sta = 53, int = 133, spi = 139 },
		[65] = { str = 38, agi = 40, sta = 53, int = 135, spi = 141 },
		[66] = { str = 38, agi = 40, sta = 54, int = 137, spi = 144 },
		[67] = { str = 39, agi = 40, sta = 55, int = 139, spi = 146 },
		[68] = { str = 39, agi = 41, sta = 56, int = 141, spi = 148 },
		[69] = { str = 40, agi = 41, sta = 56, int = 144, spi = 151 },
		[70] = { str = 40, agi = 42, sta = 57, int = 146, spi = 153 }
	},
	SHAMAN = {
		[1] = { str = 22, agi = 17, sta = 20, int = 22, spi = 24 },
		[2] = { str = 23, agi = 17, sta = 21, int = 23, spi = 25 },
		[3] = { str = 24, agi = 18, sta = 22, int = 24, spi = 26 },
		[4] = { str = 25, agi = 18, sta = 23, int = 25, spi = 27 },
		[5] = { str = 25, agi = 19, sta = 24, int = 26, spi = 28 },
		[6] = { str = 26, agi = 19, sta = 25, int = 27, spi = 29 },
		[7] = { str = 27, agi = 20, sta = 26, int = 28, spi = 30 },
		[8] = { str = 28, agi = 20, sta = 27, int = 28, spi = 31 },
		[9] = { str = 29, agi = 21, sta = 28, int = 29, spi = 32 },
		[10] = { str = 30, agi = 21, sta = 29, int = 30, spi = 33 },
		[11] = { str = 31, agi = 22, sta = 30, int = 31, spi = 35 },
		[12] = { str = 32, agi = 22, sta = 31, int = 32, spi = 36 },
		[13] = { str = 33, agi = 23, sta = 32, int = 33, spi = 37 },
		[14] = { str = 34, agi = 23, sta = 33, int = 34, spi = 38 },
		[15] = { str = 34, agi = 24, sta = 35, int = 35, spi = 39 },
		[16] = { str = 35, agi = 24, sta = 36, int = 36, spi = 40 },
		[17] = { str = 36, agi = 25, sta = 37, int = 38, spi = 42 },
		[18] = { str = 37, agi = 25, sta = 38, int = 39, spi = 43 },
		[19] = { str = 38, agi = 26, sta = 39, int = 40, spi = 44 },
		[20] = { str = 39, agi = 26, sta = 40, int = 41, spi = 45 },
		[21] = { str = 40, agi = 27, sta = 41, int = 42, spi = 46 },
		[22] = { str = 41, agi = 27, sta = 43, int = 43, spi = 48 },
		[23] = { str = 43, agi = 28, sta = 44, int = 44, spi = 49 },
		[24] = { str = 44, agi = 28, sta = 45, int = 45, spi = 50 },
		[25] = { str = 45, agi = 29, sta = 46, int = 46, spi = 51 },
		[26] = { str = 46, agi = 30, sta = 47, int = 48, spi = 53 },
		[27] = { str = 47, agi = 30, sta = 49, int = 49, spi = 54 },
		[28] = { str = 48, agi = 31, sta = 50, int = 50, spi = 55 },
		[29] = { str = 49, agi = 31, sta = 51, int = 51, spi = 57 },
		[30] = { str = 50, agi = 32, sta = 53, int = 52, spi = 58 },
		[31] = { str = 51, agi = 33, sta = 54, int = 53, spi = 59 },
		[32] = { str = 52, agi = 33, sta = 55, int = 55, spi = 61 },
		[33] = { str = 53, agi = 34, sta = 56, int = 56, spi = 62 },
		[34] = { str = 55, agi = 34, sta = 58, int = 57, spi = 64 },
		[35] = { str = 56, agi = 35, sta = 59, int = 58, spi = 65 },
		[36] = { str = 57, agi = 36, sta = 60, int = 60, spi = 66 },
		[37] = { str = 58, agi = 36, sta = 62, int = 61, spi = 68 },
		[38] = { str = 59, agi = 37, sta = 63, int = 62, spi = 69 },
		[39] = { str = 61, agi = 38, sta = 65, int = 63, spi = 71 },
		[40] = { str = 62, agi = 38, sta = 66, int = 65, spi = 72 },
		[41] = { str = 63, agi = 39, sta = 67, int = 66, spi = 74 },
		[42] = { str = 64, agi = 40, sta = 69, int = 67, spi = 75 },
		[43] = { str = 65, agi = 40, sta = 70, int = 69, spi = 77 },
		[44] = { str = 67, agi = 41, sta = 72, int = 70, spi = 78 },
		[45] = { str = 68, agi = 42, sta = 73, int = 71, spi = 80 },
		[46] = { str = 69, agi = 42, sta = 75, int = 73, spi = 81 },
		[47] = { str = 71, agi = 43, sta = 76, int = 74, spi = 83 },
		[48] = { str = 72, agi = 44, sta = 78, int = 76, spi = 84 },
		[49] = { str = 73, agi = 45, sta = 79, int = 77, spi = 86 },
		[50] = { str = 74, agi = 45, sta = 81, int = 78, spi = 88 },
		[51] = { str = 76, agi = 46, sta = 82, int = 80, spi = 89 },
		[52] = { str = 77, agi = 47, sta = 84, int = 81, spi = 91 },
		[53] = { str = 78, agi = 47, sta = 85, int = 83, spi = 92 },
		[54] = { str = 80, agi = 48, sta = 87, int = 84, spi = 94 },
		[55] = { str = 81, agi = 49, sta = 88, int = 86, spi = 96 },
		[56] = { str = 83, agi = 50, sta = 90, int = 87, spi = 97 },
		[57] = { str = 84, agi = 50, sta = 91, int = 89, spi = 99 },
		[58] = { str = 85, agi = 51, sta = 93, int = 90, spi = 101 },
		[59] = { str = 87, agi = 52, sta = 95, int = 92, spi = 102 },
		[60] = { str = 88, agi = 53, sta = 96, int = 93, spi = 104 },
		[61] = { str = 90, agi = 54, sta = 98, int = 95, spi = 106 },
		[62] = { str = 91, agi = 54, sta = 99, int = 96, spi = 108 },
		[63] = { str = 93, agi = 55, sta = 101, int = 98, spi = 109 },
		[64] = { str = 94, agi = 56, sta = 103, int = 99, spi = 111 },
		[65] = { str = 95, agi = 57, sta = 104, int = 101, spi = 113 },
		[66] = { str = 97, agi = 58, sta = 106, int = 103, spi = 115 },
		[67] = { str = 98, agi = 58, sta = 108, int = 104, spi = 117 },
		[68] = { str = 100, agi = 59, sta = 110, int = 106, spi = 118 },
		[69] = { str = 101, agi = 60, sta = 111, int = 107, spi = 120 },
		[70] = { str = 103, agi = 61, sta = 113, int = 109, spi = 122 }
	},
	MAGE = {
		[1] = { str = 21, agi = 17, sta = 19, int = 24, spi = 24 },
		[2] = { str = 21, agi = 17, sta = 19, int = 25, spi = 25 },
		[3] = { str = 21, agi = 17, sta = 20, int = 27, spi = 27 },
		[4] = { str = 21, agi = 17, sta = 20, int = 28, spi = 28 },
		[5] = { str = 21, agi = 18, sta = 20, int = 29, spi = 29 },
		[6] = { str = 21, agi = 18, sta = 20, int = 31, spi = 31 },
		[7] = { str = 21, agi = 18, sta = 21, int = 32, spi = 32 },
		[8] = { str = 22, agi = 18, sta = 21, int = 34, spi = 33 },
		[9] = { str = 22, agi = 18, sta = 21, int = 35, spi = 35 },
		[10] = { str = 22, agi = 19, sta = 22, int = 37, spi = 36 },
		[11] = { str = 22, agi = 19, sta = 22, int = 38, spi = 37 },
		[12] = { str = 22, agi = 19, sta = 22, int = 40, spi = 39 },
		[13] = { str = 22, agi = 19, sta = 23, int = 41, spi = 40 },
		[14] = { str = 22, agi = 19, sta = 23, int = 43, spi = 42 },
		[15] = { str = 22, agi = 19, sta = 23, int = 44, spi = 43 },
		[16] = { str = 22, agi = 20, sta = 24, int = 46, spi = 45 },
		[17] = { str = 23, agi = 20, sta = 24, int = 47, spi = 46 },
		[18] = { str = 23, agi = 20, sta = 24, int = 49, spi = 48 },
		[19] = { str = 23, agi = 20, sta = 25, int = 50, spi = 49 },
		[20] = { str = 23, agi = 21, sta = 25, int = 52, spi = 51 },
		[21] = { str = 23, agi = 21, sta = 26, int = 54, spi = 52 },
		[22] = { str = 23, agi = 21, sta = 26, int = 55, spi = 54 },
		[23] = { str = 23, agi = 21, sta = 26, int = 57, spi = 56 },
		[24] = { str = 24, agi = 21, sta = 27, int = 59, spi = 57 },
		[25] = { str = 24, agi = 22, sta = 27, int = 60, spi = 59 },
		[26] = { str = 24, agi = 22, sta = 27, int = 62, spi = 60 },
		[27] = { str = 24, agi = 22, sta = 28, int = 64, spi = 62 },
		[28] = { str = 24, agi = 22, sta = 28, int = 65, spi = 64 },
		[29] = { str = 24, agi = 23, sta = 29, int = 67, spi = 65 },
		[30] = { str = 24, agi = 23, sta = 29, int = 69, spi = 67 },
		[31] = { str = 25, agi = 23, sta = 30, int = 71, spi = 69 },
		[32] = { str = 25, agi = 23, sta = 30, int = 73, spi = 71 },
		[33] = { str = 25, agi = 24, sta = 30, int = 74, spi = 72 },
		[34] = { str = 25, agi = 24, sta = 31, int = 76, spi = 74 },
		[35] = { str = 25, agi = 24, sta = 31, int = 78, spi = 76 },
		[36] = { str = 26, agi = 24, sta = 32, int = 80, spi = 78 },
		[37] = { str = 26, agi = 25, sta = 32, int = 82, spi = 79 },
		[38] = { str = 26, agi = 25, sta = 33, int = 84, spi = 81 },
		[39] = { str = 26, agi = 25, sta = 33, int = 86, spi = 83 },
		[40] = { str = 26, agi = 26, sta = 34, int = 87, spi = 85 },
		[41] = { str = 27, agi = 26, sta = 34, int = 89, spi = 87 },
		[42] = { str = 27, agi = 26, sta = 35, int = 91, spi = 89 },
		[43] = { str = 27, agi = 27, sta = 35, int = 93, spi = 91 },
		[44] = { str = 27, agi = 27, sta = 36, int = 95, spi = 92 },
		[45] = { str = 27, agi = 27, sta = 36, int = 97, spi = 94 },
		[46] = { str = 28, agi = 27, sta = 37, int = 99, spi = 96 },
		[47] = { str = 28, agi = 28, sta = 37, int = 101, spi = 98 },
		[48] = { str = 28, agi = 28, sta = 38, int = 103, spi = 100 },
		[49] = { str = 28, agi = 28, sta = 38, int = 105, spi = 102 },
		[50] = { str = 29, agi = 29, sta = 39, int = 107, spi = 104 },
		[51] = { str = 29, agi = 29, sta = 39, int = 110, spi = 106 },
		[52] = { str = 29, agi = 29, sta = 40, int = 112, spi = 108 },
		[53] = { str = 29, agi = 30, sta = 40, int = 114, spi = 110 },
		[54] = { str = 30, agi = 30, sta = 41, int = 116, spi = 112 },
		[55] = { str = 30, agi = 30, sta = 41, int = 118, spi = 114 },
		[56] = { str = 30, agi = 31, sta = 42, int = 120, spi = 116 },
		[57] = { str = 30, agi = 31, sta = 42, int = 122, spi = 118 },
		[58] = { str = 31, agi = 31, sta = 43, int = 125, spi = 121 },
		[59] = { str = 31, agi = 32, sta = 43, int = 127, spi = 123 },
		[60] = { str = 31, agi = 32, sta = 44, int = 129, spi = 125 },
		[61] = { str = 31, agi = 33, sta = 45, int = 131, spi = 127 },
		[62] = { str = 32, agi = 33, sta = 45, int = 133, spi = 129 },
		[63] = { str = 32, agi = 33, sta = 46, int = 136, spi = 131 },
		[64] = { str = 32, agi = 34, sta = 46, int = 138, spi = 134 },
		[65] = { str = 33, agi = 34, sta = 47, int = 140, spi = 136 },
		[66] = { str = 33, agi = 34, sta = 48, int = 143, spi = 138 },
		[67] = { str = 33, agi = 35, sta = 48, int = 145, spi = 140 },
		[68] = { str = 33, agi = 35, sta = 49, int = 147, spi = 142 },
		[69] = { str = 34, agi = 36, sta = 49, int = 150, spi = 145 },
		[70] = { str = 34, agi = 36, sta = 50, int = 152, spi = 147 }
	},
},
};

ScrubBuster.BaseHealthMana = { --base health/mana, without Stamina's effect. These depend solely on class, not on race, so it's a separate table
	WARRIOR = {
		[1] = { health = 20, mana = 0 },
		[2] = { health = 29, mana = 0 },
		[3] = { health = 38, mana = 0 },
		[4] = { health = 47, mana = 0 },
		[5] = { health = 56, mana = 0 },
		[6] = { health = 65, mana = 0 },
		[7] = { health = 74, mana = 0 },
		[8] = { health = 83, mana = 0 },
		[9] = { health = 92, mana = 0 },
		[10] = { health = 101, mana = 0 },
		[11] = { health = 100, mana = 0 },
		[12] = { health = 109, mana = 0 },
		[13] = { health = 118, mana = 0 },
		[14] = { health = 128, mana = 0 },
		[15] = { health = 139, mana = 0 },
		[16] = { health = 151, mana = 0 },
		[17] = { health = 154, mana = 0 },
		[18] = { health = 168, mana = 0 },
		[19] = { health = 183, mana = 0 },
		[20] = { health = 199, mana = 0 },
		[21] = { health = 206, mana = 0 },
		[22] = { health = 224, mana = 0 },
		[23] = { health = 243, mana = 0 },
		[24] = { health = 253, mana = 0 },
		[25] = { health = 274, mana = 0 },
		[26] = { health = 296, mana = 0 },
		[27] = { health = 309, mana = 0 },
		[28] = { health = 333, mana = 0 },
		[29] = { health = 348, mana = 0 },
		[30] = { health = 374, mana = 0 },
		[31] = { health = 401, mana = 0 },
		[32] = { health = 419, mana = 0 },
		[33] = { health = 448, mana = 0 },
		[34] = { health = 468, mana = 0 },
		[35] = { health = 499, mana = 0 },
		[36] = { health = 521, mana = 0 },
		[37] = { health = 545, mana = 0 },
		[38] = { health = 581, mana = 0 },
		[39] = { health = 609, mana = 0 },
		[40] = { health = 649, mana = 0 },
		[41] = { health = 681, mana = 0 },
		[42] = { health = 715, mana = 0 },
		[43] = { health = 761, mana = 0 },
		[44] = { health = 799, mana = 0 },
		[45] = { health = 839, mana = 0 },
		[46] = { health = 881, mana = 0 },
		[47] = { health = 935, mana = 0 },
		[48] = { health = 981, mana = 0 },
		[49] = { health = 1029, mana = 0 },
		[50] = { health = 1079, mana = 0 },
		[51] = { health = 1131, mana = 0 },
		[52] = { health = 1185, mana = 0 },
		[53] = { health = 1241, mana = 0 },
		[54] = { health = 1299, mana = 0 },
		[55] = { health = 1359, mana = 0 },
		[56] = { health = 1421, mana = 0 },
		[57] = { health = 1485, mana = 0 },
		[58] = { health = 1551, mana = 0 },
		[59] = { health = 1619, mana = 0 },
		[60] = { health = 1689, mana = 0 },
		[61] = { health = 1902, mana = 0 },
		[62] = { health = 2129, mana = 0 },
		[63] = { health = 2357, mana = 0 },
		[64] = { health = 2612, mana = 0 },
		[65] = { health = 2883, mana = 0 },
		[66] = { health = 3169, mana = 0 },
		[67] = { health = 3455, mana = 0 },
		[68] = { health = 3774, mana = 0 },
		[69] = { health = 4109, mana = 0 },
		[70] = { health = 4444, mana = 0 }
	};
	PALADIN = {
		[1] = { health = 28, mana = 60 },
		[2] = { health = 36, mana = 78 },
		[3] = { health = 44, mana = 98 },
		[4] = { health = 52, mana = 104 },
		[5] = { health = 60, mana = 111 },
		[6] = { health = 68, mana = 134 },
		[7] = { health = 76, mana = 143 },
		[8] = { health = 84, mana = 153 },
		[9] = { health = 92, mana = 179 },
		[10] = { health = 100, mana = 192 },
		[11] = { health = 108, mana = 205 },
		[12] = { health = 116, mana = 219 },
		[13] = { health = 124, mana = 249 },
		[14] = { health = 132, mana = 265 },
		[15] = { health = 131, mana = 282 },
		[16] = { health = 141, mana = 315 },
		[17] = { health = 152, mana = 334 },
		[18] = { health = 164, mana = 354 },
		[19] = { health = 177, mana = 390 },
		[20] = { health = 191, mana = 412 },
		[21] = { health = 206, mana = 435 },
		[22] = { health = 222, mana = 459 },
		[23] = { health = 239, mana = 499 },
		[24] = { health = 247, mana = 525 },
		[25] = { health = 266, mana = 552 },
		[26] = { health = 286, mana = 579 },
		[27] = { health = 307, mana = 621 },
		[28] = { health = 329, mana = 648 },
		[29] = { health = 342, mana = 675 },
		[30] = { health = 366, mana = 702 },
		[31] = { health = 391, mana = 729 },
		[32] = { health = 407, mana = 756 },
		[33] = { health = 434, mana = 798 },
		[34] = { health = 462, mana = 825 },
		[35] = { health = 481, mana = 852 },
		[36] = { health = 511, mana = 879 },
		[37] = { health = 542, mana = 906 },
		[38] = { health = 564, mana = 933 },
		[39] = { health = 597, mana = 960 },
		[40] = { health = 621, mana = 987 },
		[41] = { health = 656, mana = 1014 },
		[42] = { health = 682, mana = 1041 },
		[43] = { health = 719, mana = 1068 },
		[44] = { health = 747, mana = 1110 },
		[45] = { health = 786, mana = 1137 },
		[46] = { health = 816, mana = 1164 },
		[47] = { health = 857, mana = 1176 },
		[48] = { health = 889, mana = 1203 },
		[49] = { health = 922, mana = 1230 },
		[50] = { health = 966, mana = 1257 },
		[51] = { health = 1001, mana = 1284 },
		[52] = { health = 1037, mana = 1311 },
		[53] = { health = 1084, mana = 1338 },
		[54] = { health = 1122, mana = 1365 },
		[55] = { health = 1161, mana = 1392 },
		[56] = { health = 1201, mana = 1419 },
		[57] = { health = 1252, mana = 1446 },
		[58] = { health = 1294, mana = 1458 },
		[59] = { health = 1337, mana = 1485 },
		[60] = { health = 1381, mana = 1512 },
		[61] = { health = 1540, mana = 1656 },
		[62] = { health = 1708, mana = 1800 },
		[63] = { health = 1884, mana = 1944 },
		[64] = { health = 2068, mana = 2088 },
		[65] = { health = 2262, mana = 2232 },
		[66] = { health = 2466, mana = 2377 },
		[67] = { health = 2679, mana = 2521 },
		[68] = { health = 2901, mana = 2665 },
		[69] = { health = 3134, mana = 2809 },
		[70] = { health = 3377, mana = 2953 }
	};
	HUNTER = {
		[1] = { health = 46, mana = 65 },
		[2] = { health = 53, mana = 70 },
		[3] = { health = 60, mana = 76 },
		[4] = { health = 67, mana = 98 },
		[5] = { health = 74, mana = 106 },
		[6] = { health = 81, mana = 130 },
		[7] = { health = 88, mana = 140 },
		[8] = { health = 95, mana = 166 },
		[9] = { health = 102, mana = 193 },
		[10] = { health = 109, mana = 206 },
		[11] = { health = 116, mana = 235 },
		[12] = { health = 123, mana = 250 },
		[13] = { health = 130, mana = 266 },
		[14] = { health = 138, mana = 298 },
		[15] = { health = 147, mana = 316 },
		[16] = { health = 157, mana = 350 },
		[17] = { health = 168, mana = 370 },
		[18] = { health = 180, mana = 391 },
		[19] = { health = 193, mana = 428 },
		[20] = { health = 207, mana = 451 },
		[21] = { health = 222, mana = 475 },
		[22] = { health = 238, mana = 515 },
		[23] = { health = 255, mana = 541 },
		[24] = { health = 273, mana = 568 },
		[25] = { health = 292, mana = 611 },
		[26] = { health = 312, mana = 640 },
		[27] = { health = 333, mana = 670 },
		[28] = { health = 355, mana = 715 },
		[29] = { health = 378, mana = 745 },
		[30] = { health = 402, mana = 775 },
		[31] = { health = 417, mana = 805 },
		[32] = { health = 443, mana = 850 },
		[33] = { health = 470, mana = 880 },
		[34] = { health = 498, mana = 910 },
		[35] = { health = 527, mana = 940 },
		[36] = { health = 547, mana = 970 },
		[37] = { health = 578, mana = 1015 },
		[38] = { health = 610, mana = 1045 },
		[39] = { health = 643, mana = 1075 },
		[40] = { health = 667, mana = 1105 },
		[41] = { health = 702, mana = 1135 },
		[42] = { health = 738, mana = 1180 },
		[43] = { health = 775, mana = 1210 },
		[44] = { health = 803, mana = 1240 },
		[45] = { health = 842, mana = 1270 },
		[46] = { health = 872, mana = 1300 },
		[47] = { health = 913, mana = 1330 },
		[48] = { health = 955, mana = 1360 },
		[49] = { health = 994, mana = 1390 },
		[50] = { health = 1047, mana = 1420 },
		[51] = { health = 1067, mana = 1450 },
		[52] = { health = 1113, mana = 1480 },
		[53] = { health = 1150, mana = 1510 },
		[54] = { health = 1198, mana = 1540 },
		[55] = { health = 1237, mana = 1570 },
		[56] = { health = 1287, mana = 1600 },
		[57] = { health = 1328, mana = 1630 },
		[58] = { health = 1370, mana = 1660 },
		[59] = { health = 1423, mana = 1690 },
		[60] = { health = 1467, mana = 1720 },
		[61] = { health = 1633, mana = 1886 },
		[62] = { health = 1819, mana = 2053 },
		[63] = { health = 2003, mana = 2219 },
		[64] = { health = 2195, mana = 2385 },
		[65] = { health = 2397, mana = 2552 },
		[66] = { health = 2623, mana = 2718 },
		[67] = { health = 2844, mana = 2884 },
		[68] = { health = 3075, mana = 3050 },
		[69] = { health = 3316, mana = 3217 },
		[70] = { health = 3568, mana = 3383 }
	};
	ROGUE = {
		[1] = { health = 25, mana = 0 },
		[2] = { health = 32, mana = 0 },
		[3] = { health = 49, mana = 0 },
		[4] = { health = 56, mana = 0 },
		[5] = { health = 63, mana = 0 },
		[6] = { health = 70, mana = 0 },
		[7] = { health = 87, mana = 0 },
		[8] = { health = 94, mana = 0 },
		[9] = { health = 101, mana = 0 },
		[10] = { health = 118, mana = 0 },
		[11] = { health = 125, mana = 0 },
		[12] = { health = 142, mana = 0 },
		[13] = { health = 149, mana = 0 },
		[14] = { health = 156, mana = 0 },
		[15] = { health = 173, mana = 0 },
		[16] = { health = 181, mana = 0 },
		[17] = { health = 190, mana = 0 },
		[18] = { health = 200, mana = 0 },
		[19] = { health = 221, mana = 0 },
		[20] = { health = 233, mana = 0 },
		[21] = { health = 246, mana = 0 },
		[22] = { health = 260, mana = 0 },
		[23] = { health = 275, mana = 0 },
		[24] = { health = 301, mana = 0 },
		[25] = { health = 318, mana = 0 },
		[26] = { health = 336, mana = 0 },
		[27] = { health = 355, mana = 0 },
		[28] = { health = 375, mana = 0 },
		[29] = { health = 396, mana = 0 },
		[30] = { health = 428, mana = 0 },
		[31] = { health = 451, mana = 0 },
		[32] = { health = 475, mana = 0 },
		[33] = { health = 500, mana = 0 },
		[34] = { health = 526, mana = 0 },
		[35] = { health = 553, mana = 0 },
		[36] = { health = 581, mana = 0 },
		[37] = { health = 610, mana = 0 },
		[38] = { health = 640, mana = 0 },
		[39] = { health = 671, mana = 0 },
		[40] = { health = 703, mana = 0 },
		[41] = { health = 736, mana = 0 },
		[42] = { health = 770, mana = 0 },
		[43] = { health = 805, mana = 0 },
		[44] = { health = 841, mana = 0 },
		[45] = { health = 878, mana = 0 },
		[46] = { health = 916, mana = 0 },
		[47] = { health = 955, mana = 0 },
		[48] = { health = 995, mana = 0 },
		[49] = { health = 1026, mana = 0 },
		[50] = { health = 1068, mana = 0 },
		[51] = { health = 1111, mana = 0 },
		[52] = { health = 1155, mana = 0 },
		[53] = { health = 1200, mana = 0 },
		[54] = { health = 1246, mana = 0 },
		[55] = { health = 1283, mana = 0 },
		[56] = { health = 1331, mana = 0 },
		[57] = { health = 1380, mana = 0 },
		[58] = { health = 1430, mana = 0 },
		[59] = { health = 1471, mana = 0 },
		[60] = { health = 1523, mana = 0 },
		[61] = { health = 1702, mana = 0 },
		[62] = { health = 1879, mana = 0 },
		[63] = { health = 2077, mana = 0 },
		[64] = { health = 2285, mana = 0 },
		[65] = { health = 2489, mana = 0 },
		[66] = { health = 2717, mana = 0 },
		[67] = { health = 2941, mana = 0 },
		[68] = { health = 3190, mana = 0 },
		[69] = { health = 3450, mana = 0 },
		[70] = { health = 3704, mana = 0 }
	};
	PRIEST = {
		[1] = { health = 52, mana = 73 },
		[2] = { health = 57, mana = 76 },
		[3] = { health = 72, mana = 95 },
		[4] = { health = 77, mana = 114 },
		[5] = { health = 92, mana = 133 },
		[6] = { health = 97, mana = 152 },
		[7] = { health = 112, mana = 171 },
		[8] = { health = 117, mana = 190 },
		[9] = { health = 132, mana = 209 },
		[10] = { health = 137, mana = 212 },
		[11] = { health = 142, mana = 215 },
		[12] = { health = 157, mana = 234 },
		[13] = { health = 172, mana = 254 },
		[14] = { health = 177, mana = 260 },
		[15] = { health = 192, mana = 282 },
		[16] = { health = 197, mana = 305 },
		[17] = { health = 212, mana = 329 },
		[18] = { health = 227, mana = 339 },
		[19] = { health = 232, mana = 365 },
		[20] = { health = 247, mana = 377 },
		[21] = { health = 252, mana = 405 },
		[22] = { health = 268, mana = 434 },
		[23] = { health = 275, mana = 449 },
		[24] = { health = 293, mana = 480 },
		[25] = { health = 302, mana = 497 },
		[26] = { health = 322, mana = 530 },
		[27] = { health = 343, mana = 549 },
		[28] = { health = 355, mana = 584 },
		[29] = { health = 378, mana = 605 },
		[30] = { health = 392, mana = 627 },
		[31] = { health = 417, mana = 665 },
		[32] = { health = 433, mana = 689 },
		[33] = { health = 460, mana = 728 },
		[34] = { health = 478, mana = 752 },
		[35] = { health = 507, mana = 776 },
		[36] = { health = 527, mana = 800 },
		[37] = { health = 548, mana = 839 },
		[38] = { health = 580, mana = 863 },
		[39] = { health = 603, mana = 887 },
		[40] = { health = 637, mana = 911 },
		[41] = { health = 662, mana = 950 },
		[42] = { health = 698, mana = 974 },
		[43] = { health = 725, mana = 998 },
		[44] = { health = 763, mana = 1022 },
		[45] = { health = 792, mana = 1046 },
		[46] = { health = 822, mana = 1070 },
		[47] = { health = 863, mana = 1094 },
		[48] = { health = 895, mana = 1118 },
		[49] = { health = 928, mana = 1142 },
		[50] = { health = 972, mana = 1166 },
		[51] = { health = 1007, mana = 1190 },
		[52] = { health = 1053, mana = 1214 },
		[53] = { health = 1090, mana = 1238 },
		[54] = { health = 1128, mana = 1262 },
		[55] = { health = 1177, mana = 1271 },
		[56] = { health = 1217, mana = 1295 },
		[57] = { health = 1258, mana = 1319 },
		[58] = { health = 1300, mana = 1343 },
		[59] = { health = 1353, mana = 1352 },
		[60] = { health = 1397, mana = 1376 },
		[61] = { health = 1557, mana = 1500 },
		[62] = { health = 1738, mana = 1625 },
		[63] = { health = 1916, mana = 1749 },
		[64] = { health = 2101, mana = 1873 },
		[65] = { health = 2295, mana = 1998 },
		[66] = { health = 2495, mana = 2122 },
		[67] = { health = 2719, mana = 2247 },
		[68] = { health = 2936, mana = 2371 },
		[69] = { health = 3160, mana = 2495 },
		[70] = { health = 3391, mana = 2620 }
	};
	SHAMAN = {
		[1] = { health = 37, mana = 85 },
		[2] = { health = 44, mana = 91 },
		[3] = { health = 51, mana = 98 },
		[4] = { health = 58, mana = 106 },
		[5] = { health = 65, mana = 115 },
		[6] = { health = 72, mana = 125 },
		[7] = { health = 79, mana = 136 },
		[8] = { health = 86, mana = 148 },
		[9] = { health = 93, mana = 161 },
		[10] = { health = 100, mana = 175 },
		[11] = { health = 107, mana = 190 },
		[12] = { health = 114, mana = 206 },
		[13] = { health = 121, mana = 223 },
		[14] = { health = 128, mana = 241 },
		[15] = { health = 135, mana = 260 },
		[16] = { health = 142, mana = 280 },
		[17] = { health = 150, mana = 301 },
		[18] = { health = 159, mana = 323 },
		[19] = { health = 169, mana = 346 },
		[20] = { health = 180, mana = 370 },
		[21] = { health = 192, mana = 395 },
		[22] = { health = 205, mana = 421 },
		[23] = { health = 219, mana = 448 },
		[24] = { health = 234, mana = 476 },
		[25] = { health = 240, mana = 505 },
		[26] = { health = 257, mana = 535 },
		[27] = { health = 275, mana = 566 },
		[28] = { health = 294, mana = 598 },
		[29] = { health = 314, mana = 631 },
		[30] = { health = 335, mana = 665 },
		[31] = { health = 347, mana = 699 },
		[32] = { health = 370, mana = 733 },
		[33] = { health = 394, mana = 767 },
		[34] = { health = 419, mana = 786 },
		[35] = { health = 435, mana = 820 },
		[36] = { health = 462, mana = 854 },
		[37] = { health = 490, mana = 888 },
		[38] = { health = 509, mana = 922 },
		[39] = { health = 539, mana = 941 },
		[40] = { health = 570, mana = 975 },
		[41] = { health = 592, mana = 1009 },
		[42] = { health = 625, mana = 1028 },
		[43] = { health = 649, mana = 1062 },
		[44] = { health = 684, mana = 1096 },
		[45] = { health = 710, mana = 1115 },
		[46] = { health = 747, mana = 1149 },
		[47] = { health = 775, mana = 1183 },
		[48] = { health = 814, mana = 1202 },
		[49] = { health = 844, mana = 1236 },
		[50] = { health = 885, mana = 1255 },
		[51] = { health = 917, mana = 1289 },
		[52] = { health = 960, mana = 1323 },
		[53] = { health = 994, mana = 1342 },
		[54] = { health = 1029, mana = 1376 },
		[55] = { health = 1075, mana = 1395 },
		[56] = { health = 1112, mana = 1414 },
		[57] = { health = 1150, mana = 1448 },
		[58] = { health = 1199, mana = 1467 },
		[59] = { health = 1239, mana = 1501 },
		[60] = { health = 1330, mana = 1520 },
		[61] = { health = 1428, mana = 1664 },
		[62] = { health = 1583, mana = 1808 },
		[63] = { health = 1760, mana = 1951 },
		[64] = { health = 1932, mana = 2095 },
		[65] = { health = 2114, mana = 2239 },
		[66] = { health = 2304, mana = 2383 },
		[67] = { health = 2504, mana = 2527 },
		[68] = { health = 2713, mana = 2670 },
		[69] = { health = 2931, mana = 2814 },
		[70] = { health = 3159, mana = 2958 }
	};	
	MAGE = {
		[1] = { health = 32, mana = 100 },
		[2] = { health = 47, mana = 110 },
		[3] = { health = 52, mana = 106 },
		[4] = { health = 67, mana = 118 },
		[5] = { health = 82, mana = 131 },
		[6] = { health = 97, mana = 130 },
		[7] = { health = 102, mana = 145 },
		[8] = { health = 117, mana = 146 },
		[9] = { health = 132, mana = 163 },
		[10] = { health = 137, mana = 196 },
		[11] = { health = 152, mana = 215 },
		[12] = { health = 167, mana = 220 },
		[13] = { health = 172, mana = 241 },
		[14] = { health = 187, mana = 263 },
		[15] = { health = 202, mana = 271 },
		[16] = { health = 207, mana = 295 },
		[17] = { health = 222, mana = 305 },
		[18] = { health = 237, mana = 331 },
		[19] = { health = 242, mana = 343 },
		[20] = { health = 257, mana = 371 },
		[21] = { health = 272, mana = 385 },
		[22] = { health = 277, mana = 415 },
		[23] = { health = 292, mana = 431 },
		[24] = { health = 298, mana = 463 },
		[25] = { health = 315, mana = 481 },
		[26] = { health = 333, mana = 515 },
		[27] = { health = 342, mana = 535 },
		[28] = { health = 362, mana = 556 },
		[29] = { health = 373, mana = 592 },
		[30] = { health = 395, mana = 613 },
		[31] = { health = 418, mana = 634 },
		[32] = { health = 432, mana = 670 },
		[33] = { health = 457, mana = 691 },
		[34] = { health = 473, mana = 712 },
		[35] = { health = 500, mana = 733 },
		[36] = { health = 518, mana = 754 },
		[37] = { health = 547, mana = 790 },
		[38] = { health = 577, mana = 811 },
		[39] = { health = 598, mana = 832 },
		[40] = { health = 630, mana = 853 },
		[41] = { health = 653, mana = 874 },
		[42] = { health = 687, mana = 895 },
		[43] = { health = 712, mana = 916 },
		[44] = { health = 748, mana = 937 },
		[45] = { health = 775, mana = 958 },
		[46] = { health = 813, mana = 979 },
		[47] = { health = 842, mana = 1000 },
		[48] = { health = 882, mana = 1021 },
		[49] = { health = 913, mana = 1042 },
		[50] = { health = 955, mana = 1048 },
		[51] = { health = 988, mana = 1069 },
		[52] = { health = 1032, mana = 1090 },
		[53] = { health = 1067, mana = 1111 },
		[54] = { health = 1103, mana = 1117 },
		[55] = { health = 1150, mana = 1138 },
		[56] = { health = 1188, mana = 1159 },
		[57] = { health = 1237, mana = 1165 },
		[58] = { health = 1277, mana = 1186 },
		[59] = { health = 1328, mana = 1192 },
		[60] = { health = 1370, mana = 1213 },
		[61] = { health = 1526, mana = 1316 },
		[62] = { health = 1702, mana = 1419 },
		[63] = { health = 1875, mana = 1521 },
		[64] = { health = 2070, mana = 1624 },
		[65] = { health = 2261, mana = 1727 },
		[66] = { health = 2461, mana = 1830 },
		[67] = { health = 2686, mana = 1932 },
		[68] = { health = 2906, mana = 2035 },
		[69] = { health = 3136, mana = 2138 },
		[70] = { health = 3393, mana = 2241 }
	};
	WARLOCK = {
		[1] = { health = 23, mana = 90 },
		[2] = { health = 28, mana = 98 },
		[3] = { health = 43, mana = 107 },
		[4] = { health = 48, mana = 102 },
		[5] = { health = 63, mana = 113 },
		[6] = { health = 68, mana = 126 },
		[7] = { health = 83, mana = 144 },
		[8] = { health = 88, mana = 162 },
		[9] = { health = 93, mana = 180 },
		[10] = { health = 108, mana = 198 },
		[11] = { health = 123, mana = 200 },
		[12] = { health = 128, mana = 218 },
		[13] = { health = 143, mana = 237 },
		[14] = { health = 148, mana = 257 },
		[15] = { health = 153, mana = 278 },
		[16] = { health = 168, mana = 300 },
		[17] = { health = 173, mana = 308 },
		[18] = { health = 189, mana = 332 },
		[19] = { health = 196, mana = 357 },
		[20] = { health = 204, mana = 383 },
		[21] = { health = 223, mana = 395 },
		[22] = { health = 233, mana = 423 },
		[23] = { health = 244, mana = 452 },
		[24] = { health = 266, mana = 467 },
		[25] = { health = 279, mana = 498 },
		[26] = { health = 293, mana = 530 },
		[27] = { health = 318, mana = 548 },
		[28] = { health = 334, mana = 582 },
		[29] = { health = 351, mana = 602 },
		[30] = { health = 379, mana = 638 },
		[31] = { health = 398, mana = 674 },
		[32] = { health = 418, mana = 695 },
		[33] = { health = 439, mana = 731 },
		[34] = { health = 471, mana = 752 },
		[35] = { health = 494, mana = 788 },
		[36] = { health = 518, mana = 809 },
		[37] = { health = 543, mana = 830 },
		[38] = { health = 569, mana = 866 },
		[39] = { health = 606, mana = 887 },
		[40] = { health = 634, mana = 923 },
		[41] = { health = 663, mana = 944 },
		[42] = { health = 693, mana = 965 },
		[43] = { health = 724, mana = 1001 },
		[44] = { health = 756, mana = 1022 },
		[45] = { health = 799, mana = 1043 },
		[46] = { health = 832, mana = 1064 },
		[47] = { health = 868, mana = 1100 },
		[48] = { health = 904, mana = 1121 },
		[49] = { health = 941, mana = 1142 },
		[50] = { health = 979, mana = 1163 },
		[51] = { health = 1018, mana = 1184 },
		[52] = { health = 1058, mana = 1205 },
		[53] = { health = 1099, mana = 1226 },
		[54] = { health = 1141, mana = 1247 },
		[55] = { health = 1184, mana = 1268 },
		[56] = { health = 1228, mana = 1289 },
		[57] = { health = 1273, mana = 1310 },
		[58] = { health = 1319, mana = 1331 },
		[59] = { health = 1366, mana = 1352 },
		[60] = { health = 1414, mana = 1373 },
		[61] = { health = 1580, mana = 1497 },
		[62] = { health = 1755, mana = 1621 },
		[63] = { health = 1939, mana = 1745 },
		[64] = { health = 2133, mana = 1870 },
		[65] = { health = 2323, mana = 1994 },
		[66] = { health = 2535, mana = 2118 },
		[67] = { health = 2758, mana = 2242 },
		[68] = { health = 2991, mana = 2366 },
		[69] = { health = 3235, mana = 2490 },
		[70] = { health = 3490, mana = 2615 }
	};	
	DRUID = {
		[1] = { health = 44, mana = 60 },
		[2] = { health = 51, mana = 66 },
		[3] = { health = 58, mana = 73 },
		[4] = { health = 75, mana = 81 },
		[5] = { health = 82, mana = 90 },
		[6] = { health = 89, mana = 100 },
		[7] = { health = 106, mana = 111 },
		[8] = { health = 113, mana = 123 },
		[9] = { health = 120, mana = 136 },
		[10] = { health = 137, mana = 150 },
		[11] = { health = 144, mana = 165 },
		[12] = { health = 151, mana = 182 },
		[13] = { health = 168, mana = 200 },
		[14] = { health = 175, mana = 219 },
		[15] = { health = 182, mana = 239 },
		[16] = { health = 199, mana = 260 },
		[17] = { health = 206, mana = 282 },
		[18] = { health = 214, mana = 305 },
		[19] = { health = 233, mana = 329 },
		[20] = { health = 243, mana = 354 },
		[21] = { health = 254, mana = 380 },
		[22] = { health = 266, mana = 392 },
		[23] = { health = 289, mana = 420 },
		[24] = { health = 303, mana = 449 },
		[25] = { health = 318, mana = 479 },
		[26] = { health = 334, mana = 509 },
		[27] = { health = 361, mana = 524 },
		[28] = { health = 379, mana = 554 },
		[29] = { health = 398, mana = 584 },
		[30] = { health = 418, mana = 614 },
		[31] = { health = 439, mana = 629 },
		[32] = { health = 461, mana = 659 },
		[33] = { health = 494, mana = 689 },
		[34] = { health = 518, mana = 704 },
		[35] = { health = 543, mana = 734 },
		[36] = { health = 569, mana = 749 },
		[37] = { health = 596, mana = 779 },
		[38] = { health = 624, mana = 809 },
		[39] = { health = 653, mana = 824 },
		[40] = { health = 683, mana = 854 },
		[41] = { health = 714, mana = 869 },
		[42] = { health = 746, mana = 899 },
		[43] = { health = 779, mana = 914 },
		[44] = { health = 823, mana = 944 },
		[45] = { health = 858, mana = 959 },
		[46] = { health = 894, mana = 989 },
		[47] = { health = 921, mana = 1004 },
		[48] = { health = 959, mana = 1019 },
		[49] = { health = 998, mana = 1049 },
		[50] = { health = 1038, mana = 1064 },
		[51] = { health = 1079, mana = 1079 },
		[52] = { health = 1121, mana = 1109 },
		[53] = { health = 1164, mana = 1124 },
		[54] = { health = 1208, mana = 1139 },
		[55] = { health = 1253, mana = 1154 },
		[56] = { health = 1299, mana = 1169 },
		[57] = { health = 1346, mana = 1199 },
		[58] = { health = 1384, mana = 1214 },
		[59] = { health = 1433, mana = 1229 },
		[60] = { health = 1483, mana = 1244 },
		[61] = { health = 1657, mana = 1357 },
		[62] = { health = 1840, mana = 1469 },
		[63] = { health = 2020, mana = 1582 },
		[64] = { health = 2222, mana = 1694 },
		[65] = { health = 2433, mana = 1807 },
		[66] = { health = 2640, mana = 1919 },
		[67] = { health = 2872, mana = 2032 },
		[68] = { health = 3114, mana = 2145 },
		[69] = { health = 3351, mana = 2257 },
		[70] = { health = 3614, mana = 2370 }
	};
};

ScrubBuster.BaseDodge = { --Base dodge, by class ID
	0.7580, 0.6520, -5.4500, -0.5900, 3.1830, 1.6750, 3.4575, 2.0350, -1.8720,
};

ScrubBuster.CritPerAgiToDodge = { --Dodge per agility uses the same values as crit per agility, but some classes have a multiplier
	--copied from cmangos src/game/Player.cpp so take it with a grain of salt... either way, better than what we used to have
	1.1, --Warrior
	1.0, --Paladin
	1.6, --Hunter
	2.0, --Rogue
	1.0, --Priest
	1.0, --Shaman
	1.0, --Mage
	1.0, --Warlock
	1.7, --Druid
};

--[[
ScrubBuster.AgiDodgeRatio = {
	30, --Warrior
	25, --Paladin
	25, --Hunter
	20, --Rogue
	25, --Priest
	25, --Shaman
	25, --Mage
	25, --Warlock
	14.7059, --Druid (why is it weird number daddy)
};
]]

ScrubBuster.BaseSpellCrit = {
	0, --Warrior
	3.336, --Paladin
	3.6, --Hunter
	0, --Rogue
	1.24, --Priest
	2.2, --Shaman
	0.91, --Mage
	1.7, --Warlock
	1.85, --Druid
};

ScrubBuster.SpellCritPerInt = {
	 [1] = {0.0000, 0.0832, 0.0699, 0.0000, 0.1710, 0.1333, 0.1637, 0.1500, 0.1431, },
	 [2] = {0.0000, 0.0793, 0.0666, 0.0000, 0.1636, 0.1272, 0.1574, 0.1435, 0.1369, },
	 [3] = {0.0000, 0.0793, 0.0666, 0.0000, 0.1568, 0.1217, 0.1516, 0.1375, 0.1312, },
	 [4] = {0.0000, 0.0757, 0.0635, 0.0000, 0.1505, 0.1217, 0.1411, 0.1320, 0.1259, },
	 [5] = {0.0000, 0.0757, 0.0635, 0.0000, 0.1394, 0.1166, 0.1364, 0.1269, 0.1211, },
	 [6] = {0.0000, 0.0724, 0.0608, 0.0000, 0.1344, 0.1120, 0.1320, 0.1222, 0.1166, },
	 [7] = {0.0000, 0.0694, 0.0608, 0.0000, 0.1297, 0.1077, 0.1279, 0.1179, 0.1124, },
	 [8] = {0.0000, 0.0694, 0.0583, 0.0000, 0.1254, 0.1037, 0.1240, 0.1138, 0.1124, },
	 [9] = {0.0000, 0.0666, 0.0583, 0.0000, 0.1214, 0.1000, 0.1169, 0.1100, 0.1086, },
	[10] = {0.0000, 0.0666, 0.0559, 0.0000, 0.1140, 0.1000, 0.1137, 0.1065, 0.0984, },
	[11] = {0.0000, 0.0640, 0.0559, 0.0000, 0.1045, 0.0933, 0.1049, 0.0971, 0.0926, },
	[12] = {0.0000, 0.0616, 0.0538, 0.0000, 0.0941, 0.0875, 0.0930, 0.0892, 0.0851, },
	[13] = {0.0000, 0.0594, 0.0499, 0.0000, 0.0875, 0.0800, 0.0871, 0.0825, 0.0807, },
	[14] = {0.0000, 0.0574, 0.0499, 0.0000, 0.0784, 0.0756, 0.0731, 0.0767, 0.0750, },
	[15] = {0.0000, 0.0537, 0.0466, 0.0000, 0.0724, 0.0700, 0.0671, 0.0717, 0.0684, },
	[16] = {0.0000, 0.0537, 0.0466, 0.0000, 0.0684, 0.0666, 0.0639, 0.0688, 0.0656, },
	[17] = {0.0000, 0.0520, 0.0451, 0.0000, 0.0627, 0.0636, 0.0602, 0.0635, 0.0617, },
	[18] = {0.0000, 0.0490, 0.0424, 0.0000, 0.0597, 0.0596, 0.0568, 0.0600, 0.0594, },
	[19] = {0.0000, 0.0490, 0.0424, 0.0000, 0.0562, 0.0571, 0.0538, 0.0569, 0.0562, },
	[20] = {0.0000, 0.0462, 0.0399, 0.0000, 0.0523, 0.0538, 0.0505, 0.0541, 0.0516, },
	[21] = {0.0000, 0.0450, 0.0388, 0.0000, 0.0502, 0.0518, 0.0487, 0.0516, 0.0500, },
	[22] = {0.0000, 0.0438, 0.0388, 0.0000, 0.0470, 0.0500, 0.0460, 0.0493, 0.0477, },
	[23] = {0.0000, 0.0427, 0.0368, 0.0000, 0.0453, 0.0474, 0.0445, 0.0471, 0.0463, },
	[24] = {0.0000, 0.0416, 0.0358, 0.0000, 0.0428, 0.0459, 0.0422, 0.0446, 0.0437, },
	[25] = {0.0000, 0.0396, 0.0350, 0.0000, 0.0409, 0.0437, 0.0405, 0.0429, 0.0420, },
	[26] = {0.0000, 0.0387, 0.0341, 0.0000, 0.0392, 0.0424, 0.0390, 0.0418, 0.0409, },
	[27] = {0.0000, 0.0387, 0.0333, 0.0000, 0.0376, 0.0412, 0.0372, 0.0398, 0.0394, },
	[28] = {0.0000, 0.0370, 0.0325, 0.0000, 0.0362, 0.0394, 0.0338, 0.0384, 0.0384, },
	[29] = {0.0000, 0.0362, 0.0318, 0.0000, 0.0348, 0.0383, 0.0325, 0.0367, 0.0366, },
	[30] = {0.0000, 0.0347, 0.0304, 0.0000, 0.0333, 0.0368, 0.0312, 0.0355, 0.0346, },
	[31] = {0.0000, 0.0340, 0.0297, 0.0000, 0.0322, 0.0354, 0.0305, 0.0347, 0.0339, },
	[32] = {0.0000, 0.0333, 0.0297, 0.0000, 0.0311, 0.0346, 0.0294, 0.0333, 0.0325, },
	[33] = {0.0000, 0.0326, 0.0285, 0.0000, 0.0301, 0.0333, 0.0286, 0.0324, 0.0318, },
	[34] = {0.0000, 0.0320, 0.0280, 0.0000, 0.0289, 0.0325, 0.0278, 0.0311, 0.0309, },
	[35] = {0.0000, 0.0308, 0.0269, 0.0000, 0.0281, 0.0314, 0.0269, 0.0303, 0.0297, },
	[36] = {0.0000, 0.0303, 0.0264, 0.0000, 0.0273, 0.0304, 0.0262, 0.0295, 0.0292, },
	[37] = {0.0000, 0.0297, 0.0264, 0.0000, 0.0263, 0.0298, 0.0254, 0.0284, 0.0284, },
	[38] = {0.0000, 0.0287, 0.0254, 0.0000, 0.0256, 0.0289, 0.0248, 0.0277, 0.0276, },
	[39] = {0.0000, 0.0282, 0.0250, 0.0000, 0.0249, 0.0283, 0.0241, 0.0268, 0.0269, },
	[40] = {0.0000, 0.0273, 0.0241, 0.0000, 0.0241, 0.0272, 0.0235, 0.0262, 0.0256, },
	[41] = {0.0000, 0.0268, 0.0237, 0.0000, 0.0235, 0.0267, 0.0230, 0.0256, 0.0252, },
	[42] = {0.0000, 0.0264, 0.0237, 0.0000, 0.0228, 0.0262, 0.0215, 0.0248, 0.0244, },
	[43] = {0.0000, 0.0256, 0.0229, 0.0000, 0.0223, 0.0254, 0.0211, 0.0243, 0.0240, },
	[44] = {0.0000, 0.0256, 0.0225, 0.0000, 0.0216, 0.0248, 0.0206, 0.0236, 0.0233, },
	[45] = {0.0000, 0.0248, 0.0218, 0.0000, 0.0210, 0.0241, 0.0201, 0.0229, 0.0228, },
	[46] = {0.0000, 0.0245, 0.0215, 0.0000, 0.0206, 0.0235, 0.0197, 0.0224, 0.0223, },
	[47] = {0.0000, 0.0238, 0.0212, 0.0000, 0.0200, 0.0231, 0.0192, 0.0220, 0.0219, },
	[48] = {0.0000, 0.0231, 0.0206, 0.0000, 0.0196, 0.0226, 0.0188, 0.0214, 0.0214, },
	[49] = {0.0000, 0.0228, 0.0203, 0.0000, 0.0191, 0.0220, 0.0184, 0.0209, 0.0209, },
	[50] = {0.0000, 0.0222, 0.0197, 0.0000, 0.0186, 0.0215, 0.0179, 0.0204, 0.0202, },
	[51] = {0.0000, 0.0219, 0.0194, 0.0000, 0.0183, 0.0210, 0.0176, 0.0200, 0.0198, },
	[52] = {0.0000, 0.0216, 0.0192, 0.0000, 0.0178, 0.0207, 0.0173, 0.0195, 0.0193, },
	[53] = {0.0000, 0.0211, 0.0186, 0.0000, 0.0175, 0.0201, 0.0170, 0.0191, 0.0191, },
	[54] = {0.0000, 0.0208, 0.0184, 0.0000, 0.0171, 0.0199, 0.0166, 0.0186, 0.0186, },
	[55] = {0.0000, 0.0203, 0.0179, 0.0000, 0.0166, 0.0193, 0.0162, 0.0182, 0.0182, },
	[56] = {0.0000, 0.0201, 0.0177, 0.0000, 0.0164, 0.0190, 0.0154, 0.0179, 0.0179, },
	[57] = {0.0000, 0.0198, 0.0175, 0.0000, 0.0160, 0.0187, 0.0151, 0.0176, 0.0176, },
	[58] = {0.0000, 0.0191, 0.0170, 0.0000, 0.0157, 0.0182, 0.0149, 0.0172, 0.0173, },
	[59] = {0.0000, 0.0189, 0.0168, 0.0000, 0.0154, 0.0179, 0.0146, 0.0168, 0.0169, },
	[60] = {0.0000, 0.0185, 0.0164, 0.0000, 0.0151, 0.0175, 0.0143, 0.0165, 0.0164, },
	[61] = {0.0000, 0.0157, 0.0157, 0.0000, 0.0148, 0.0164, 0.0143, 0.0159, 0.0162, },
	[62] = {0.0000, 0.0153, 0.0154, 0.0000, 0.0145, 0.0159, 0.0143, 0.0154, 0.0157, },
	[63] = {0.0000, 0.0148, 0.0150, 0.0000, 0.0143, 0.0152, 0.0143, 0.0148, 0.0150, },
	[64] = {0.0000, 0.0143, 0.0144, 0.0000, 0.0139, 0.0147, 0.0142, 0.0143, 0.0146, },
	[65] = {0.0000, 0.0140, 0.0141, 0.0000, 0.0137, 0.0142, 0.0142, 0.0138, 0.0142, },
	[66] = {0.0000, 0.0136, 0.0137, 0.0000, 0.0134, 0.0138, 0.0138, 0.0135, 0.0137, },
	[67] = {0.0000, 0.0133, 0.0133, 0.0000, 0.0132, 0.0134, 0.0133, 0.0130, 0.0133, },
	[68] = {0.0000, 0.0131, 0.0130, 0.0000, 0.0130, 0.0131, 0.0131, 0.0127, 0.0131, },
	[69] = {0.0000, 0.0128, 0.0128, 0.0000, 0.0127, 0.0128, 0.0128, 0.0125, 0.0128, },
	[70] = {0.0000, 0.0125, 0.0125, 0.0000, 0.0125, 0.0125, 0.0125, 0.0122, 0.0125, },
	[71] = {0.0000, 0.0122, 0.0123, 0.0000, 0.0123, 0.0122, 0.0122, 0.0119, 0.0122, },
	[72] = {0.0000, 0.0120, 0.0120, 0.0000, 0.0121, 0.0120, 0.0119, 0.0116, 0.0120, },
	[73] = {0.0000, 0.0118, 0.0118, 0.0000, 0.0119, 0.0117, 0.0117, 0.0114, 0.0118, },
};

ScrubBuster.BaseCrit = {
	1.144, --Warrior
	0.652, --Paladin
	-1.532, --Hunter
	-0.295, --Rogue
	3.183, --Priest
	1.675, --Shaman
	3.4575, --Mage
	2, --Warlock
	0.961, --Druid
};

ScrubBuster.CritPerAgi = {
	 [1] = {0.2500, 0.2174, 0.2840, 0.4476, 0.0909, 0.1663, 0.0771, 0.1500, 0.2020, },
	 [2] = {0.2381, 0.2070, 0.2834, 0.4290, 0.0909, 0.1663, 0.0771, 0.1500, 0.2020, },
	 [3] = {0.2381, 0.2070, 0.2711, 0.4118, 0.0909, 0.1583, 0.0771, 0.1429, 0.1923, },
	 [4] = {0.2273, 0.1976, 0.2530, 0.3813, 0.0865, 0.1583, 0.0735, 0.1429, 0.1923, },
	 [5] = {0.2174, 0.1976, 0.2430, 0.3677, 0.0865, 0.1511, 0.0735, 0.1429, 0.1836, },
	 [6] = {0.2083, 0.1890, 0.2337, 0.3550, 0.0865, 0.1511, 0.0735, 0.1364, 0.1836, },
	 [7] = {0.2083, 0.1890, 0.2251, 0.3321, 0.0865, 0.1511, 0.0735, 0.1364, 0.1756, },
	 [8] = {0.2000, 0.1812, 0.2171, 0.3217, 0.0826, 0.1446, 0.0735, 0.1364, 0.1756, },
	 [9] = {0.1923, 0.1812, 0.2051, 0.3120, 0.0826, 0.1446, 0.0735, 0.1304, 0.1683, },
	[10] = {0.1923, 0.1739, 0.1984, 0.2941, 0.0826, 0.1385, 0.0701, 0.1304, 0.1553, },
	[11] = {0.1852, 0.1739, 0.1848, 0.2640, 0.0826, 0.1385, 0.0701, 0.1250, 0.1496, },
	[12] = {0.1786, 0.1672, 0.1670, 0.2394, 0.0790, 0.1330, 0.0701, 0.1250, 0.1496, },
	[13] = {0.1667, 0.1553, 0.1547, 0.2145, 0.0790, 0.1330, 0.0701, 0.1250, 0.1443, },
	[14] = {0.1613, 0.1553, 0.1441, 0.1980, 0.0790, 0.1279, 0.0701, 0.1200, 0.1443, },
	[15] = {0.1563, 0.1449, 0.1330, 0.1775, 0.0790, 0.1231, 0.0671, 0.1154, 0.1346, },
	[16] = {0.1515, 0.1449, 0.1267, 0.1660, 0.0757, 0.1188, 0.0671, 0.1111, 0.1346, },
	[17] = {0.1471, 0.1403, 0.1194, 0.1560, 0.0757, 0.1188, 0.0671, 0.1111, 0.1303, },
	[18] = {0.1389, 0.1318, 0.1117, 0.1450, 0.0757, 0.1147, 0.0671, 0.1111, 0.1262, },
	[19] = {0.1351, 0.1318, 0.1060, 0.1355, 0.0727, 0.1147, 0.0671, 0.1071, 0.1262, },
	[20] = {0.1282, 0.1242, 0.0998, 0.1271, 0.0727, 0.1073, 0.0643, 0.1034, 0.1122, },
	[21] = {0.1282, 0.1208, 0.0962, 0.1197, 0.0727, 0.1073, 0.0643, 0.1000, 0.1122, },
	[22] = {0.1250, 0.1208, 0.0910, 0.1144, 0.0727, 0.1039, 0.0643, 0.1000, 0.1092, },
	[23] = {0.1190, 0.1144, 0.0872, 0.1084, 0.0699, 0.1039, 0.0643, 0.0968, 0.1063, },
	[24] = {0.1163, 0.1115, 0.0829, 0.1040, 0.0699, 0.1008, 0.0617, 0.0968, 0.1063, },
	[25] = {0.1111, 0.1087, 0.0797, 0.0980, 0.0699, 0.0978, 0.0617, 0.0909, 0.1010, },
	[26] = {0.1087, 0.1060, 0.0767, 0.0936, 0.0673, 0.0950, 0.0617, 0.0909, 0.1010, },
	[27] = {0.1064, 0.1035, 0.0734, 0.0903, 0.0673, 0.0950, 0.0617, 0.0909, 0.0985, },
	[28] = {0.1020, 0.1011, 0.0709, 0.0865, 0.0673, 0.0924, 0.0617, 0.0882, 0.0962, },
	[29] = {0.1000, 0.0988, 0.0680, 0.0830, 0.0649, 0.0924, 0.0593, 0.0882, 0.0962, },
	[30] = {0.0962, 0.0945, 0.0654, 0.0792, 0.0649, 0.0875, 0.0593, 0.0833, 0.0878, },
	[31] = {0.0943, 0.0925, 0.0637, 0.0768, 0.0649, 0.0875, 0.0593, 0.0833, 0.0859, },
	[32] = {0.0926, 0.0925, 0.0614, 0.0741, 0.0627, 0.0853, 0.0593, 0.0811, 0.0859, },
	[33] = {0.0893, 0.0887, 0.0592, 0.0715, 0.0627, 0.0831, 0.0571, 0.0811, 0.0841, },
	[34] = {0.0877, 0.0870, 0.0575, 0.0691, 0.0627, 0.0831, 0.0571, 0.0789, 0.0824, },
	[35] = {0.0847, 0.0836, 0.0556, 0.0664, 0.0606, 0.0792, 0.0571, 0.0769, 0.0808, },
	[36] = {0.0833, 0.0820, 0.0541, 0.0643, 0.0606, 0.0773, 0.0551, 0.0750, 0.0792, },
	[37] = {0.0820, 0.0820, 0.0524, 0.0628, 0.0606, 0.0773, 0.0551, 0.0732, 0.0777, },
	[38] = {0.0794, 0.0791, 0.0508, 0.0609, 0.0586, 0.0756, 0.0551, 0.0732, 0.0777, },
	[39] = {0.0781, 0.0776, 0.0493, 0.0592, 0.0586, 0.0756, 0.0551, 0.0714, 0.0762, },
	[40] = {0.0758, 0.0750, 0.0481, 0.0572, 0.0586, 0.0723, 0.0532, 0.0698, 0.0709, },
	[41] = {0.0735, 0.0737, 0.0470, 0.0556, 0.0568, 0.0707, 0.0532, 0.0682, 0.0696, },
	[42] = {0.0725, 0.0737, 0.0457, 0.0542, 0.0568, 0.0707, 0.0532, 0.0682, 0.0696, },
	[43] = {0.0704, 0.0713, 0.0444, 0.0528, 0.0551, 0.0693, 0.0532, 0.0667, 0.0685, },
	[44] = {0.0694, 0.0701, 0.0433, 0.0512, 0.0551, 0.0679, 0.0514, 0.0667, 0.0673, },
	[45] = {0.0676, 0.0679, 0.0421, 0.0497, 0.0551, 0.0665, 0.0514, 0.0638, 0.0651, },
	[46] = {0.0667, 0.0669, 0.0413, 0.0486, 0.0534, 0.0652, 0.0514, 0.0625, 0.0641, },
	[47] = {0.0649, 0.0659, 0.0402, 0.0474, 0.0534, 0.0639, 0.0498, 0.0625, 0.0641, },
	[48] = {0.0633, 0.0639, 0.0391, 0.0464, 0.0519, 0.0627, 0.0498, 0.0612, 0.0631, },
	[49] = {0.0625, 0.0630, 0.0382, 0.0454, 0.0519, 0.0627, 0.0498, 0.0600, 0.0621, },
	[50] = {0.0610, 0.0612, 0.0373, 0.0440, 0.0519, 0.0605, 0.0482, 0.0588, 0.0585, },
	[51] = {0.0595, 0.0604, 0.0366, 0.0431, 0.0505, 0.0594, 0.0482, 0.0577, 0.0577, },
	[52] = {0.0588, 0.0596, 0.0358, 0.0422, 0.0505, 0.0583, 0.0482, 0.0577, 0.0569, },
	[53] = {0.0575, 0.0580, 0.0350, 0.0412, 0.0491, 0.0583, 0.0467, 0.0566, 0.0561, },
	[54] = {0.0562, 0.0572, 0.0341, 0.0404, 0.0491, 0.0573, 0.0467, 0.0556, 0.0561, },
	[55] = {0.0549, 0.0557, 0.0334, 0.0394, 0.0478, 0.0554, 0.0467, 0.0545, 0.0546, },
	[56] = {0.0543, 0.0550, 0.0328, 0.0386, 0.0478, 0.0545, 0.0454, 0.0536, 0.0539, },
	[57] = {0.0532, 0.0544, 0.0321, 0.0378, 0.0466, 0.0536, 0.0454, 0.0526, 0.0531, },
	[58] = {0.0521, 0.0530, 0.0314, 0.0370, 0.0466, 0.0536, 0.0454, 0.0517, 0.0525, },
	[59] = {0.0510, 0.0524, 0.0307, 0.0364, 0.0454, 0.0528, 0.0441, 0.0517, 0.0518, },
	[60] = {0.0500, 0.0512, 0.0301, 0.0355, 0.0454, 0.0512, 0.0441, 0.0500, 0.0493, },
	[61] = {0.0469, 0.0491, 0.0297, 0.0334, 0.0443, 0.0496, 0.0435, 0.0484, 0.0478, },
	[62] = {0.0442, 0.0483, 0.0290, 0.0322, 0.0444, 0.0486, 0.0432, 0.0481, 0.0472, },
	[63] = {0.0418, 0.0472, 0.0284, 0.0307, 0.0441, 0.0470, 0.0424, 0.0470, 0.0456, },
	[64] = {0.0397, 0.0456, 0.0279, 0.0296, 0.0433, 0.0456, 0.0423, 0.0455, 0.0447, },
	[65] = {0.0377, 0.0446, 0.0273, 0.0286, 0.0426, 0.0449, 0.0422, 0.0448, 0.0438, },
	[66] = {0.0360, 0.0437, 0.0270, 0.0276, 0.0419, 0.0437, 0.0411, 0.0435, 0.0430, },
	[67] = {0.0344, 0.0425, 0.0264, 0.0268, 0.0414, 0.0427, 0.0412, 0.0436, 0.0424, },
	[68] = {0.0329, 0.0416, 0.0259, 0.0262, 0.0412, 0.0417, 0.0408, 0.0424, 0.0412, },
	[69] = {0.0315, 0.0408, 0.0254, 0.0256, 0.0410, 0.0408, 0.0404, 0.0414, 0.0406, },
	[70] = {0.0303, 0.0400, 0.0250, 0.0250, 0.0400, 0.0400, 0.0400, 0.0405, 0.0400, },
	[71] = {0.0297, 0.0393, 0.0246, 0.0244, 0.0390, 0.0392, 0.0396, 0.0396, 0.0394, },
	[72] = {0.0292, 0.0385, 0.0242, 0.0238, 0.0381, 0.0384, 0.0393, 0.0387, 0.0388, },
	[73] = {0.0287, 0.0378, 0.0238, 0.0233, 0.0372, 0.0377, 0.0389, 0.0379, 0.0383, },
};

ScrubBuster.HealthRegenPerSpi = { --health regen for the non-first 50 points of Spi, from StatLogicLib
	0.5, 0.125, 0.125, 0.333333, 0.041667, 0.071429, 0.041667, 0.045455, 0.0625,
}

ScrubBuster.HealthRegenPerSpi50 = { --the first 50 points of spirit seem to have a weird special treatment
	[1] = {0.131579, 0.092593, 0.089286, 0.121951, 0.119048, 0.086207, 0.079365, 0.080645, 0.081967},
	[2] = {0.166667, 0.108696, 0.104167, 0.151515, 0.128205, 0.1, 0.090909, 0.092593, 0.096154},
	[3] = {0.185185, 0.128205, 0.121951, 0.172414, 0.131579, 0.111111, 0.102041, 0.102041, 0.108696},
	[4] = {0.217391, 0.135135, 0.131579, 0.192308, 0.131579, 0.121951, 0.102041, 0.111111, 0.119048},
	[5] = {0.238095, 0.142857, 0.142857, 0.217391, 0.131579, 0.128205, 0.102041, 0.113636, 0.125},
	[6] = {0.263158, 0.15625, 0.147059, 0.227273, 0.131579, 0.135135, 0.102041, 0.113636, 0.131579},
	[7] = {0.277778, 0.16129, 0.16129, 0.25, 0.131579, 0.138889, 0.102041, 0.113636, 0.131579},
	[8] = {0.294118, 0.172414, 0.16129, 0.263158, 0.131579, 0.138889, 0.102041, 0.113636, 0.131579},
	[9] = {0.3125, 0.172414, 0.166667, 0.263158, 0.131579, 0.138889, 0.102041, 0.113636, 0.131579},
	[10] = {0.3125, 0.172414, 0.172414, 0.277778, 0.131579, 0.138889, 0.102041, 0.113636, 0.131579},
	[11] = {0.357143, 0.185185, 0.172414, 0.294118, 0.131579, 0.138889, 0.102041, 0.113636, 0.131579},
	[12] = {0.384615, 0.192308, 0.172414, 0.294118, 0.131579, 0.138889, 0.102041, 0.113636, 0.131579},
	[13] = {0.384615, 0.208333, 0.178571, 0.3125, 0.131579, 0.138889, 0.102041, 0.113636, 0.131579},
	[14] = {0.416667, 0.208333, 0.178571, 0.3125, 0.131579, 0.138889, 0.102041, 0.113636, 0.131579},
	[15] = {0.454545, 0.208333, 0.178571, 0.3125, 0.131579, 0.138889, 0.102041, 0.113636, 0.131579},
	[16] = {0.454545, 0.208333, 0.178571, 0.333333, 0.131579, 0.138889, 0.102041, 0.113636, 0.131579},
	[17] = {0.454545, 0.208333, 0.178571, 0.333333, 0.131579, 0.142857, 0.102041, 0.113636, 0.131579},
	[18] = {0.5, 0.217391, 0.178571, 0.333333, 0.131579, 0.147059, 0.102041, 0.113636, 0.131579},
	[19] = {0.5, 0.217391, 0.178571, 0.333333, 0.131579, 0.151515, 0.102041, 0.113636, 0.131579},
	[20] = {0.5, 0.217391, 0.178571, 0.333333, 0.131579, 0.151515, 0.102041, 0.113636, 0.131579},
	[21] = {0.5, 0.217391, 0.178571, 0.333333, 0.131579, 0.151515, 0.102041, 0.113636, 0.131579},
	[22] = {0.5, 0.217391, 0.178571, 0.333333, 0.131579, 0.15625, 0.102041, 0.113636, 0.135135},
	[23] = {0.555556, 0.217391, 0.178571, 0.333333, 0.131579, 0.15625, 0.102041, 0.113636, 0.135135},
	[24] = {0.555556, 0.227273, 0.178571, 0.333333, 0.142857, 0.15625, 0.102041, 0.113636, 0.135135},
	[25] = {0.555556, 0.227273, 0.178571, 0.333333, 0.142857, 0.15625, 0.102041, 0.113636, 0.135135},
	[26] = {0.555556, 0.227273, 0.185185, 0.333333, 0.142857, 0.15625, 0.102041, 0.113636, 0.135135},
	[27] = {0.555556, 0.227273, 0.185185, 0.333333, 0.142857, 0.16129, 0.102041, 0.113636, 0.135135},
	[28] = {0.555556, 0.238095, 0.185185, 0.333333, 0.142857, 0.16129, 0.102041, 0.113636, 0.135135},
	[29] = {0.555556, 0.238095, 0.185185, 0.333333, 0.142857, 0.16129, 0.102041, 0.113636, 0.135135},
	[30] = {0.555556, 0.238095, 0.185185, 0.333333, 0.142857, 0.166667, 0.102041, 0.113636, 0.135135},
	[31] = {0.555556, 0.238095, 0.192308, 0.333333, 0.142857, 0.166667, 0.102041, 0.113636, 0.138889},
	[32] = {0.555556, 0.238095, 0.192308, 0.333333, 0.142857, 0.166667, 0.102041, 0.116279, 0.138889},
	[33] = {0.555556, 0.25, 0.192308, 0.333333, 0.142857, 0.166667, 0.102041, 0.116279, 0.138889},
	[34] = {0.555556, 0.25, 0.192308, 0.333333, 0.142857, 0.166667, 0.102041, 0.116279, 0.138889},
	[35] = {0.555556, 0.25, 0.192308, 0.333333, 0.142857, 0.166667, 0.104167, 0.116279, 0.138889},
	[36] = {0.555556, 0.25, 0.192308, 0.333333, 0.166667, 0.166667, 0.104167, 0.116279, 0.138889},
	[37] = {0.555556, 0.25, 0.192308, 0.333333, 0.166667, 0.172414, 0.104167, 0.116279, 0.138889},
	[38] = {0.555556, 0.25, 0.192308, 0.333333, 0.166667, 0.172414, 0.104167, 0.116279, 0.138889},
	[39] = {0.555556, 0.25, 0.192308, 0.333333, 0.166667, 0.172414, 0.106383, 0.116279, 0.138889},
	[40] = {0.555556, 0.25, 0.192308, 0.333333, 0.166667, 0.172414, 0.106383, 0.119048, 0.138889},
	[41] = {0.555556, 0.25, 0.192308, 0.333333, 0.166667, 0.172414, 0.106383, 0.119048, 0.138889},
	[42] = {0.555556, 0.263158, 0.192308, 0.357143, 0.166667, 0.172414, 0.108696, 0.119048, 0.138889},
	[43] = {0.555556, 0.263158, 0.2, 0.357143, 0.166667, 0.172414, 0.108696, 0.119048, 0.138889},
	[44] = {0.555556, 0.263158, 0.2, 0.357143, 0.166667, 0.172414, 0.108696, 0.119048, 0.138889},
	[45] = {0.555556, 0.263158, 0.2, 0.357143, 0.166667, 0.172414, 0.108696, 0.119048, 0.138889},
	[46] = {0.625, 0.263158, 0.2, 0.357143, 0.166667, 0.172414, 0.108696, 0.121951, 0.138889},
	[47] = {0.625, 0.263158, 0.2, 0.357143, 0.172414, 0.172414, 0.111111, 0.121951, 0.138889},
	[48] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.111111, 0.121951, 0.138889},
	[49] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.111111, 0.121951, 0.138889},
	[50] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.113636, 0.121951, 0.138889},
	[51] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.113636, 0.125, 0.138889},
	[52] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.113636, 0.125, 0.138889},
	[53] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.116279, 0.125, 0.138889},
	[54] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.116279, 0.125, 0.138889},
	[55] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.116279, 0.125, 0.138889},
	[56] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.116279, 0.125, 0.138889},
	[57] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.119048, 0.125, 0.138889},
	[58] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.119048, 0.128205, 0.138889},
	[59] = {0.625, 0.263158, 0.2, 0.357143, 0.178571, 0.172414, 0.119048, 0.128205, 0.138889},
	[60] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.119048, 0.128205, 0.138889},
	[61] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[62] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[63] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[64] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[65] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[66] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[67] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[68] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[69] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[70] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[71] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[72] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
	[73] = {0.625, 0.263158, 0.2, 0.357143, 0.192308, 0.172414, 0.121951, 0.128205, 0.138889},
};

ScrubBuster.BaseManaRegenPerSpi = {
	[1] = 0.034965,
	[2] = 0.034191,
	[3] = 0.033465,
	[4] = 0.032526,
	[5] = 0.031661,
	[6] = 0.031076,
	[7] = 0.030523,
	[8] = 0.029994,
	[9] = 0.029307,
	[10] = 0.028661,
	[11] = 0.027584,
	[12] = 0.026215,
	[13] = 0.025381,
	[14] = 0.0243,
	[15] = 0.023345,
	[16] = 0.022748,
	[17] = 0.021958,
	[18] = 0.021386,
	[19] = 0.02079,
	[20] = 0.020121,
	[21] = 0.019733,
	[22] = 0.019155,
	[23] = 0.018819,
	[24] = 0.018316,
	[25] = 0.017936,
	[26] = 0.017576,
	[27] = 0.017201,
	[28] = 0.016919,
	[29] = 0.016581,
	[30] = 0.016233,
	[31] = 0.015994,
	[32] = 0.015707,
	[33] = 0.015464,
	[34] = 0.015204,
	[35] = 0.014956,
	[36] = 0.014744,
	[37] = 0.014495,
	[38] = 0.014302,
	[39] = 0.014094,
	[40] = 0.013895,
	[41] = 0.013724,
	[42] = 0.013522,
	[43] = 0.013363,
	[44] = 0.013175,
	[45] = 0.012996,
	[46] = 0.012853,
	[47] = 0.012687,
	[48] = 0.012539,
	[49] = 0.012384,
	[50] = 0.012233,
	[51] = 0.012113,
	[52] = 0.011973,
	[53] = 0.011859,
	[54] = 0.011714,
	[55] = 0.011575,
	[56] = 0.011473,
	[57] = 0.011342,
	[58] = 0.011245,
	[59] = 0.01111,
	[60] = 0.010999,
	[61] = 0.0107,
	[62] = 0.010522,
	[63] = 0.01029,
	[64] = 0.010119,
	[65] = 0.009968,
	[66] = 0.009808,
	[67] = 0.009651,
	[68] = 0.009553,
	[69] = 0.009445,
	[70] = 0.009327,
};

ScrubBuster.TalentBonuses = { --effects of all talents that affect stats, in our syntax
	["WARRIOR"] = {
		["Deflection"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = { ["parryPercent"] = { ["base"] = rank } } };
				return aura;
			end
		},
		
		["Two-Handed Weapon Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["mainHandDamageMultiplier"] = { ["mult"] = 1 },
				} };
				if weaponStats.mainHand.weaponType[1] == "TWOHAND" then
					aura["melee"]["mainHandDamageMultiplier"]["mult"] = 1 + 0.01 * rank;
				end
				return aura;
			end
		},
		
		["Poleaxe Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["melee"] = {
						["mainHandCritPercent"] = { ["base"] = 0 },
						["offHandCritPercent"] = { ["base"] = 0 }
					}
				};
				if weaponStats.mainHand.weaponType[2] == "AXE" or weaponStats.mainHand.weaponType[2] == "POLEARM" then
					aura["melee"]["mainHandCritPercent"]["base"] = rank;
				end
				
				if weaponStats.offHand.weaponType[2] == "AXE" or weaponStats.offHand.weaponType[2] == "POLEARM" then
					aura["melee"]["offHandCritPercent"]["base"] = rank;
				end
				return aura;
			end
		},
		
		["Cruelty"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = { 
					["mainHandCritPercent"] = { ["base"] = 0 },
					["offHandCritPercent"] = { ["base"] = 0 }
				} };
				if weaponStats.mainHand.isWeapon then
					aura["melee"]["mainHandCritPercent"]["base"] = rank;
				end
				if weaponStats.offHand.isWeapon then
					aura["melee"]["offHandCritPercent"]["base"] = rank;
				end
				return aura;
			end
		},
		
		["Dual Wield Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["offHandDmgMin"] = { ["mult"] = 1 + 0.05 * rank },
					["offHandDmgMax"] = { ["mult"] = 1 + 0.05 * rank }
				} };
				return aura;
			end
		},
		
		["Precision"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = { ["hitPercent"] = { ["base"] = 0 } } };
				if weaponStats.mainHand.isWeapon or weaponStats.offHand.isWeapon then
					aura["melee"]["hitPercent"]["base"] = rank;
				end
				return aura;
			end
		},
		
		["Improved Berserker Stance"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = { ["attackPower"] = { ["mult"] = 1 } } };
				if special["warriorStance"] == "berserker" then
					aura["melee"]["attackPower"]["mult"] = 1 + 0.02 * rank;
				end
				return aura;
			end
		},
		
		["Anticipation"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = { ["defense"] = { ["base"] = 4 * rank } } };
				return aura;
			end
		},
		
		["Shield Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = { ["blockPercent"] = { ["base"] = rank } } };
				return aura;
			end
		},
		
		["Toughness"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local bonusarmor = itemStats["defense"]["armor"]["posMod"];
				local aura = { ["defense"] = { ["armor"] = { ["base"] = bonusarmor * 0.02 * rank } } };
				return aura;
			end
		},
		
		["Defiance"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = { ["expertise"] = { ["base"] = 2 * rank } } };
				return aura;
			end
		},
		
		["Shield Mastery"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = { ["blockValue"] = { ["mult"] = 1 + 0.1 * rank } } };
				return aura;
			end
		},
		
		["One-Handed Weapon Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["mainHandDamageMultiplier"] = { ["mult"] = 1 },
					["offHandDamageMultiplier"] = { ["mult"] = 1 }
				} };
				
				local mh = weaponStats.mainHand.weaponType;
				local oh = weaponStats.offHand.weaponType;
				if mh[1] == "ONEHAND" or mh[1] == "MAINHAND" then
					aura["melee"]["mainHandDamageMultiplier"]["mult"] = 1 + 0.02 * rank;
				end
				if oh[1] == "ONEHAND" or (oh[1] == "OFFHAND" and not (oh[2] == "SHIELD" or oh[2] == "OFFHANDITEM")) then
					aura["melee"]["offHandDamageMultiplier"]["mult"] = 1 + 0.02 * rank;
				end
				return aura;				
			end
		},
		
		["Vitality"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["sta"] = { ["mult"] = 1 + 0.01 * rank },
					["str"] = { ["mult"] = 1 + 0.02 * rank }
				} };
				return aura;
			end
		},
		
	},
	
	["PALADIN"] = {
		["Divine Strength"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = { ["str"] = { ["mult"] = 1 + 0.02 * rank } } };
				return aura;
			end
		},
		
		["Divine Intellect"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = { ["int"] = { ["mult"] = 1 + 0.02 * rank } } };
				return aura;
			end
		},
		
		["Holy Power"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = { ["holyCritPercent"] = { ["base"] = rank } } };
				return aura;
			end
		},
		
		["Holy Guidance"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local totalInt = stats["primary"]["int"]["base"] + stats["primary"]["int"]["posMod"] + stats["primary"]["int"]["negMod"];
				local aura = { ["spell"] = {
					["damage"] = { ["base"] = totalInt * 0.07 * rank },
					["healing"] = { ["base"] = totalInt * 0.07 * rank }
				} };
				return aura;
			end
		},
		
		["Precision"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["melee"] = { ["hitPercent"] = { ["base"] = 0 } },
					["spell"] = { ["hitPercent"] = { ["base"] = rank } }	
				};
				if weaponStats.mainHand.isWeapon then
					aura["melee"]["hitPercent"]["base"] = rank;
				end
				return aura;
			end
		},
		
		["Toughness"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["armor"] = { ["base"] = itemStats["defense"]["armor"]["posMod"] * 0.02 * rank }
				} };
				return aura;
			end
		},
		
		["Shield Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["blockValue"] = { ["mult"] = 1 + 0.1 * rank }
				} };
				return aura;
			end
		},
		
		["Anticipation"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["defense"] = { ["base"] = 4 * rank }
				} };
				return aura;
			end
		},
		
		["Sacred Duty"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["sta"] = { ["mult"] = 1 + 0.03 * rank }
				} };
				return aura;
			end
		},
		
		["One-Handed Weapon Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["melee"] = {
						["mainHandDamageMultiplier"] = { ["mult"] = 1 },
						["offHandDamageMultiplier"] = { ["mult"] = 1 }
					},
					["ranged"] = {
						["damageMultiplier"] = { ["mult"] = 1 }
					}
				};
				local mh = weaponStats.mainHand.weaponType;
				if mh[1] == "ONEHAND" or mh[1] == "MAINHAND" then
					local temp = 1 + 0.01 * rank;
					aura["melee"]["mainHandDamageMultiplier"]["mult"] = temp;
					aura["melee"]["offHandDamageMultiplier"]["mult"] = temp;
					aura["ranged"]["damageMultiplier"]["mult"] = temp;
				end
				return aura;
			end
		},
		
		["Combat Expertise"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["melee"] = {
						["expertise"] = { ["base"] = rank }
					},
					["primary"] = {
						["sta"] = { ["mult"] = 1 + 0.02 * rank }
					}
				};
				return aura;
			end
		},
		
		["Deflection"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["parryPercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Conviction"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["critPercent"] = { ["base"] = 0 }
				} };
				if weaponStats.mainHand.isWeapon then
					aura["melee"]["critPercent"]["base"] = rank;
				end
				return aura;
			end
		},
		
		["Two-Handed Weapon Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["mainHandDamageMultiplier"] = { ["mult"] = 1 }
				} };
				if weaponStats.mainHand.weaponType[1] == "TWOHAND" then
					aura["melee"]["mainHandDamageMultiplier"]["mult"] = 1 + 0.02 * rank;
				end
				return aura;
			end
		},
	},
	
	["HUNTER"] = {
		["Endurance Training"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["resource"] = {
					["health"] = { ["mult"] = 1 + 0.01 * rank }
				} };
				return aura;
			end
		},
		
		["Thick Hide"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = { 
					["armor"] = { ["base"] = itemStats["defense"]["armor"]["posMod"] * 0.04 * rank }
				} };
				return aura;
			end
		},
		
		["Catlike Reflexes"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["dodgePercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Serpent's Swiftness"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["ranged"] = {
					["increasedAttackSpeed"] = { ["base"] = 0.04 * rank }
				} };
				return aura;
			end
		},
		
		["Lethal Shots"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["ranged"] = {
					["critPercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Combat Experience"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["agi"] = { ["mult"] = 1 + 0.01 * rank },
					["int"] = { ["mult"] = 1 + 0.03 * rank }
				} };
				return aura;
			end
		},
		
		["Ranged Weapon Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["ranged"] = {
					["damageMultiplier"] = { ["mult"] = 1 }
				} };
				if weaponStats.ranged.isWeapon then
					aura["ranged"]["damageMultiplier"]["mult"] = 1 + 0.01 * rank;
				end
				return aura;
			end
		},
		
		["Careful Aim"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local totalInt = stats["primary"]["int"]["base"] + stats["primary"]["int"]["posMod"] + stats["primary"]["int"]["negMod"];
				local aura = { ["ranged"] = {
					["attackPower"] = { ["base"] = totalInt * 0.15 * rank }
				} };
				return aura;
			end
		},
		
		["Master Marksman"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["ranged"] = {
					["attackPower"] = { ["mult"] = 1 + 0.02 * rank }
				} };
				return aura;
			end
		},
		
		["Deflection"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["parryPercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Survivalist"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["sta"] = { ["mult"] = 1 + 0.02 * rank }
				} };
				return aura;
			end
		},
		
		["Surefooted"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["physical"] = {
					["hitPercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Survival Instincts"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { 
					["melee"] = {
						["attackPower"] = { ["mult"] = 1 + 0.02 * rank }
					},
					["ranged"] = {
						["attackPower"] = { ["mult"] = 1 + 0.02 * rank }
					},
				};
				return aura;
			end
		},
		
		["Killer Instinct"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["melee"] = {
						["critPercent"] = { ["base"] = rank }
					},
					["ranged"] = {
						["critPercent"] = { ["base"] = rank }
					},
				};
				return aura;
			end
		},
		
		["Lightning Reflexes"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["agi"] = { ["mult"] = 1 + 0.03 * rank }
				} };
				return aura;
			end
		},
	},
	
	["ROGUE"] = {
		["Malice"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["melee"] = {
						["critPercent"] = { ["base"] = rank }
					},
					["ranged"] = {
						["critPercent"] = { ["base"] = rank }
					}
				};
				return aura;
			end
		},
		
		["Lightning Reflexes"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["dodgePercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Deflection"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["parryPercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Precision"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["melee"] = {
						["hitPercent"] = { ["base"] = 0 }
					},
					["ranged"] = {
						["hitPercent"] = { ["base"] = 0 }
					}
				};
				if weaponStats.mainHand.isWeapon then
					aura["melee"]["hitPercent"]["base"] = rank;
				end
				if weaponStats.ranged.isWeapon then
					aura["ranged"]["hitPercent"]["base"] = rank;
				end
				return aura;
			end
		},
		
		["Dagger Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["mainHandCritPercent"] = { ["base"] = 0 },
					["offHandCritPercent"] = { ["base"] = 0 }
				} };
				if weaponStats.mainHand.weaponType[2] == "DAGGER" then
					aura["melee"]["mainHandCritPercent"]["base"] = rank;
				end
				if weaponStats.offHand.weaponType[2] == "DAGGER" then
					aura["melee"]["offHandCritPercent"]["base"] = rank;
				end
				return aura;
			end
		},
		
		["Dual Wield Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["offHandDmgMin"] = { ["mult"] = 1 + 0.1 * rank },
					["offHandDmgMax"] = { ["mult"] = 1 + 0.1 * rank }
				} };
				return aura;
			end
		},
		
		["Weapon Expertise"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["expertise"] = { ["base"] = 5 * rank }
				} };
				return aura;
			end
		},
		
		["Vitality"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["sta"] = { ["mult"] = 1 + 0.02 * rank },
					["agi"] = { ["mult"] = 1 + 0.01 * rank}
				} };
				return aura;
			end
		},
		
		["Sleight of Hand"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["critReduction"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Serrated Blades"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["physical"] = {
					["armorPen"] = { ["base"] = 2.6666667 * level * rank }
				} };
				return aura;
			end
		},
		
		["Deadliness"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["melee"] = {
						["attackPower"] = { ["mult"] = 1 + 0.02 * rank }
					},
					["ranged"] = {
						["attackPower"] = { ["mult"] = 1 + 0.02 * rank }
					}
				};
				return aura;
			end
		},
		
		["Sinister Calling"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["agi"] = { ["mult"] = 1 + 0.03 * rank }
				} };
				return aura;
			end
		},
	},
	
	["PRIEST"] = {
		["Wand Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["ranged"] = {
					["damageMultiplier"] = { ["mult"] = 1 }
				} };
				if weaponStats.ranged.weaponType[2] == "WAND" then
					aura["ranged"]["damageMultiplier"]["mult"] = 1 + 0.05 * rank;
				end
				return aura;
			end
		},
		
		["Meditation"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local tempBase = stats["resource"]["manaRegen"]["base"];
				local tempBonus = stats["resource"]["manaRegen"]["posMod"];
				local tempNeg = stats["resource"]["manaRegen"]["negMod"]
				local aura = { ["resource"] = {
					["manaRegenWhileCasting"] = { ["base"] = tempBase * 0.1 * rank, ["posMod"] = tempBonus * 0.1 * rank, ["negMod"] = tempNeg * 0.1 * rank }
				} };
				return aura;
			end
		},
		
		["Mental Strength"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["resource"] = {
					["mana"] = { ["mult"] = 1 + 0.02 * rank }
				} };
				return aura;
			end
		},
		
		["Enlightenment"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["sta"] = { ["mult"] = 1 + 0.01 * rank },
					["int"] = { ["mult"] = 1 + 0.01 * rank },
					["spi"] = { ["mult"] = 1 + 0.01 * rank }
				} };
				return aura;
			end
		},
		
		["Holy Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = {
					["holyCritPercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Spiritual Guidance"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local tempSpi = stats["primary"]["spi"]["base"] + stats["primary"]["spi"]["posMod"] + stats["primary"]["spi"]["negMod"];
				local aura = { ["spell"] = {
					["damage"] = { ["base"] = tempSpi * 0.05 * rank },
					["healing"] = { ["base"] = tempSpi * 0.05 * rank }
				} };
				return aura;
			end
		},
		
		["Shadow Focus"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = {
					["shadowHitPercent"] = { ["base"] = 2 * rank }
				} };
				return aura;
			end
		},
	},
	
	["SHAMAN"] = {
		["Unrelenting Storm"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local tempInt = stats["primary"]["int"]["base"] + stats["primary"]["int"]["posMod"] + stats["primary"]["int"]["negMod"];
				local aura = { ["resource"] = {
					["manaRegenWhileCasting"] = { ["base"] = tempInt * 0.02 * rank }
				} };
				return aura;
			end
		},
		
		["Elemental Precision"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = {
					["fireHitPercent"] = { ["base"] = 2 * rank },
					["frostHitPercent"] = { ["base"] = 2 * rank },
					["natureHitPercent"] = { ["base"] = 2 * rank }
				} };
				return aura;
			end
		},
		
		["Elemental Shields"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["critReduction"] = { ["base"] = 2 * rank }
				} };
				return aura;
			end
		},
		
		["Ancestral Knowledge"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["resource"] = {
					["mana"] = { ["mult"] = 1 + 0.01 * rank }
				} };
				return aura;
			end
		},
		
		["Shield Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["blockPercent"] = { ["base"] = rank },
					["blockValue"] = { ["mult"] = 1 + 0.05 * rank }
				} };
				return aura;
			end
		},
		
		["Thundering Strikes"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["mainHandCritPercent"] = { ["base"] = 0 },
					["offHandCritPercent"] = { ["base"] = 0 }
				} };
				if weaponStats.mainHand.isWeapon then
					aura["melee"]["mainHandCritPercent"]["base"] = rank;
				end
				if weaponStats.offHand.isWeapon then
					aura["melee"]["offHandCritPercent"]["base"] = rank;
				end
				return aura;
			end
		},
		
		["Anticipation"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["dodgePercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Toughness"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["armor"] = { ["base"] = itemStats["defense"]["armor"]["posMod"] * 0.02 * rank }
				} };
				return aura;
			end
		},
		
		--[[ Actually, we'll check for this elsewhere.
		["Spirit Weapons"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["parryPercent"] = { ["base"] = 5 }
				} };
				return aura;
			end
		}, ]]
		
		["Mental Quickness"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local tempAP = stats["melee"]["attackPower"]["base"] + stats["melee"]["attackPower"]["posMod"] + stats["melee"]["attackPower"]["negMod"];
				tempAP = tempAP * stats["melee"]["attackPower"]["mult"]; --don't tell anyone I did this
				local aura = { ["spell"] = {
					["damage"] = { ["base"] = tempAP * 0.1 * rank },
					["healing"] = { ["base"] = tempAP * 0.1 * rank }
				} };
				return aura;
			end
		},
		
		["Weapon Mastery"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["mainHandDamageMultiplier"] = { ["mult"] = 1 },
					["offHandDamageMultiplier"] = { ["mult"] = 1 }
				} };
				if weaponStats.mainHand.isWeapon then
					aura["melee"]["mainHandDamageMultiplier"]["mult"] = 1 + 0.02 * rank;
				end
				if weaponStats.offHand.isWeapon then
					aura["melee"]["offHandDamageMultiplier"]["mult"] = 1 + 0.02 * rank;
				end
				return aura;
			end
		},
		
		["Dual Wield Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["hitPercent"] = { ["base"] = 0 }
				} };
				if weaponStats.dualWielding then
					aura["melee"]["hitPercent"]["base"] = 2 * rank;
				end
				return aura;
			end
		},
		
		["Nature's Guidance"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["melee"] = {
						["hitPercent"] = { ["base"] = rank }
					},
					["spell"] = {
						["hitPercent"] = { ["base"] = rank}
					}
				};
				return aura;
			end
		},
		
		["Nature's Blessing"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local totalInt = stats["primary"]["int"]["base"] + stats["primary"]["int"]["posMod"] + stats["primary"]["int"]["negMod"];
				local aura = { ["spell"] = {
					["damage"] = { ["base"] = totalInt * 0.1 * rank },
					["healing"] = { ["base"] = totalInt * 0.1 * rank }
				} };
				return aura;
			end
		},
	},
	
	["MAGE"] = {
		["Arcane Subtlety"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = {
					["penetration"] = { ["base"] = 5 * rank }
				} };
				return aura;
			end
		},
		
		["Arcane Focus"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = {
					["arcaneHitPercent"] = { ["base"] = 2 * rank }
				} };
				return aura;
			end
		},
	
		["Wand Specialization"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["ranged"] = {
					["damageMultiplier"] = { ["mult"] = 0 }
				} };
				if weaponStats.ranged.weaponType[2] == "WAND" then
					aura["ranged"]["damageMultiplier"]["mult"] = 1 + 0.125 * rank;
				end
				return aura;
			end
		},
		
		["Magic Absorption"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local temp = 2 * rank;
				local aura = { ["resist"] = {
					["arcane"] = { ["posMod"] = temp },
					["fire"] = { ["posMod"] = temp },
					["nature"] = { ["posMod"] = temp },
					["frost"] = { ["posMod"] = temp },
					["shadow"] = { ["posMod"] = temp}
				} };
				return aura;
			end
		},
		
		["Arcane Fortitude"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local tempInt = stats["primary"]["int"]["base"] + stats["primary"]["int"]["posMod"] + stats["primary"]["int"]["negMod"];
				local aura = { ["defense"] = {
					["armor"] = { ["base"] = tempInt }
				} };
				return aura;
			end
		},
		
		["Arcane Meditation"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local tempBase = stats["resource"]["manaRegen"]["base"];
				local tempBonus = stats["resource"]["manaRegen"]["posMod"];
				local tempNeg = stats["resource"]["manaRegen"]["negMod"]
				local aura = { ["resource"] = {
					["manaRegenWhileCasting"] = { ["base"] = tempBase * 0.1 * rank, ["posMod"] = tempBonus * 0.1 * rank, ["negMod"] = tempNeg * 0.1 * rank }
				} };
				return aura;
			end
		},
		
		["Arcane Mind"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["int"] = { ["mult"] = 1 + 0.03 * rank }
				} };
				return aura;
			end
		},
		
		["Arcane Instability"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = {
					["critPercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Mind Mastery"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local totalInt = stats["primary"]["int"]["base"] + stats["primary"]["int"]["posMod"] + stats["primary"]["int"]["negMod"];
				local aura = { ["spell"] = {
					["damage"] = { ["base"] = totalInt * 0.05 * rank }
				} };
				return aura;
			end
		},
		
		["Elemental Precision"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = {
					["frostHitPercent"] = { ["base"] = rank },
					["fireHitPercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Arctic Winds"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["hitReduction"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
	},
	
	["WARLOCK"] = {
		["Demonic Embrace"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["sta"] = { ["mult"] = 1 + 0.03 * rank },
					["spi"] = { ["mult"] = 1 - 0.01 * rank }
				} };
				return aura;
			end
		},
		
		["Fel Intellect"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["resource"] = {
					["mana"] = { ["mult"] = 1 + 0.01 * rank }
				} };
				return aura;
			end
		},
		
		["Fel Stamina"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["resource"] = {
					["health"] = { ["mult"] = 1 + 0.01 * rank }
				} };
				return aura;
			end
		},
		
		["Demonic Resilience"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["critReduction"] = { ["base"] = rank }
				} };
				return aura;
			end
		
		},
		
		["Demonic Tactics"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["melee"] = {
						["critPercent"] = { ["base"] = rank }
					},
					["spell"] = {
						["critPercent"] = { ["base"] = rank }
					}
				};
				return aura;
			end
		},
		
		["Backlash"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = {
					["critPercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
	},
	
	["DRUID"] = {
		["Lunar Guidance"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local tempInt = stats["primary"]["int"]["base"] + stats["primary"]["int"]["posMod"] + stats["primary"]["int"]["negMod"];
				local aura = { ["spell"] = {
					["damage"] = { ["base"] = tempInt * 0.0833333334 * rank },
					["healing"] = { ["base"] = tempInt * 0.0833333334 * rank }
				} };
				return aura;
			end
		},
		
		["Balance of Power"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = {
					["hitPercent"] = { ["base"] = 2 * rank }
				} };
				return aura;
			end
		},
		
		["Dreamstate"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local tempInt = stats["primary"]["int"]["base"] + stats["primary"]["int"]["posMod"] + stats["primary"]["int"]["negMod"];
				local aura = { ["resource"] = {
					["manaRegenWhileCasting"] = { ["base"] = tempInt * ( 0.01 + 0.03 * rank ) }
				} };
				return aura;
			end
		},
		
		["Moonkin Form"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["defense"] = {
						["armor"] = { ["posMod"] = 0 },
					},
					["spell"] = {
						["critPercent"] = { ["posMod"] = 0 },
					}
				};
				if special["druidForm"] == "moonkin" then
					aura["defense"]["armor"]["posMod"] = itemStats["defense"]["armor"]["posMod"] * 4;
					aura["spell"]["critPercent"]["posMod"] = 5;
				end
				return aura;
			end
		},
		
		["Thick Hide"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["armor"] = { ["base"] = itemStats["defense"]["armor"]["posMod"] * (0.01 + 0.03 * rank) }
				} };
				return aura;
			end
		},
		
		["Feral Swiftness"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["dodgePercent"] = { ["base"] = 0 }
				} };
				if special["druidForm"] == "cat" or special["druidForm"] == "bear" then
					aura["defense"]["dodgePercent"]["base"] = 2 * rank;
				end
				return aura;
			end
		},
		
		["Sharpened Claws"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["critPercent"] = { ["base"] = 0 }
				} };
				if special["druidForm"] == "cat" or special["druidForm"] == "bear" then
					aura["melee"]["critPercent"]["base"] = 2 * rank;
				end
				return aura;
			end
		},
		
		["Predatory Strikes"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["attackPower"] = { ["base"] = 0 }
				} };
				if special["druidForm"] == "cat" or special["druidForm"] == "bear" or special["druidForm"] == "moonkin" then
					aura["melee"]["attackPower"]["base"] = level * 0.5 * rank;
				end
				return aura;
			end
		},
		
		["Nurturing Instinct"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local tempAgi = stats["primary"]["agi"]["base"] + stats["primary"]["agi"]["posMod"] + stats["primary"]["agi"]["negMod"];
				local aura = { ["spell"] = {
					["healing"] = { ["base"] = tempAgi * 0.5 * rank }
				} };
				return aura;
			end
		},
		
		["Heart of the Wild"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {
					["primary"] = {
						["int"] = { ["mult"] = 1 + 0.04 * rank },
						["sta"] = { ["mult"] = 1 },
					},
				};
				if special["druidForm"] == "bear" then
					aura["primary"]["sta"]["mult"] = 1 + 0.04 * rank;
				end
				return aura;
			end,
			["prio2"] = 2,
			["func2"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = {	
					["melee"] = {
						["attackPower"] = { ["mult"] = 1 },
					},
				};
				if special["druidForm"] == "cat" then
					aura["melee"]["attackPower"]["mult"] = 1 + 0.02 * rank;
				end
				return aura;
			end
		},
		
		["Survival of the Fittest"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local temp = 1 + 0.01 * rank;
				local aura = { ["primary"] = {
					["str"] = { ["mult"] = temp },
					["agi"] = { ["mult"] = temp },
					["sta"] = { ["mult"] = temp},
					["int"] = { ["mult"] = temp},
					["spi"] = { ["mult"] = temp}
				} };
				return aura;
			end,
			["prio2"] = 2,
			["func2"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["critReduction"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
		
		["Leader of the Pack"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["critPercent"] = { ["posMod"] = 0 },
				} };
				if special["druidForm"] == "cat" or special["druidForm"] == "bear" then
					aura["melee"]["critPercent"]["posMod"] = 5;
				end
				return aura;
			end
		},
		
		["Naturalist"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["melee"] = {
					["mainHandDamageMultiplier"] = { ["mult"] = 1 + 0.02 * rank },
					["offHandDamageMultiplier"] = { ["mult"] = 1 + 0.02 * rank }
				} };
				return aura;
			end
		},
		
		["Intensity"] = {
			["prio"] = 3,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local tempBase = stats["resource"]["manaRegen"]["base"];
				local tempBonus = stats["resource"]["manaRegen"]["posMod"];
				local tempNeg = stats["resource"]["manaRegen"]["negMod"]
				local aura = { ["resource"] = {
					["manaRegenWhileCasting"] = { ["base"] = tempBase * 0.1 * rank, ["posMod"] = tempBonus * 0.1 * rank, ["negMod"] = tempNeg * 0.1 * rank }
				} };
				return aura;
			end
		},
		
		["Living Spirit"] = {
			["prio"] = 1,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["spi"] = { ["mult"] = 1 + 0.05 * rank }
				} };
				return aura;
			end
		},
		
		["Natural Perfection"] = {
			["prio"] = 2,
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["spell"] = {
					["critPercent"] = { ["base"] = rank }
				} };
				return aura;
			end
		},
	},
};

