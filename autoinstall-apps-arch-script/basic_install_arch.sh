#!/bin/bash

#Instalaciones basicas e interface grafica de arch:

app=""
comprobar_instalar()
	{
		sudo pacman -Qs $app > /dev/null
		
		comp=$(echo $?)

		echo "- Comprobando...
		"
		
		sleep 2

		if [ $comp == 1 ]
			then
				echo "* Iniciando instalacion de $app *
				"
				sleep 1
				sudo pacman -S $app

			else
				echo "- $app ya se encuentra instalado en su sistema
				"
				sleep 2
		fi
	}

#========================================================================================================#

clear

if [ $(whoami) == "root" ]
	then
		
		cat banner.txt
				
		sleep 1

		#Opciones a instalar#
		opt=""
		while [$opt == ""]
			do
				echo "#############################################
				"

				echo "- Elija una opcion:"
				
				cat opcion.txt

				echo -n "> "; read opt

				
				case $opt in
					1)
						app="xorg"
						comprobar_instalar
						;;

					2)
						app="i3"
						comprobar_instalar
						;;
					3)
						app="lightdm"
						comprobar_instalar

						app="light-locker"
						comprobar_instalar
						;;
					4)
						app="cmatrix"
						comprobar_instalar
						;;
					5)
						;;
					6)
						;;
					7)
						;;
					8)
						;;
					9)
						;;
					10)
						;;
							
					99)
						echo "- Saliendo...
						"
						sleep 1
						exit 0
						;;
							
					*)
						echo "*ERROR*: Opcion no valida!
						"
						sleep 1
						;;
				esac
				
				opt=""
			done

	else
		echo "*ERROR*: Ejecute el script con 'sudo'!
		"
fi
