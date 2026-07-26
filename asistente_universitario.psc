Algoritmo asistente_universitario
	Definir opcion, totalMaterias, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id, creditos, semestre Como Entero
	Definir nota Como Real
	Definir materia, codigo, profesor, horario, estado, observacion Como Cadena
	Dimension id[100]
	Dimension materia[100]
	Dimension codigo[100]
	Dimension profesor[100]
	Dimension creditos[100]
	Dimension semestre[100]
	Dimension horario[100]
	Dimension nota[100]
	Dimension estado[100]
	Dimension observacion[100]
	totalMaterias <- 0
	siguienteID <- 1
	//--------------------------------------------//
	//--|menu_principal_asistente_universitario|--//
	//--------------------------------------------//
	Repetir
		Escribir "menu principal asistente universitario"
		Escribir "1) registrar materia"
		Escribir "2) editar materia"
		Escribir "3) eliminar materia"
		Escribir "4) buscar materia"
		Escribir "5) listar materias"
		Escribir "6) ver detalles de la materia"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_materia|--//
			//-----------------------//
			1:
				Escribir "registrar materia"
				Si totalMaterias >= 100 Entonces
					Escribir "no se pueden registrar mas materias."
				SiNo
					id[totalMaterias + 1] <- siguienteID
					siguienteID <- siguienteID + 1
					Escribir "ingrese el nombre de la materia:"
					Leer materia[totalMaterias + 1]
					Escribir "ingrese el codigo de la materia:"
					Leer codigo[totalMaterias + 1]
					Escribir "ingrese el nombre del profesor:"
					Leer profesor[totalMaterias + 1]
					Escribir "ingrese la cantidad de creditos:"
					Leer creditos[totalMaterias + 1]
					Escribir "ingrese el semestre:"
					Leer semestre[totalMaterias + 1]
					Escribir "ingrese el horario:"
					Leer horario[totalMaterias + 1]
					Escribir "ingrese la nota:"
					Leer nota[totalMaterias + 1]
					Escribir "ingrese el estado (pendiente/en curso/aprobada/reprobada):"
					Leer estado[totalMaterias + 1]
					Escribir "ingrese una observacion:"
					Leer observacion[totalMaterias + 1]
					totalMaterias <- totalMaterias + 1
					Escribir "materia registrada correctamente."
				FinSi
			//--------------------//
			//--|editar_materia|--//
			//--------------------//
			2:
				Escribir "editar materia"
				Si totalMaterias = 0 Entonces
					Escribir "no hay materias registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalMaterias Hacer
						Escribir id[i]," | ",materia[i]," | ",codigo[i]," | ",profesor[i]," | ",creditos[i]," | ",semestre[i]," | ",horario[i]," | ",nota[i]," | ",estado[i]," | ",observacion[i]
					FinPara
					Escribir "ingrese el id de la materia:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMaterias Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "nuevo nombre de la materia:"
							Leer materia[i]
							Escribir "nuevo codigo de la materia:"
							Leer codigo[i]
							Escribir "nuevo profesor:"
							Leer profesor[i]
							Escribir "nueva cantidad de creditos:"
							Leer creditos[i]
							Escribir "nuevo semestre:"
							Leer semestre[i]
							Escribir "nuevo horario:"
							Leer horario[i]
							Escribir "nueva nota:"
							Leer nota[i]
							Escribir "nuevo estado (pendiente/en curso/aprobada/reprobada):"
							Leer estado[i]
							Escribir "nueva observacion:"
							Leer observacion[i]
							Escribir "materia editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una materia con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_materia|--//
			//----------------------//
			3:
				Escribir "eliminar materia"
				Si totalMaterias = 0 Entonces
					Escribir "no hay materias registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalMaterias Hacer
						Escribir id[i]," | ",materia[i]," | ",codigo[i]," | ",profesor[i]," | ",creditos[i]," | ",semestre[i]," | ",horario[i]," | ",nota[i]," | ",estado[i]," | ",observacion[i]
					FinPara
					Escribir "ingrese el id de la materia:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMaterias Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalMaterias Entonces
								Para j <- i Hasta totalMaterias - 1 Hacer
									id[j] <- id[j + 1]
									materia[j] <- materia[j + 1]
									codigo[j] <- codigo[j + 1]
									profesor[j] <- profesor[j + 1]
									creditos[j] <- creditos[j + 1]
									semestre[j] <- semestre[j + 1]
									horario[j] <- horario[j + 1]
									nota[j] <- nota[j + 1]
									estado[j] <- estado[j + 1]
									observacion[j] <- observacion[j + 1]
								FinPara
								
							FinSi
							totalMaterias <- totalMaterias - 1
							Escribir "materia eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una materia con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_materia|--//
			//--------------------//
			4:
				Escribir "buscar materia"
				Si totalMaterias = 0 Entonces
					Escribir "no hay materias registradas."
				SiNo
					Escribir "ingrese el id de la materia:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMaterias Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir "id: ",id[i]
							Escribir "materia: ",materia[i]
							Escribir "codigo: ",codigo[i]
							Escribir "profesor: ",profesor[i]
							Escribir "creditos: ",creditos[i]
							Escribir "semestre: ",semestre[i]
							Escribir "horario: ",horario[i]
							Escribir "nota: ",nota[i]
							Escribir "estado: ",estado[i]
							Escribir "observacion: ",observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una materia con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_materias|--//
			//---------------------//
			5:
				Escribir "listar materias"
				Si totalMaterias = 0 Entonces
					Escribir "no hay materias registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalMaterias Hacer
						Escribir id[i]," | ",materia[i]," | ",codigo[i]," | ",profesor[i]," | ",creditos[i]," | ",semestre[i]," | ",horario[i]," | ",nota[i]," | ",estado[i]," | ",observacion[i]
					FinPara
				FinSi
			//--------------------------//
			//--|ver_detalles_materia|--//
			//--------------------------//
			6:
				Escribir "ver detalles de la materia"
				Si totalMaterias = 0 Entonces
					Escribir "no hay materias registradas."
				SiNo
					Escribir "ingrese el id de la materia:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMaterias Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la materia"
							Escribir "id: ",id[i]
							Escribir "materia: ",materia[i]
							Escribir "codigo: ",codigo[i]
							Escribir "profesor: ",profesor[i]
							Escribir "creditos: ",creditos[i]
							Escribir "semestre: ",semestre[i]
							Escribir "horario: ",horario[i]
							Escribir "nota: ",nota[i]
							Escribir "estado: ",estado[i]
							Escribir "observacion: ",observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una materia con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalMaterias = 0 Entonces
					Escribir "no hay materias registradas."
				SiNo
					totalPendientes <- 0
					totalEnCurso <- 0
					totalAprobadas <- 0
					totalReprobadas <- 0
					totalCreditos <- 0
					sumaNotas <- 0
					Para i <- 1 Hasta totalMaterias Hacer
						totalCreditos <- totalCreditos + creditos[i]
						sumaNotas <- sumaNotas + nota[i]
						Si estado[i] = "pendiente" Entonces
							totalPendientes <- totalPendientes + 1
						FinSi
						Si estado[i] = "en curso" Entonces
							totalEnCurso <- totalEnCurso + 1
						FinSi
						Si estado[i] = "aprobada" Entonces
							totalAprobadas <- totalAprobadas + 1
						FinSi
						Si estado[i] = "reprobada" Entonces
							totalReprobadas <- totalReprobadas + 1
						FinSi
					FinPara
					promedioNotas <- sumaNotas / totalMaterias
					Escribir "estadisticas universitarias"
					Escribir "total de materias: ",totalMaterias
					Escribir "total de creditos: ",totalCreditos
					Escribir "promedio general de notas: ",promedioNotas
					Escribir "materias pendientes: ",totalPendientes
					Escribir "materias en curso: ",totalEnCurso
					Escribir "materias aprobadas: ",totalAprobadas
					Escribir "materias reprobadas: ",totalReprobadas
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asistente universitario."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo