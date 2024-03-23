 .model small
.stack 100h

.data
    msg1 db "Enter a character: $"
    msg2 db "ASCII code of entered character is: $"
    char db ?
    ascii db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Display message to enter a character
    mov ah, 09h
    lea dx, msg1
    int 21h

    ; Read character from the user
    mov ah, 01h
    int 21h
    mov char, al  ; Store the character in memory

    ; Display message indicating ASCII code is about to be shown
    mov ah, 09h
    lea dx, msg2
    int 21h

    ; Convert the character to its ASCII code
    mov al, char
    mov ascii, al  ; Store ASCII code in memory

    ; Display the ASCII code
    mov ah, 02h
    mov dl, ascii
    add dl, 30h  ; 30H Convert ASCII code to ASCII character representation
    int 21h

    ; Terminate program
    mov ah, 4Ch
    int 21h
main endp
end main
