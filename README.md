<img alt="GitHub License" src="https://img.shields.io/github/license/emiraleph/Block-Windows-Telemery-With-Firewall"> 

## Supported and tested on: Windows 10 and Windows 11 🪟

### ENGLISH:

# Block Windows Telemetry with Firewall Rules!

#### 🛡️ Description:
This script provides an effective solution to enhance user privacy by blocking Windows telemetry through the application of customized firewall rules. Aimed at empowering users with greater control over their system's data sharing capabilities, this tool mitigates unwanted telemetry transmissions.

#### Features:
- **No external programs required.**
- **Effortless Blocking:** Achieve a comprehensive block on Windows telemetry effortlessly with a straightforward script execution.
- **Custom Firewall Rules:** The script implements custom firewall rules designed to specifically target and prevent Windows telemetry data transmissions.
- **Privacy Enhancement:** Designed to bolster user privacy, this script curtails data-sharing functionalities embedded within the Windows (10 & 11) operating system.

#### ✨ Usage Instructions:

1. **_Download the two files hosted at:_** `~/script/`
   - The two files you download must be in the same folder.
   - Make sure not to change the PowerShell file name (`rules.ps1`).

2. **_Run the Script:_**
   - Run the `launcher.cmd` **_AS ADMINISTRATOR_** which will open a command console with details of the actions you can do.
   - _It is **NOT** necessary to manually execute `rules.ps1` since it is already done by the launcher with the correct permissions._
   - Select `Y` to continue.
   - It will open a PowerShell terminal which will add all the rules.

3. **_Close all script windows:_**
   - Once finished, close PowerShell and CMD, and you are all set.
   - No reboot is necessary; changes are applied immediately.

## How to reverse the changes?

   - Open the firewall and go to the `Advanced settings` section on the left.
   - In that section go to `OutBound rules` and use the `Action` filter (may need to stretch the window to see all the options).
   - When filtering you will see all the rules that start with `telemetry_` select all or the one you want to delete by pressing `shift + up or down arrows` to select multiple items.
   - **_MAKE SURE TO REMOVE ONLY THE RULES THAT HAVE BEEN CREATED WITH SCRIPT_**
   - Click on the delete button on the right, or `Supr / Delete` and confirm in the dialog box the deletion of the rule(s).

---

### SPANISH:

# Bloquear Telemetría de Windows con Reglas de Firewall

#### 🛡️ Descripción:
Este script proporciona una solución efectiva para mejorar la privacidad del usuario bloqueando la telemetría de Windows mediante la aplicación de reglas de firewall personalizadas. Con el objetivo de empoderar a los usuarios con un mayor control sobre las capacidades de intercambio de datos de su sistema, esta herramienta mitiga las transmisiones no deseadas de telemetría.

#### Características:
- **No se requieren programas externos.**
- **Bloqueo simple:** Logra un bloqueo de la telemetría de Windows de manera simple con este script.
- **Reglas de Firewall Personalizadas:** El script implementa reglas de firewall personalizadas diseñadas para apuntar y restringir las transmisiones de datos de telemetría de Windows de manera específica.
- **Mejora de Privacidad:** Diseñado para fortalecer la privacidad del usuario, este script reduce las funcionalidades de intercambio de datos integradas en el sistema operativo Windows (10 y 11).

#### ✨ ¿Cómo usar?:

1. **_Descarga los dos archivos alojados en:_** `~/script/`
   - Asegúrate de tener descargados los archivos en la misma carpeta/directorio.
   - De ninguna manera debes cambiar el nombre del archivo de PowerShell (`rules.ps1`).

2. **_Ejecuta el Script:_**
   - Ejecuta `launcher.cmd` **_COMO ADMINISTRADOR_** lo cual abrirá un CMD con detalles de las acciones que puedes realizar.
   - _**NO** es necesario ejecutar manualmente `rules.ps1` puesto que ya lo hace el launcher con los permisos correctos_
   - Selecciona `Y` para continuar.
   - Se abrirá un terminal de PowerShell que añadirá todas las reglas.

3. **_Cierra todas las ventanas del script:_**
   - Una vez finalizado, cierra PowerShell y CMD, y estarás listo.
   - No es necesario reiniciar; los cambios se aplican de inmediato.

  ## ¿Cómo revertir los cambios?
  - Abre el firewall y dirigete a la sección de la izquierda `Ajustes avanzados`
  - En dicha sección dirigete a `OutBound rules` y usa el filtro de `Action` (Puede que sea necesario estirar la ventana para ver todas las opciones).
  - Al filtrar verás todas las reglas que inician con `telemetry_` selecciona todas o la que desees eliminar presionando `shift + las flechas arriba o abajo` para seleccionar varios items.
  - **_ASEGURATE DE ELIMINAR SOLAMENTE LAS RULES QUE HAN SIDO CREADAS CON EL SCRIPT_**
  - Presiona en el boton eliminar de la derecha, o `Suprimir` y confirma en el cuadro de dialogo la eliminación de la(s) relga(s).

---

<h3>Project Distribution:</h3> This project is open-source and can be freely distributed and modified without any restrictions.
<h3>Distribución del Proyecto:</h3> Este proyecto es de código abierto y puede ser distribuido y modificado libremente sin restricciones.
