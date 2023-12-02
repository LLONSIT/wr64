#*************************************************************
#
#	A very simple Makefile for Copymask and other tools
#
#	TODO: nrdc recompilation soon!
#
#*************************************************************




default:
	@$(CC) n64crc.c -o n64crc
	@make  -C  ido5.3_recomp
	@make -C nrdc_decompilation
	@printf "done\n"

clean:
	rm n64crc
