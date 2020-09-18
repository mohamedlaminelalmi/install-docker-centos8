# Deploy Docker on Centos System
Executing this bash script allows you to easly install Docker on your maching runing Centos system.

## Requirments
* Machine runing on Centos System
* Root Access

## How to run?
1. Clone this repository on your machine.
2. Open your terminal then make the file **docker-install.sh** executable by running the following command:
    ```
    sudo chmod +x /path/to/file/docker-install-sh
    ```
3. Run the installation script by running the following command on your terminal:
    ```
    ./path/to/file/docker-install.sh
    ```
4. Enjoy playing with docker!

## Handle errors
* If you face such error `/bin/bash: bad interpreter: No such file or directory`, NO PANIC! Just do the following:
    1. run the following command to check your **Your Bash Interpreter** path:
        ```
        # which bash
        ```
    2. Open **docker-install.sh** file using your favorit Editor (nano, vim...) and replace the first line:
        ```
        #!/bin/bash
        ```
        With:
        ```
        #!<Your Bash Interpreter Path>

## Refrences
* This script is authored by **[Mohamed Lamine Lalmi](https://www.linkedin.com/in/lalmi-mohamed-lamine/)** <mohamedlaminelalmi@gmail.com>
* This script is inspired from **[docker official documentation](https://docs.docker.com/engine/install/centos/)**
