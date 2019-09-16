!classDefinition: #OOStackTest category: #'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test02PushAddElementsToTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'Something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:31'!
test03PopRemovesElementsFromTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'Something'.
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/8/2012 08:20'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	stack push: pushedObject.
	
	self assert: stack pop = pushedObject! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:33'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'First'.
	secondPushedObject := 'Second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: stack pop = secondPushedObject.
	self assert: stack pop = firstPushedObject.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:35'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	
	stack push: pushedObject.
	
	self assert: stack top = pushedObject.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:36'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	
	stack push: pushedObject.
	
	self assert: stack size = 1.
	stack top.
	self assert: stack size = 1.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:26'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:36'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'Something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:44'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !


!classDefinition: #SentenceFinderByPrefixTest category: #'Stack-Exercise'!
TestCase subclass: #SentenceFinderByPrefixTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefixTest methodsFor: 'comparing' stamp: 'nsoberon 9/15/2019 22:26:41'!
aCollection: aCollection isEqualTo: anotherCollection

	| index areEqual anotherCollectionElement |

	index := 1.
	areEqual := true.
	areEqual and: aCollection size = anotherCollection size.
	aCollection do: [
		:el |
		anotherCollectionElement := anotherCollection at: index.
		areEqual and: (el = anotherCollectionElement).
		index := index + 1.
	].
	
	^ areEqual.! !

!SentenceFinderByPrefixTest methodsFor: 'comparing' stamp: 'nsoberon 9/15/2019 22:26:36'!
aStack: aStack isEqualTo: anotherStack

	| areEqual stackElement anotherStackElement |

	areEqual := true.
	areEqual and: aStack size = anotherStack size.
	[aStack size > 0] whileTrue: [
		stackElement := aStack pop.
		anotherStackElement := anotherStack pop.	
		areEqual and: (stackElement = anotherStackElement).
	].

	^ areEqual.! !


!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'nsoberon 9/15/2019 21:54:07'!
test01FindShouldNotReturnSentencesIfStackIsEmpty

	| sentencesMatchingPrefix |
	
	sentencesMatchingPrefix := (SentenceFinderByPrefix new usingStack: OOStack new) find: 'prefix'.
	
	self assert: sentencesMatchingPrefix isEmpty.
! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'nsoberon 9/15/2019 22:27:40'!
test02FindShouldReturnSentencesIfStackHasSentencesWithPrefix

	| stack sentencesShouldMatchPrefix sentencesMatchingPrefix |

	stack := OOStack new.
	stack push: 'This is Sparta'.
	stack push: 'Sparta is great'.
	stack push: 'Sparta has strong warriors'.
	stack push: 'sparta is the capital of Sparta'.
	stack push: 'Sparta this is, should be said if master Yoda was speaking'.
	
	sentencesShouldMatchPrefix := OrderedCollection with: 'Sparta this is, should be said if master Yoda was speaking' with: 'Sparta has strong warriors' with: 'Sparta is great'.
	
	sentencesMatchingPrefix := (SentenceFinderByPrefix new usingStack: stack) find: 'Sparta'.
	
	self assert: (self aCollection: sentencesShouldMatchPrefix isEqualTo: sentencesMatchingPrefix).! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'nsoberon 9/15/2019 22:03:23'!
test03FindShouldNotReturnSentencesIfStackHasSentencesWithPrefixUppercase

	| stack sentencesMatchingPrefix |
	stack := OOStack new.
	stack push: 'This is Sparta'.
	stack push: 'Sparta is great'.
	stack push: 'Sparta has strong warriors'.
	stack push: 'sparta is the capital of Sparta'.
	stack push: 'Sparta this is, should be said if master Yoda was speaking'.
	
	sentencesMatchingPrefix := (SentenceFinderByPrefix new usingStack: stack) find: 'SPARTA'.
	
	self assert: sentencesMatchingPrefix isEmpty.

! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'nsoberon 9/16/2019 11:24:46'!
test04PrefixShouldNotContainWhitespaces

	| sentenceFinder  |
	
	sentenceFinder := SentenceFinderByPrefix new usingStack: OOStack new.
	
	
	self
		should: [ sentenceFinder find: 's p a r t a' ]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: 'Prefix cannot contain whitespaces' ]
! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'nsoberon 9/16/2019 11:23:55'!
test05PrefixShouldNotBeEmpty

	| sentenceFinder  |
	
	sentenceFinder := SentenceFinderByPrefix new usingStack: OOStack new.
	
	
	self
		should: [ sentenceFinder find: '' ]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: 'Prefix cannot be empty' ]
		
! !

!SentenceFinderByPrefixTest methodsFor: 'testing' stamp: 'nsoberon 9/15/2019 22:28:21'!
test06StackShouldBeTheSameAfterFindPrefix

	| sentenceFinder  stack anotherStack |

	stack := OOStack new.
	stack push: 'This is Sparta'.
	stack push: 'Sparta is great'.
	stack push: 'Sparta has strong warriors'.
	stack push: 'sparta is the capital of Sparta'.
	stack push: 'Sparta this is, should be said if master Yoda was speaking'.

	anotherStack := OOStack new.
	anotherStack push: 'This is Sparta'.
	anotherStack push: 'Sparta is great'.
	anotherStack push: 'Sparta has strong warriors'.
	anotherStack push: 'sparta is the capital of Sparta'.
	anotherStack push: 'Sparta this is, should be said if master Yoda was speaking'.
	
	sentenceFinder := SentenceFinderByPrefix new usingStack: stack.
	sentenceFinder find: 'Sparta'.
	self assert: (self aStack: stack isEqualTo: anotherStack).
	! !


!classDefinition: #OOStack category: #'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: 'top'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStack methodsFor: 'initialization' stamp: 'nsoberon 9/15/2019 13:03:58'!
initialize

	top := EmptyNode new.! !


!OOStack methodsFor: 'stackOperations' stamp: 'nsoberon 9/15/2019 13:08:53'!
pop
	
	| actualTop |
	actualTop := top.
	top := actualTop next.
	^ actualTop value.! !

!OOStack methodsFor: 'stackOperations' stamp: 'nsoberon 9/15/2019 12:53:14'!
push: aString
	
	| actualTop |
	actualTop := top.
	top := ValueNode new initializeWith: aString andSize: actualTop size + 1.
	top setNext: actualTop.! !


!OOStack methodsFor: 'stackInformation' stamp: 'nsoberon 9/15/2019 13:08:48'!
isEmpty

	^ top isEmpty.! !

!OOStack methodsFor: 'stackInformation' stamp: 'nsoberon 9/15/2019 13:08:59'!
size

	^ top size.! !

!OOStack methodsFor: 'stackInformation' stamp: 'nsoberon 9/15/2019 13:09:02'!
top
	
	^ top value.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: #'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'HernanWilkinson 5/7/2012 11:51'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #OOStackNode category: #'Stack-Exercise'!
Object subclass: #OOStackNode
	instanceVariableNames: 'next size'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackNode methodsFor: 'initialization' stamp: 'nsoberon 9/15/2019 13:09:17'!
setNext: aNode
	
	self subclassResponsibility.! !


!OOStackNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:09:08'!
isEmpty
	
	self subclassResponsibility.! !

!OOStackNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:09:14'!
next
	
	self subclassResponsibility.! !

!OOStackNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:09:22'!
size
	
	self subclassResponsibility. ! !

!OOStackNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:09:56'!
value
	
	self subclassResponsibility.! !


!classDefinition: #EmptyNode category: #'Stack-Exercise'!
OOStackNode subclass: #EmptyNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!EmptyNode methodsFor: 'initialization' stamp: 'nsoberon 9/15/2019 13:05:00'!
setNext: aNode

	next := aNode! !


!EmptyNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:04:53'!
isEmpty

	^ true! !

!EmptyNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:04:56'!
next

	^ next! !

!EmptyNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:05:03'!
size

	^ 0! !

!EmptyNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:05:07'!
value

	^ OOStack error: OOStack stackEmptyErrorDescription! !


!classDefinition: #ValueNode category: #'Stack-Exercise'!
OOStackNode subclass: #ValueNode
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!ValueNode methodsFor: 'initialization' stamp: 'nsoberon 9/15/2019 12:44:48'!
initializeWith: aValue andSize: aSize
	
	value := aValue.
	size := aSize.! !

!ValueNode methodsFor: 'initialization' stamp: 'nsoberon 9/15/2019 13:05:25'!
setNext: aNode

	next := aNode! !


!ValueNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 12:18:14'!
isEmpty
	
	^ false! !

!ValueNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:05:22'!
next

	^ next! !

!ValueNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:05:32'!
size

	^ size! !

!ValueNode methodsFor: 'nodeInformation' stamp: 'nsoberon 9/15/2019 13:05:35'!
value

	^ value! !


!classDefinition: #SentenceFinderByPrefix category: #'Stack-Exercise'!
Object subclass: #SentenceFinderByPrefix
	instanceVariableNames: 'sentences'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefix methodsFor: 'comparing' stamp: 'nsoberon 9/16/2019 11:36:01'!
hasWhitespaces: aPrefix
	
	^ (aPrefix asOrderedCollection select: [:character | character = $ ]) size > 0.
! !

!SentenceFinderByPrefix methodsFor: 'comparing' stamp: 'nsoberon 9/15/2019 21:24:54'!
isPrefix: aPrefix of: aString

	| prefixOfString |
	prefixOfString := aString copyFrom: 1 to: aPrefix size.
	^ aPrefix = prefixOfString.! !


!SentenceFinderByPrefix methodsFor: 'initialization' stamp: 'nsoberon 9/15/2019 19:52:56'!
usingStack: aStack

	sentences := aStack.
	^ self! !


!SentenceFinderByPrefix methodsFor: 'errorMessages' stamp: 'nsoberon 9/16/2019 11:37:34'!
prefixCannotBeEmptyErrorMessage

	^'Prefix cannot be empty'.! !

!SentenceFinderByPrefix methodsFor: 'errorMessages' stamp: 'nsoberon 9/16/2019 11:38:00'!
prefixCannotContainWhitespaces

	^ 'Prefix cannot contain whitespaces'.! !


!SentenceFinderByPrefix methodsFor: 'sentenceFinderByPrefixInformation' stamp: 'nsoberon 9/15/2019 22:06:00'!
sentences
	
	^ sentences.! !


!SentenceFinderByPrefix methodsFor: 'sentenceFinderByPrefixOperations' stamp: 'nsoberon 9/16/2019 11:38:18'!
find: aPrefix
	| sentencesMatchingPrefix sentencesList sentencesStack |
	
	aPrefix isEmpty ifTrue: [self class error: self prefixCannotBeEmptyErrorMessage].
	(self hasWhitespaces: aPrefix) ifTrue: [self class error: self prefixCannotContainWhitespaces].
	
	sentencesList := OrderedCollection new.
	sentencesStack := sentences.
	[sentences size > 0] whileTrue: [
		sentencesList addFirst: sentencesStack pop.
	].
	sentencesMatchingPrefix := sentencesList select: [:sentence | self isPrefix: aPrefix of: sentence].
	sentencesList do: [:sentence | sentences push: sentence].

	^ sentencesMatchingPrefix.! !
