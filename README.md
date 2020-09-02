# RHHS-Rocketathletics

This is a project that simulates rocketathletics.com.

Note that this is not a perfect simulation, and contains no source files.

It also does not use any original configuration files. Instead, it uses a
slightly modified template configuration file. Still, it's good enough for
what it was created for.

## Prerequisites

To use this project, you must have two things:

* Administrator privileges on your computer
* Knowledge of how to use the command line

## Usage

To run this project, follow these steps:

1. Download Docker.
    * Download Docker from here:
      * [Windows](https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe)
      * [Mac](https://download.docker.com/mac/stable/Docker.dmg)
    * Start Docker. This will require administrator privileges.
2. Run the run script.
    * If on Windows, in the command prompt run `run.bat`.
      * You may be able to double-click it in the Explorer, alternatively.
      * When you are finished, you must run this in the command prompt:
        * `docker.exe stop rhhsrocketathletics`
      * If you do not run that, the server will continue to run until you restart your computer.
    * If on Mac, in the command prompt `./run.bash`.
      * Hold Control and press C to stop. The server will close automatically.
      * If Control-C does not work, try the Cmd key instead of the Control key.

All files and folders inside of the `source` folder will be shown
by the server. You will have to create a folder named `source` inside
of the same folder this text file is in, and then add files inside.

The files inside `source` will be shown on the server. You can view the server
at `http://127.0.0.1:8080`. Without further configuration, nobody else can view
this server except for you.
