# Not able to install go lang plugin on intellij 2017.2 community edition
My intellij idea CE has following name and version:

IntelliJ IDEA 2017.2.6
Build #IC-172.4574.11, built on November 13, 2017
JRE: 1.8.0_152-release-915-b12 x86_64
JVM: OpenJDK 64-Bit Server VM by JetBrains s.r.o
Mac OS X 10.14.2

and when, I tried to install go [latest plugin](https://plugins.jetbrains.com/plugin/5047-go-language-golang-org-support-plugin ) to my current intellij. 
then it complains that, "this plugin is not compatible with your version." 
Hence, below script will help to overcome incompatibiity issue with intellij CE after 2017.2. 

# What is needed:   

  - Download [Go-0.13.1947.zip](https://plugins.jetbrains.com/plugin/5047-go-language-golang-org-support-plugin) or latest version.
  - Run go_compatible.sh which will simply create Go.zip file 
  - Install this Go.zip as "Install plugins from Disk option"

Hope this will help.
