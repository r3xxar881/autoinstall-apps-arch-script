#!/bin/bash

#Instalaciones basicas e interface grafica de arch:

app=""
comprobar_instalar()
	{
		if [ $(sudo pacman -Q | grep $app) == $app ]
			then
				echo "
				- $app ya se encuentra instalado en su sistema
				"

			else
				echo "
				- Iniciando instalacion de $app
				" 
				sudo pacman -S $app
		fi
	}


opciones()
{
echo "
# Elija la o las opciones que desea instalar"
		
#(Recordatorio: Se agregaran mas opciones de instalacion)

echo "
=============================================
COMPLEMENTOS NECESARIOS
[1] Xorg
[2] i3
[3] Lightdm y lightdm-locker
	
SOFTWARE FUNCIONAL
[4] Thunar
[5] Firefox

HERRAMIENTAS
[7] Net-tools
[8] Wireless_tools
[9] 7zip
	
EXTRAS
[10] Pybarstatus (complemento para i3)


[99] Salir
=============================================
"
}

#========================================================================================================#

clear

if [ $(whoami) == "root" ]
	then
		
		echo "
		▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ 
	       ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
		▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ 
		     ▐░▌     ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          
		    ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ 
     		    ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
		    ▐░▌     ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌
                    ▐░▌     ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌          ▐░▌
		 ▄▄▄▄█░█▄▄▄▄ ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌ ▄▄▄▄▄▄▄▄▄█░▌
                ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌
	       ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀         ▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀
				
				 	   I.A.A.A.S
		     	      [ Autoinstall Apps ArchLinux Script ]
			   	
				
		- Iniciando instalaciones basicas para Arch...
		"
				
		sleep 1

		#Opciones a instalar#
		opt=""
		while [$opt == ""]
			do
				opciones

				echo -n "> "; read opt

				if [ $opt == "" ]
					then
						echo "- Porfavor, elige una opcion valida...
						"
					else
						case $opt in
							1)
								app=$opt
								comprobar_instalar
								;;

							2)
								app=$opt
								comprobar_instalar
								;;
							
							99)
								echo "- Saliendo
								"
								sleep 1
								exit 0
								;;
							
							*)
								echo "
								- Opcion no valida...
								"
								;;
						esac
				fi
				
				opt=""
			done

	else
		echo "- Ejecute el script con 'sudo'
		"
	fi
