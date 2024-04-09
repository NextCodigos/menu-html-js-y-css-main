#!/bin/bash
#todoreal.com
while :; do
    #Menu
    # Pagina buenos apuntes: https://vinuesa.github.io/intro2linux/index.html
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar archivos en directorio"
    echo "2. Mostrar calendario"
    echo "3. Ver texto  archivo  index.html"
    echo "5. Introducir index.html al final texto "
    echo "6. Eliminar index.html CUIDADO"
    echo "7. Crear archivo index2.html "
    echo "8. Eliminar index2.html"
    echo "9. Introducir texto en index2.html "
    echo "10. Ver contenido index2.html"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando archivos en directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Ver texto  archivo  index.html"
        cat  index.html
        read foo
        ;;
    5)
        echo "Introducir index.html al final texto"
        cat >> index.html
        read foo
        ;;
    6)
        echo "Eliminar index.html"
        rm -r  index.html
        echo "has eliminado el contenido añadir contenido"
        read foo
        ;;
    7)
        echo "Crear archivo index2.html"
        touch index2.html
        read foo
        ;;
    8)
        echo "Eliminar index2.html"
        rm -r  index2.html
        read foo
        ;;
    9)
        echo "Mostrar texto introducido archivo2.txt:"
        cat >> index2.html
        read foo
        ;;
    9)
        echo "Ver contenido index2.html"
        cat index2.html
        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
