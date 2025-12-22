def waytoopalabra(word:str):
    tam=len(word)
    if tam > 10:
        print(f"{word[0]}{tam-2}{word[-1]}")
    else:
        print(word)
        
word="holamellamocarla"
waytoopalabra(word)
        
    