#Objective
The Main Objective in the task was divided as 
1) Rest API ( Get Operation ) 
2) UI Rendering of the videos
3) Playing video from the stream

#Steps of Achievement

1) Rest API       a.  Used Http Plugin in flutter to retrieve data from API
      b.  Used Youtube Api v3 for fetching Youtube channel videos

2) UI Rendering 
      a. Used ListViewBuilder to load the list of videos from api
      b. Used a Youtube styled tab bar for ui design      c. Added error states for Dev in progress states and also "false" clicks

3) Playing Video
      a. For playing video used a plugin called Youtube_video_player 
      b. Screen Supports both Landscape and portrait video viewing


#Architecture Used to build code :

1.Since the project is single time use . tried to reduce Clean Architecture by uncle bob. 
   But of the concepts are related with Clean Architecture

#CI/CD Platform used :

The code pushed into github is tagged to codemagic CI/CD . Presently Tests are not included in CI/CD since it is a single time use project

#Deliverables :

APK Link : https://drive.google.com/file/d/1vyhmrQW_U2j0uaq83vR_hbziVqfurGLQ/view?usp=sharing

IPA Link : Not generated an IPA due to apple store account issue

#Code Commit :
Github : https://github.com/Roopeshlr/task_quadrant

#Video Demo :
Link : https://drive.google.com/file/d/1eIQnAFJPN44K_RKIZlUy-cLB_8APG6Fr/view?usp=sharing
