# Pepper App Launcher

This app launcher is a service designed to facilitate easy access to applications and settings on Pepper robots, particularly when the Ethernet is not connected upon booting. It was developed based on the app-launcher framework from SoftBank Robotics Labs, with modifications to suit the needs of UTS and the Robotics Institute. 


## Features

<img src="https://github.com/Robofield/Pepper/assets/73512536/8a2e7cbd-5c9c-471c-a739-f2c9b2a23a0b" width="300" height="auto"> <img src="https://github.com/Robofield/Pepper/assets/73512536/9015b3be-5e6e-4e18-b959-94e116618468" width="300" height="auto">
* **Volume Adjustment**: Adjust the volme settings directly from the launcher interface.
* **Power Button**: Easily power off or restart the pepper robot with this button.
* **All Apps List**: Access a comprehensive list of all installed applications on the Pepper.
* **Page Buttons**: These button allow uers to cutomize the launcher interface by adding or removing desired applications to focus on.

## Installation
   To install this app-launcher, follow the same procedure as installing any application:
   1. Connect the Pepper to you laptop via Ethernet.
   2. Open Choregraphe and configure your robot.
   3. Open the app-launcher project and run `package and install current project to the robot`.

   This will automatically execute the service. If this app-launcher service is not executed, it may be due to the Pepper already running other services or experiencing conflicts. In such          cases, diagnose for any conflicting services using Pepper shell.
  
## Customization

   ### Edit page buttons
   To edit the buttons displayed on the launcher interface, you can modify the ["defaultPreferences.json"](https://github.com/Robofield/Pepper/tree/main/app-launcher-uts/App-Launcher/lib) in       lib directory. Each button's information is represented by key-value pairs in this file. You can change the value of "title" key to set the desired button name, and modify the value of          "apps" key to display the applications icon on the page.

   Here's a step-by-step guide:

   1. Open the "defaultPreference.json" in the lib folder.
   2. Modify, add, or remove the value of "title" to your desired button name.
   3. Modify, add, or remove the value of "apps" to uuid of the applications which you want to deiplay on that page. You can find the uuid of the application from "manifest.xml" or edit the          property from Choregraphe.
   4. Save the changes and reinstall the service.

   Once you have made the modifications and saved them, you will need to reinstall the service through Choregraphe. If you do not know how to install it, please refer to **Installation**.

   ### Edit page design
   To change the page design such as background image and fonts, you can modify the HTML and CSS, as well as adjust functions in the main.js file. Here's an example of how you can do it:

   If you want to change the design of main button, you can modify`dynamic_pageHome_app_button>div` style in html/css/main.css.
   

From this, 

<img src="https://github.com/Robofield/Pepper/assets/73512536/229e234b-9538-4f76-b7e1-7ba77148d1b1" width="300" height="auto"> <img src="https://github.com/Robofield/Pepper/assets/73512536/0bfd8170-cb33-4ce6-92a0-3094e25c791e" height="300" width="auto">


To this, 

<img src="https://github.com/Robofield/Pepper/assets/73512536/60b85235-83d6-455d-aec6-66f3d7b7f544" width="300" height="auto"> <img src="https://github.com/Robofield/Pepper/assets/73512536/ade6ca25-e74d-4827-ae9d-c4f7972f87e3" height="300" width="auto">

### Contibutors 
- SoftBank Robotics Labs
- Mina Jang (minazzangya@gmail.com)
  
##### COPYRIGHT and LICENSE 
* The original app-launcher is provided by SoftBank Robotics Labs and is subject to their copyright.
Please note that while this version has been customized for use with UTS, the original work remains subject to SoftBank Robotics Labs' copyright. Refer to the [COPYRIGHT](https://github.com/Robofield/Pepper/tree/main/app-launcher-uts/COPYRIGHT) folder or [their repository](https://github.com/softbankrobotics-labs/app-launcher, "SoftBankRobotics-labs app-launcher repository") for more details. 
