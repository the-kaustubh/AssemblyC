echo $1
nasm -f elf $1 -o "${1}.o"
ld -m elf_i386 -s "${1}.o" -o "${1}ex"  
