echo $1
nasm -g -f elf -F dwarf $1 -o "${1}.o"
ld -m elf_i386 "${1}.o" -o "${1}ex"  
