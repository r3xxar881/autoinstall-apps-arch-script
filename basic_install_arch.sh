#!/bin/bash

#Instalaciones basicas e interface grafica de arch:

comprobar_instalar (nombre_app)
	{
		if [ $(sudo pacman -Q | grep nombre_app) == nombre_app ]
			then
		fi
	}

clear

if [ $(whoami) == "root" ]
	then
		
		#Opciones a instalar#
		opt=""
		while ( $opt == "" )
			do
				echo "
				- Iniciando instalaciones basicas para arch...
				"

				echo "

				# Elija la o las opciones que desea instalar

				(Recordatorio: Se agregaran mas opciones de instalacion)

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


				[99] Instalar todo
				=============================================
				
				"
				echo -n "> "; read opt

				if [ $opt == "" ]
					then
						echo "
						- Porfavor, elige una opcion valida...
						"
					else
						case $opt in
							1)
								if [ $(sudo pacman -Q | grep xorg) == "xorg" ]
									then
										echo "
										- Xorg ya se encuentra instalado en su sistema
										"

									else
										echo "
										- Iniciando instalacion de xorg
										
										" 
										sudo pacman -S xorg
								fi

								;;

							2)
								if [ $(sudo) ]
									then
								fi
								;;
							
							99)
								echo "
								-Saliendo
								"
								exit 0
								;;
							
							*)
								echo "
								-Opcion no valida...
								"
								;;
						esac
				fi
				
				opt=""
			done

	else
		echo "
		- Ejecute el script con 'sudo'
		"
	fi
