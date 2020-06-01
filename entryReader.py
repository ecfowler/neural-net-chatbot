import nltk

def enterClicked(text):
    parseEnteredText(text)

def parseEnteredText(text):
    tokens = nltk.tokenize(text)
    words = [w.lower() for w in tokens]