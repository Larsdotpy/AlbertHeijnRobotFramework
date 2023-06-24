# AlbertHeijn RobotFramework

`A testframework for AH (Albert Heijn) using Robotframework and Python.` 

![AlbertHeijnLogo](https://www.fbf-bff.be/wp-content/uploads/2021/10/Logo-Albert-Heijn.jpg)

**Languages**: Robotframework & Python

**Automators**: Selenium (***Web***), Requests (***API***)

*This framework was created as a learning project and has since grown to a large project with various testcases for web and API. Due to the nature of the webpage, the framework contains a lot of dutch words. This project was built with the following intention in mind: self development, building experience and as a showcase project for my resume.*


*API testing only contains GET requests due to the nature of the webpage and security measures.*

*Web testing for login testcases will all result in an error due to anti-bot protection with a captcha request. As of now there is no way to ignore this in tests if you are not part of their development team. Therefore I decided to leave the testcases in the framework, so that the logic behind the setup can be seen. Just remember that running them will result in an expected error.*


## Project setup

### Clone this repository
```
git clone https://github.com/Larsdotpy/AlbertHeijnRobotFramework.git
```
### Dependencies
Check if all the dependencies are still up-to-date. If not, some errors might occur and the framework will either fail or not be running smoothly. Remember to install the necesarry pip files if you don't have them installed yet.

## Test parameters 
Go to the root folder of the project.

**Run all tests**
```
robot .
```

**Chrome**
```
mvn test -Dbrowser=chrome -Dtest=RunTestWeb
```
**Firefox**
```
mvn test -Dbrowser=firefox -Dtest=RunTestWeb
```
**Android**
```
mvn test -Dbrowser=android -Dtest=RunTestMobile
```

etc.

