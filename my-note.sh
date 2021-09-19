############################################
# how to start new react project
############################################

npx create-react-app <app-directory-name>
cd <app-directory-name>
npm start

# this will start devlopment server by runing pre-build script
# will take case all the npm and express server setup work

# after devlopment server got start its keep listening for changes
# we can stop it by anytime by ctrl+C and again restart by 

npm start

# after starting npm all we need to do is carry on our development in following 4 files

# src/index.js
# public/index.html
# src/App.js
# src/index.css


tharindu@tharindu-ubuntu-desktop:~/git/react-complete-guide-code/my-code/my-first-react-app/src$ ls -ltr
total 8
-rw-rw-r-- 1 tharindu tharindu   0 Sep 18 15:44 index.css
-rw-rw-r-- 1 tharindu tharindu 168 Sep 18 16:01 index.js
-rw-rw-r-- 1 tharindu tharindu  94 Sep 18 16:09 App.js
tharindu@tharindu-ubuntu-desktop:~/git/react-complete-guide-code/my-code/my-first-react-app/src$ ^C

############################################
# src/index.js
############################################

# index.js is the main js file in this project
# code written in here will be the 1st to excute in the broswer
# it has <App /> jsx code (HTML in js) and its not understand by the browser
# later on this JSX code converted to broswer understanding format

import React from 'react';
import ReactDOM from 'react-dom';

# ReactDOM use to render these JSX components (HTML) in our App.js
# import App function from App.js file

import App from './App';
ReactDOM.render(<App />,document.getElementById('root'));

# above line in our index.js say to render the html parts in app.js to root div section in the 
# index.html in following public directory

############################################
# public/index.html
############################################

# simple html page of this react app (single page applicatio - SPA)

tharindu@tharindu-ubuntu-desktop:~/git/react-complete-guide-code/my-code/my-first-react-app/public$ ls -ltr
total 36
-rw-rw-r-- 1 tharindu tharindu   67 Sep 18 15:04 robots.txt
-rw-rw-r-- 1 tharindu tharindu  492 Sep 18 15:04 manifest.json
-rw-rw-r-- 1 tharindu tharindu 9664 Sep 18 15:04 logo512.png
-rw-rw-r-- 1 tharindu tharindu 5347 Sep 18 15:04 logo192.png
-rw-rw-r-- 1 tharindu tharindu 1721 Sep 18 15:04 index.html
-rw-rw-r-- 1 tharindu tharindu 3870 Sep 18 15:04 favicon.ico
tharindu@tharindu-ubuntu-desktop:~/git/react-complete-guide-code/my-code/my-first-react-app/public$ cat index.html 

# in this index.html file we can see html div with root id

  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
  </body>

############################################
# src/App.js
############################################

# App.js contain following js standard function call App and it is exported in to index.js
# normally this function retrun html (JSX) code
# when writting this JSX we need to follow on below rules

# in react all the customer build html component tags should be start in a captical letter
<App />

# Also they can be self closing tag
<App />
# equal to <App> </App>

# all the normal in-build html component tags start in simple letter as follow
<h1> <div> <section>

# this part called react component


function App() {
  return (
    <div>
      Hello..!!
    </div>
  );
}

export default App;

############################################
# src/components directory
############################################

# in react when we can create multiple components (js files) in the directory called components
# as a best practice we never create react components directly in App.js .
# by creating every components as separate js file in components directory and by exporting them
# we can repeativly use same components with less code in App.js
# also when we need to do a certian changes to the components no need to change everywhere
# just go to praticuler js file and make changes and everywhere that components being used in 
# App.js will be change

############################################
# components with dynamic content
############################################

# to add dynamic content to our components we have a conecept called props in react
# for that we need to add props in as follows
function Todo(props)

# after that using {} we can add js code parts inside this JSX codes as follows
# here whatever singel js statement we write inside of {} will be treated as js
{props.text}

# in App,js we can add some dynamic values for our components as follows
<Todo text='Learn React' />


# Todo.js 

function Todo(props) {
  return (
    <div className='card'>
      <h2>{props.text}</h2>
      <div className='actions'>
        <button className='btn'>Delete</button>
      </div>
    </div>
  );
}

export default Todo;

# App.js

import Todo from './components/Todo';

function App() {
  return (
    <div>
      <h1>My Todos</h1>
      <Todo text='Learn React' />
      <Todo text='Master React' />
      <Todo text='Explore the full React course' />
    </div>
  );
}

export default App;

############################################
# Handling Events
############################################

# Imperative and Declarative Programming
# in react we use imperative programming approch where we won't define whole flow of logic
# when handling events like we did in pure js

# as all the html code we run in react consider as react 
# components we can add argumnet that we can't add in html
# in react if we want to react for button click we can add 
# onClick attribute as follows

# value of this attribute should be a dynamic express {} that contain a function
# here we can write a arrow function but better to define function inside of Todo function separatly
# and execute inside {}
# here no need to excute the function using ()
# otherwise with page load this function will excuate
# for this button click if we want to show a another components we can add it different file

<button className='btn' onClick={deleteHandler}> Delete </button>

############################################
# State
############################################

# possible to use the concept called state to manipulate the
# content of the web page
# we can import react state as follows

import { useState } from 'react';

# this useState called react hook
# It allows you to use state and other React features without writing a class. 
# Hooks are the functions which "hook into" React state and 
#lifecycle features from function components.

# here we use js destructuring
const [modalIsOpen, setModalIsOpen] = useState(false);

# useState is a js object that has 2 keys called modalIsOpen and setModalIsOpen
# modalIsOpen can be true or flase

# setModalIsOpen is a function that can change the value of modalIsOpen
setModalIsOpen(true);


############################################
# Add routing
############################################

# to add react router install following npm package
npm install react-router-dom

