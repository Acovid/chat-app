This is a chatroom app. You can use it to chat with many people simultaneously.

The app was written in node.js for learning and demo purposes and runs in memory. It uses Google Maps to display a location. It does not use a database or other persistent storage.

## Usage
Start using the app this way:
1. Open the app URL in yor browser. If your app doesn't have the URL yet, see the sections below about deployment. 
2. Write your name in the field **Display name**. Any name work, you don't have to register first.
3. Write the name of chatroom you are joining in field **Room**. Any room name works, rooms are not defined upfront. However, in order to chat with other people, they must login to the same room as you.
4. Press enter. 
5. You are in the chatroom. On your screen you see:
   * Top left: name of your chatroom
   * Left: names of people in your chatroom
   * Middle: content of your chat
   * Bottom middle: input field for your message
   * Bottom right: button to share your location with all participants. This will send them the link to your location in Google Maps.

## Quick deployment to cloud using IBM Cloud

1. Login to IBM Cloud with command `ibmcloud login`.
   * Provide your IBM Cloud account data: email and password.
   * Select the region, for example **eu-de** for Germany
2. Connect to your IBM Cloud organisation and work space by typing in `ibmcloud target -o <your_organization -s <your_space>` 
3. Edit the file **manifest.yml** to contain a unique application name, for example chat-app-yourname
4. Deploy the app with this command `ibmcloud app push`. The deployment data will be read from the manifest.yml.

## Deploy the app as a Docker container

You can get the Docker image with this app in one of two ways:
   *  From Docker hub, pull the image **acovid/chat-app**
   *  Build your own image using Dockerfile 

1. Building your own Docker image:
   * download this git repo
   * in your terminal/command line, unzip the repo
   * change directory to directory with your repo
   * delete directory node_modules, you don't need it in your image
   * type in: `docker build -t <your_app_name>:1 .` (Do not forget the dot at the end). 

2. Run the container with your app locally: `docker run -d -p <your_port>:3000 chat-app:1`

3. In your web browser, access the app at **localhost:<your_port>**

