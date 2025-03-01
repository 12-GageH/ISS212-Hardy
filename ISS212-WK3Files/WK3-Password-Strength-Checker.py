#ISS 212 CS Scripting - WK 3 - Assignment 3 Password Strength Checker Script
#Reference: ISS 212 - WK3-pwstrcheck.py
#imports regular expressions
import re

def check_password_strength(password):
    #This section of code checks the user's inputted password, and determines if it fits under the defined restrictions
    if len(password) < 8:
        return "Weak Password: Password is too short! - Below eight characters"
    if not re.search(r"[A-Z]", password):
        return "Weak Password: Must include atleast one uppercase letter"
    if not re.search(r"[a-z]", password):
        return "Weak Password: Must include atleast one lowercase letter"
    if not re.search(r"[0-9]", password):
        return "Weak Password: Must include atleast one number"
    if not re.search(r"[!@#$%^&*()-_+=]", password):
        return "Weak Password: Must include atleast one special character"
    #If password fits all requirements, password is accepted
    return "Strong Password!"

#Prompts user for input of a password and prints response
password = input("Enter a password: ")
print(check_password_strength(password))


