#*************************************************************
#
#	A very simple Makefile for Copymask and other tools
#
#	TODO: nrdc recompilation soon!
#
#*************************************************************




default:
	@$(CC) CopyRom.c -o CopyRom
	@$(CC) n64crc.c -o n64crc
	@make  -C  ido5.3_recomp
	@printf "done\n"

clean:
	rm CopyRom n64crc
