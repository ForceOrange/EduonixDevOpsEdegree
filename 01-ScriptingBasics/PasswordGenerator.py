#!/usr/bin/python

import random

passordlength = 10
allcharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789^*+#<>?=()/&%$"
password = ""

def generate(passordlength):                                     # Function with return example
    '''
    DOCSTRING: This is the information about the function.
    INPUT : 1 integer password lenght/complexity
    OUTPUT : returns a new password (string)
    '''
    newpassword = ""

    index = 0
    while index < passordlength:
        index = index + 1
        newpassword = newpassword + random.choice(allcharacters)

    return newpassword
    
numbers = ("0", "1", "2" , "3", "4", "5" , "6", "7", "8" , "9") #Tupple collection which is ordered and unchangeable
#print(numbers)
lowercaseletters = ("a", "b", "c" , "d", "e", "f" , "g", "h", "i" , "j" , "k", "l", "m" , "n", "o", "p" , "q", "r", "s" , "t", "u", "v", "w" , "x", "y", "z") #Tupple collection which is ordered and unchangeable
#print(lowercaseletters)

uppercaseletters = ()                                           # Tupple collection which is ordered and unchangeable
uppercaseletterslist = []                                       # empty list
uppercaseletter = ""
for letter in lowercaseletters:
    #print (letter)
    uppercaseletter = letter.upper()
    #print (uppercaseletter)
    uppercaseletterslist.append(uppercaseletter)
uppercaseletters = tuple(uppercaseletterslist)
#print(uppercaseletters)

symbols = ("1", "\"", "§" , "$", "%", "&" , "/", "(", ")" , "=" , "?", "`", "*" , "+", "#", "_" , "-", ".", "<" , ">") #Tupple collection which is ordered and unchangeable
#print(symbols)

entry = input('Enter Password lenght (10 characters is default): ')
if entry == "":
    passordlength = 10
else: 
    passordlength =int(entry)  # cast Str to Int

password = generate(passordlength)

print(password)  