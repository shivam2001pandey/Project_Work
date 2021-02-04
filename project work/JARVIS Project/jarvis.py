# https://www.codewithharry.com/videos/python-tutorials-for-absolute-beginners-120

import pyttsx3  # it is a text-to-speech library.
import datetime
import speech_recognition as sr
# import wikipedia
import webbrowser
import os

# sapi5 is an speech api provided by microsoft to use inbuilt voices
engine = pyttsx3.init('sapi5')
voices = engine.getProperty('voices')
# print(voices[2].id)
# Voice id helps us to select different voices.
engine.setProperty('voice', voices[2].id)


# This function will take audio as an argument, and then, it will pronounce it.
def speak(audio):
    engine.say(audio)
    # Without this command, speech will not be audible to us.
    engine.runAndWait()

    # Congratulations! With this, our J.A.R.V.I.S. has its own voice, and it is ready to speak.


def wishMe():
    hour = int(datetime.datetime.now().hour)
    if(hour >= 0 and hour < 12):
        speak("Good Morning!")
    elif(hour >= 12 and hour < 18):
        speak("Good Afternoon!")
    else:
        speak("Good Evening!")

    speak("I am Zira sir ! How could i help you ?")

    #  With the help of the takeCommand() function, our A.I. assistant will be able to return a string output by taking microphone input from the user.


def takeCommand():
    # it takes microphone input from user and gives output as a string
    # Before defining the takeCommand() function, we need to install a module called speechRecognition.
    r = sr.Recognizer()
    with sr.Microphone() as source:
        print("Listening....")
        # r.pause_threshold=1
        r.adjust_for_ambient_noise(source)
        # r.energy_threshold = 500
        audio = r.listen(source)
        try:
            print("Recognising...")
            # google speech API #Using google for voice recognition
            query = r.recognize_google(audio, language="en-in")
            print(f"User said:{query}\n")

        except Exception as e:
            print("Say it again please")
            return "none"
    return query


if __name__ == "__main__":
    wishMe()
    # while True:
    query = takeCommand().lower()
    if 'open youtube' in query:
        webbrowser.open("youtube.com")
    # logic
    # if 'wikipedia' in query:
    #     speak('Searching wikipedia...')
    #     query=query.replace('wikipedia','')
    #     results=wikipedia.summary(query,sentences=2)
    #     speak('According to wikipedia')
    #     print(results)
    #     speak(results)
    elif 'open google' in query:
        # speak("Your request is")
        # speak(query)
        webbrowser.get(
            'C:/Program Files (x86)/Google/Chrome/Application/chrome.exe %s').open("google.com")
    elif 'open stackoverflow' in query:
        speak("Your request is")
        speak(query)
        webbrowser.get(
            'C:/Program Files (x86)/Google/Chrome/Application/chrome.exe %s').open("stackoverflow.com")
    elif 'open my github account' in query:
        speak("Your request is")
        speak(query)
        webbrowser.get(
            'C:/Program Files (x86)/Google/Chrome/Application/chrome.exe %s').open("github.com/shivam2001pandey")
    elif 'play a song' in query:
        speak("Your request is")
        speak(query)
        webbrowser.get('C:/Program Files (x86)/Google/Chrome/Application/chrome.exe %s').open(
            "music.youtube.com/watch?v=i4IWLCJmbfY&list=RDAMVMi4IWLCJmbfY")
    elif 'the time' in query:
        speak("Sir ,the current time is ")
        strTime = datetime.datetime.now().strftime("%H:%M:%S")
        speak(strTime)
    elif 'open code' in query:
        # speak("sir! I am opening vs code for you.")
        codePath = "D:\\Microsoft VS Code\\_\\Code.exe"
        os.startfile(codePath)

    elif 'reference of the code' in query:

        speak("Your request is")
        speak(query)
        webbrowser.get('C:/Program Files (x86)/Google/Chrome/Application/chrome.exe %s').open(
            "codewithharry.com/videos/python-tutorials-for-absolute-beginners-120")
