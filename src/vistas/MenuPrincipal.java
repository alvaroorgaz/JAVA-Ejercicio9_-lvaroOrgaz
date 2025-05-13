package vistas;

import java.util.Scanner;

public class MenuPrincipal {
    public void mostrar() {
        Scanner sc = new Scanner(System.in);
        int opcion;

        do {
            System.out.println("\n--- MENÚ PRINCIPAL ---");
            System.out.println("1. Gestión de Clientes");
            System.out.println("2. Gestión de Proveedores");
            System.out.println("3. Gestión de Artículos");
            System.out.println("4. Gestión de Facturas Recibidas");
            System.out.println("5. Gestión de Ventas");
            System.out.println("6. Informes de Ventas por Cliente");
            System.out.println("0. Salir");
            System.out.print("Seleccione una opción: ");

            opcion = sc.nextInt();
            sc.nextLine(); 

            switch (opcion) {
            case 1:
                new controlador.ClienteControlador().gestionar();
                break;

                case 2:
                    System.out.println(">> Entrando a gestión de proveedores...");
                    break;
                case 3:
                    System.out.println(">> Entrando a gestión de artículos...");
                    break;
                case 4:
                    System.out.println(">> Entrando a gestión de facturas recibidas...");
                    break;
                case 5:
                    System.out.println(">> Entrando a gestión de ventas...");
                    break;
                case 6:
                    System.out.println(">> Generando informe de ventas por cliente...");
                    break;
                case 0:
                    System.out.println("Saliendo del sistema. ¡Hasta pronto!");
                    break;
                default:
                    System.out.println("Opción no válida. Intente de nuevo.");
            }

        } while (opcion != 0);
    }
}

