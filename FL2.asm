.model small
.stack 100

.data
    idMsg db "ID: 21-44537-1$"
    nameMsg db "Name: sobnom mostary$"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Print ID
    mov ah, 09h         ; Function to print string
    lea dx, idMsg      ; Load address of the string to print
    int 21h            ; Call interrupt to print

    ; Print newline
    mov dl, 10          ; ASCII code for newline
    mov ah, 02h         ; Function to print character
    int 21h             ; Call interrupt to print

    ; Print Name
    mov ah, 09h         ; Function to print string
    lea dx, nameMsg    ; Load address of the string to print
    int 21h            ; Call interrupt to print

    ; Exit program
    mov ah, 4Ch         ; Function to terminate program
    int 21h            ; Call interrupt to terminate program
main endp
end main
