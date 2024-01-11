# How to launch your Python Application on PEPPER

#### Build your python application
Follow the [instructions](http://doc.aldebaran.com/2-4/dev/tutos/create_a_new_service.html#dev-tuto-create-service) to create python/c++ package until **step Four**.\n
In step four, if you are using Python only, DO NOT execute the command ```qisrc add .```

#### Creat application package
Build the package with the following command:
```
 qipkg make-package pml_name.pml 
```
If there is an error related to no robot specification, you can try specifying your robot in the  'manifest.xml' or force the package creation:
```
qipkg make-package pml_name.pml --force
```

#### Deploy your package to Pepper
Connect the robot with your labtop, and configuring it in new terminal by executing the command line:
```
ssh -X nao@yourPepperIP
```

Deploy the package in terminal you made the package, using the following command:
```
qipkg deploy-package pkg_name.pkg --url nao@yournaoIP 
```
Enter your robot's password when prompted.

###### Handle Syntax error
Ignore this error. \n
The syntax error occured in __init__.py, line 92 is related to the Pepper sdk installed on your laptop, which may have a path like (path/to/pynaoqi xxx/lib/pyhon2.7/site-packages/qi/__init__.py). Correct the error in line 92 by changing 'async' to 'Async'. However, fixing this issue might cause the package not to appear on the robot. 

Disregard the systax error, and check if the package is on your robot by executing ```ls``` in robot's shell terminal.

#### Install your package on Pepper
Use the following command in the robot's ssh terminal:
 ```
qicli call PackageManager.install pkg_name.pkg
```
The command should return true.

#### Launch your application
1.Access your application in the Chrographe suite by connencting to the robot or 
2.If you have the app launcher on your robot tablet, you can find your application in the app list.

For installing or edting the app launcher refer to the app-launcher.md
