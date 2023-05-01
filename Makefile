ASM=nasm

BUILD_DIR=build
SRC_DIR=src

all: build_dirs $(BUILD_DIR)/main_floppy.img

build_dirs:
	mkdir -p $(BUILD_DIR)

run: all
	qemu-system-i386 -fda  $(BUILD_DIR)/main_floppy.img

$(BUILD_DIR)/main_floppy.img: $(BUILD_DIR)/main.bin
	cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/main_floppy.img
	truncate -s 1440k $(BUILD_DIR)/main_floppy.img

$(BUILD_DIR)/main.bin:$(SRC_DIR)/main.s
	$(ASM) $(SRC_DIR)/main.s -f bin -o $(BUILD_DIR)/main.bin

clean:
	rm -f $(BUILD_DIR)/*

re: clean all
