NAME = ae
OBJS = $(NAME).obj

LINK_FLAG = /subsystem:console
ML_FLAG = /c /coff

$(NAME).exe: $(OBJS)
	Link $(LINK_FLAG) $(OBJS)
.asm.obj:
	ml $(ML_FLAG) $<

clean:
	del *.obj
