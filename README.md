# ChatGPT Images - R Shiny
R Shiny Application/Package to create and manage images using ChatGPT.
<br /><br />

![R](https://img.shields.io/badge/-4.2.2-blue?style=flat&labelColor=white&logo=r&logoColor=blue)&nbsp;&nbsp;
[![Shiny](https://img.shields.io/badge/Shiny-1.7.4-blue?style=flat&labelColor=white&logo=RStudio&logoColor=blue)](https://shiny.rstudio.com)&nbsp;&nbsp;
![](https://img.shields.io/badge/Maintained%3F-yes-green.svg)&nbsp;&nbsp;

<!-- DESCRIPTION -->
## 1. Description
This application provides a simple web interface using Shiny to dynamically create images using OpenAI's ChatGPT models.

<!-- GETTING STARTED -->
## 2. Getting Started
### 2.1 Dependencies
- Requires an OpenAI API Key (create an account and get API Key at https://chat.openai.com)
- Requires the following packages:
    - shiny (>= 1.7.4)
    - golem (>= 0.3.5)
    - shinydashboard (>= 0.7.2)
    - openai (>= 0.3.0)
    - config (>= 0.3.1)
    - testthat (>= 3.0.0)
    
<!-- INSTRUCTIONS -->
## 3. Instructions

The application has 4 basic screens to navigate - *Instructions*, *Create Image*, *Image Gallery*, and *Settings*.
<br /><br />
<img src=".github/assets/images/tabs.png" width=30% height=30%>
<br /><br />

### 3.1 Instructions Page
The instructions page is the default page that is shown when the application is run. It provides a complte run down of how to use the application.
<br />

<!-- ![ChatGPT Images UI](.github/assets/images/instructions.png?raw=true "ChatGPT Images UI") -->
<img src=".github/assets/images/instructions.png" width=100% height=100%>
<br /><br />

### 3.2 Settings: - Enter API Key
In order to use this application a user must have an API Key from OpenAI. This can be done by creating an account from the following link: https://chat.openai.com. Once a user has got their API Key it can be added into the app and saved.
<br />

<!-- ![Enter API Key](.github/assets/images/settings_api_key_saved.png?raw=true "Enter API Key") -->
<img src=".github/assets/images/settings_api_key_saved.png" width=100% height=100%>
<br />
**Please Note:** Depending on how this application is deployed, the API Keys will be kept in persistant storage. That means they will persist until overwritten, even after shutting down the app. 
<br /><br />

### 3.3 Create Image
In the text box, type a description of the image you want ChatGPT to create.
The generator can create images in 3 different sizes: 
- 256x256
- 512x512
- 1024x1024. <br />

This can be selected in the dropdown box.
Then click the *Create Image* button. In 2-3 seconds the image will appear.
<br />

<!-- ![Create Image Kangaroo](.github/assets/images/create_image_kangaroo.png?raw=true "Create Image Kangaroo") -->
<img src=".github/assets/images/create_image_kangaroo.png" width=100% height=100%>
<br /><br />

