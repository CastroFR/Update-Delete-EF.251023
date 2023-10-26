using Microsoft.Data.SqlClient;

using (var contextdb = new Context())
{
    //contextdb.Database.EnsureCreated();

    //bool continuar = true;
    //while (continuar)
    //{
    //    Console.WriteLine("Ingrese un Id: ");
    //    int Id = int.Parse(Console.ReadLine());

    //    Console.WriteLine("Ingrese sus Nombres: ");
    //    string Nombres = Console.ReadLine();

    //    Console.WriteLine("Ingrese sus Apellidos: ");
    //    string Apellidos = Console.ReadLine();

    //    Console.WriteLine("Ingrese su Edad: ");
    //    int Edad = int.Parse(Console.ReadLine());

    //    Console.WriteLine("Ingrese su Sexo: ");
    //    string Sexo = Console.ReadLine();

    //    var estudiante = new ESTUDIANTE
    //    {
    //        Id = Id,
    //        Nombres = Nombres,
    //        Apellidos = Apellidos,
    //        Edad = Edad,
    //        Sexo = Sexo
    //    };

    //    contextdb.Add(estudiante);
    //    contextdb.SaveChanges();

    //    Console.Write("¿Desea agregar otro registro? (S/N): ");
    //    string respuesta = Console.ReadLine();
    //    continuar = (respuesta.ToLower() == "s \n");

    //    Console.WriteLine("\nLOS DATOS REGISTRADOS SON LOS SIGUIENTES: \n");

    //    foreach (var s in contextdb.Estudiante)
    //    {
    //        Console.WriteLine("Id: " + s.Id + "\nNombres: " + s.Nombres + "\nApellidos: " + s.Apellidos + "\nEdad: " + s.Edad + "\nSexo: " + s.Sexo + "\n");
    //    }
    //}

    //ACTUALIZAR REGISTRO
    //var estudiante = contextdb.Estudiante.FirstOrDefault(p=>p.Id == 1);
    //if(estudiante!=null)
    //{
    //    estudiante.Apellidos = "Atributo modificado";
    //    contextdb.SaveChanges();
    //}

    //Muestra de datos de la tabla
    foreach (var s in contextdb.Estudiante)
    {
        Console.WriteLine("Id: " + s.Id + "\nNombres: " + s.Nombres + "\nApellidos: " + s.Apellidos + "\nEdad: " + s.Edad + "\nSexo: " + s.Sexo + "\n");
    }


    Console.WriteLine("\n***************************************************************************");
    Console.WriteLine("********************************** MENÚ *********************************** ");
    Console.WriteLine("***************************************************************************");
    Console.Write("\nSeleccione la opción que desee realizar: ");
    Console.WriteLine("\n1 - Modificar datos");
    Console.WriteLine("2 - Eliminar datos");
    string opcionSelect = Console.ReadLine();

    switch (opcionSelect)
    {
        case "1":
            Console.WriteLine("\nHa seleccionado Modificar.");
            Console.WriteLine("Ingrese el Id del registro que desea modificar: ");
            int Id = int.Parse(Console.ReadLine());
            var estudiante = contextdb.Estudiante.Find(Id);

            if (estudiante != null)
            {

                Console.WriteLine("\nQue atributo desea modificar: \nIngrese el numero correspondiente: \nNombres(1), Apellidos(2), Edad(3), Sexo(4)");
                string atributoModificado = Console.ReadLine();

                switch (atributoModificado)
                {
                    case "1":
                        Console.WriteLine("\nIntroduzca el nuevo Nombre: ");
                        estudiante.Nombres = Console.ReadLine();
                        Console.WriteLine("Nombre fué almacenado exitosamente ");
                        break;

                    case "2":
                        Console.WriteLine("\nIntroduzca el nuevo Apellido: ");
                        estudiante.Apellidos = Console.ReadLine();
                        Console.WriteLine("Apellido fué almacenado exitosamente ");
                        break;

                    case "3":
                        Console.WriteLine("\nIntroduzca la nueva Edad: ");
                        estudiante.Edad = int.Parse(Console.ReadLine());
                        Console.WriteLine("Edad fué almacenada exitosamente ");
                        break;

                    case "4":
                        Console.WriteLine("\nIntroduzca el nuevo Sexo: ");
                        estudiante.Sexo = Console.ReadLine();
                        Console.WriteLine("Sexo fué almacenado exitosamente ");
                        break;

                    default:
                        Console.WriteLine("\nAtributo no válido");
                        break;

                }
                contextdb.SaveChanges();

            }
            else
            {
                Console.WriteLine("\nEl Estudiante no ha sido encontrado");
            }
        break;

        case "2":
            Console.WriteLine("\nHa seleccionado Eliminar.");
            Console.Write("\nIntroduzca el Id del registro que desea eliminar: ");
            int id = int.Parse(Console.ReadLine());
            var Estudiante = contextdb.Estudiante.Find(id);

            if (Estudiante != null)
            {
                contextdb.Estudiante.Remove(Estudiante);
                contextdb.SaveChanges();
                Console.WriteLine("Estudiante eliminado exitosamente.");
            }
            else
            {
                Console.WriteLine("\nEstudiante no encontrado.");
            }
        break;

        default:
            Console.WriteLine("\nOpción no válida. Por favor, seleccione una opción válida.");
            break;
    }
}

