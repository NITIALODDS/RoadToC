TARGET=test     
C_FILES=$(shell ls *.c)     
BASE=$(basename $(C_FILES))     
OBJS=$(addsuffix .o,$(addprefix obj/, $(BASE)))  
$(TARGET):$(OBJS)          
	gcc -o $(TARGET) $(OBJS)  
obj/%.o : %.c         
	gcc -c -o $@ $<  
clean:         
	-rm -f test         
	-rm -f obj/*.o
