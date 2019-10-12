!classDefinition: #MarsRoverTest category: #'MarsRover-Ejercicio'!
TestCase subclass: #MarsRoverTest
	instanceVariableNames: 'south east north west'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover-Ejercicio'!

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:02:35'!
test01NoMove

	|marsRover |
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: north.
	
	self assert: (marsRover execute: '') position equals: 0@0.
	self assert: marsRover direction equals: north.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:02:55'!
test02MoveForward

	|marsRover|
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: north.
	
	self assert: (marsRover execute: 'f') position equals: 0@1.
	self assert: marsRover direction equals: north.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:03:17'!
test03MoveBackward

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: north.
	
	self assert: (marsRover execute: 'b') position equals: 0@-1.
	self assert: marsRover direction equals: north.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:03:36'!
test04RotateRight

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: north.
	
	self assert: (marsRover execute: 'r') position equals: 0@0.
	self assert: marsRover direction equals: east.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:03:48'!
test05RotateLeft

	|marsRover|
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: north.
	
	self assert: (marsRover execute: 'l') position equals: 0@0.
	self assert: marsRover direction equals: west.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:04:06'!
test06MoveSouthForwardAndRotateRight

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: south.
	
	self assert: (marsRover execute: 'fffr') position equals: 0@-3.
	self assert: marsRover direction equals: west.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:04:22'!
test07MoveSouthBackwardAndRotateRight

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: south.
	
	self assert: (marsRover execute: 'bbbr') position equals: 0@3.
	self assert: marsRover direction equals: west.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:04:37'!
test08MoveSouthForwardAndRotateLeft

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: south.
	
	self assert: (marsRover execute: 'fffl') position equals: 0@-3.
	self assert: marsRover direction equals: east.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:05:58'!
test09MoveSouthBackwardAndRotateLeft

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: south.
	
	self assert: (marsRover execute: 'bbbl') position equals: 0@3.
	self assert: marsRover direction equals: east.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:06:14'!
test10MoveEastForwardAndRotateRight

	|marsRover|
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: east.
	
	self assert: (marsRover execute: 'fffr') position equals: 3@0.
	self assert: marsRover direction equals: south.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:06:25'!
test11MoveEastBackwardAndRotateRight

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: east.
	
	self assert: (marsRover execute: 'bbbr') position equals: -3@0.
	self assert: marsRover direction equals: south.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:06:40'!
test12MoveEastForwardAndRotateLeft

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: east.
	
	self assert: (marsRover execute: 'fffl') position equals: 3@0.
	self assert: marsRover direction equals: north.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:06:55'!
test13MoveEastBackwardAndRotateLeft

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: east.
	
	self assert: (marsRover execute: 'bbbl') position equals: -3@0.
	self assert: marsRover direction equals: north.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:07:13'!
test14MoveWestForwardAndRotateRight

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: west.
	
	self assert: (marsRover execute: 'fffr') position equals: -3@0.
	self assert: marsRover direction equals: north.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:07:26'!
test15MoveWestBackwardAndRotateRight

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: west.
	
	self assert: (marsRover execute: 'bbbr') position equals: 3@0.
	self assert: marsRover direction equals: north.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:07:40'!
test16MoveWestForwardAndRotateLeft

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: west.
	
	self assert: (marsRover execute: 'fffl') position equals: -3@0.
	self assert: marsRover direction equals: south.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:07:56'!
test17MoveWestBackwardAndRotateLeft

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: west.
	
	self assert: (marsRover execute: 'bbbl') position equals: 3@0.
	self assert: marsRover direction equals: south.! !

!MarsRoverTest methodsFor: 'test' stamp: 'car 10/9/2019 11:08:09'!
test18MoveAround

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: north.
	
	self assert: (marsRover execute: 'ffrfffffbrffflllbbrfff') position equals: 6@2.
	self assert: marsRover direction equals: north.! !


!MarsRoverTest methodsFor: 'test-error' stamp: 'car 10/9/2019 11:08:45'!
test19InvalidInstructionShouldRaiseAnError

	|marsRover|
	
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: north.
	
	self 
		should: [marsRover execute: 'ffrjkuqweao0']
		
		raise: Error
		
		withExceptionDo: [ :anError | self assert: anError messageText equals: (MarsRover uknownInstruction) ].! !

!MarsRoverTest methodsFor: 'test-error' stamp: 'car 10/9/2019 11:09:02'!
test20InvalidInstructionShouldNotMoveMarsRover

	|marsRover|
	marsRover := MarsRover withInitialPosition: 0@0 andDirection: north.
	
	self 
		should: [marsRover execute: 'ffrjkuqweao0']
		
		raise: Error
		
		withExceptionDo: [ :anError | 
			self assert: anError messageText equals: (MarsRover uknownInstruction).
			self assert: marsRover position equals: 0@0.			
			self assert: marsRover direction equals: north.
		].! !


!MarsRoverTest methodsFor: 'setup' stamp: 'car 10/9/2019 11:01:38'!
setUp
	south := South new.
	east := East new.
	north := North new.
	west := West new.! !


!classDefinition: #MarsRover category: #'MarsRover-Ejercicio'!
Object subclass: #MarsRover
	instanceVariableNames: 'position direction allowedMovements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover-Ejercicio'!

!MarsRover methodsFor: 'Private-move' stamp: 'car 10/9/2019 10:25:14'!
moveBackwardEast

	position := position - (1@0)! !

!MarsRover methodsFor: 'Private-move' stamp: 'car 10/9/2019 10:25:19'!
moveBackwardNorth

	position := position - (0@1)! !

!MarsRover methodsFor: 'Private-move' stamp: 'car 10/9/2019 10:25:23'!
moveBackwardSouth

	position := position + (0@1)! !

!MarsRover methodsFor: 'Private-move' stamp: 'car 10/9/2019 10:25:27'!
moveBackwardWest

	position := position + (1@0)! !

!MarsRover methodsFor: 'Private-move' stamp: 'car 10/9/2019 10:25:32'!
moveForwardEast

	position := position + (1@0)! !

!MarsRover methodsFor: 'Private-move' stamp: 'car 10/9/2019 10:25:38'!
moveForwardNorth

	position := position + (0@1)! !

!MarsRover methodsFor: 'Private-move' stamp: 'car 10/9/2019 10:25:42'!
moveForwardSouth

	position := position - (0@1)! !

!MarsRover methodsFor: 'Private-move' stamp: 'car 10/9/2019 10:25:46'!
moveForwardWest

	position := position - (1@0)! !


!MarsRover methodsFor: 'initialization' stamp: 'ns 10/10/2019 07:57:57'!
configureAllowedMovements

 	allowedMovements := Dictionary new.
	allowedMovements add: $f->[self moveForward]; add: $b->[self moveBackward]; 
						 add: $l->[self rotateLeft]; add: $r->[self rotateRight].! !

!MarsRover methodsFor: 'initialization' stamp: 'ns 10/10/2019 07:58:19'!
initializeWithInitialPosition: aPosition andDirection: aDirection

	position := aPosition.
	direction := aDirection.
	self configureAllowedMovements! !


!MarsRover methodsFor: 'error signal' stamp: 'car 10/9/2019 11:17:52'!
signalUknownInstructionReturnTo: anInitialPosition and:anInitialDirection 

	position := anInitialPosition.
	direction := anInitialDirection.
	^self error: MarsRover uknownInstruction.! !


!MarsRover methodsFor: 'actions' stamp: 'car 10/9/2019 11:17:20'!
execute: aSetOfInstructions

	| anInitialPosition anInitialDirection |
	
	anInitialPosition := position.
	anInitialDirection := direction.
	
	aSetOfInstructions do: [:anInstruction | |result|
		result := allowedMovements at: anInstruction ifAbsent: [^self signalUknownInstructionReturnTo: anInitialPosition and:anInitialDirection ].
		result value.		
		].! !

!MarsRover methodsFor: 'actions' stamp: 'car 10/9/2019 10:37:56'!
moveBackward

	direction toMoveBackward: self! !

!MarsRover methodsFor: 'actions' stamp: 'car 10/9/2019 10:38:12'!
moveForward

	direction toMoveForward: self! !

!MarsRover methodsFor: 'actions' stamp: 'car 10/9/2019 10:26:19'!
rotateLeft

	direction := direction rotateLeft! !

!MarsRover methodsFor: 'actions' stamp: 'car 10/9/2019 10:26:25'!
rotateRight

	direction := direction rotateRight! !


!MarsRover methodsFor: 'accessing' stamp: 'car 10/9/2019 10:26:38'!
direction

	^direction! !

!MarsRover methodsFor: 'accessing' stamp: 'car 10/9/2019 10:26:42'!
position

	^position! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: #'MarsRover-Ejercicio'!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:42:55'!
uknownInstruction

	^ 'Uknown Instruction'.! !

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:06:03'!
withInitialPosition: aPosition andDirection: aDirection

	^ self new initializeWithInitialPosition: aPosition andDirection: aDirection.! !


!classDefinition: #MarsRoverCardinalPoints category: #'MarsRover-Ejercicio'!
Object subclass: #MarsRoverCardinalPoints
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover-Ejercicio'!

!MarsRoverCardinalPoints methodsFor: 'rotate' stamp: 'car 10/9/2019 10:19:22'!
rotateLeft

	^self subclassResponsibility ! !

!MarsRoverCardinalPoints methodsFor: 'rotate' stamp: 'car 10/9/2019 10:19:28'!
rotateRight

	^self subclassResponsibility ! !


!MarsRoverCardinalPoints methodsFor: 'move-private' stamp: 'car 10/9/2019 10:37:30'!
toMoveBackward: aObject

	^self subclassResponsibility ! !

!MarsRoverCardinalPoints methodsFor: 'move-private' stamp: 'car 10/9/2019 10:37:15'!
toMoveForward: aObject

	^self subclassResponsibility ! !


!MarsRoverCardinalPoints methodsFor: 'comparing' stamp: 'car 10/9/2019 10:19:16'!
= anObject

	^self class = anObject class! !


!classDefinition: #East category: #'MarsRover-Ejercicio'!
MarsRoverCardinalPoints subclass: #East
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover-Ejercicio'!

!East methodsFor: 'rotate' stamp: 'car 10/9/2019 10:19:56'!
rotateLeft

	^ North new! !

!East methodsFor: 'rotate' stamp: 'car 10/9/2019 10:20:06'!
rotateRight

	^ South new! !


!East methodsFor: 'move-private' stamp: 'car 10/9/2019 10:35:16'!
toMoveBackward: aObject

	^ aObject moveBackwardEast! !

!East methodsFor: 'move-private' stamp: 'car 10/9/2019 10:36:36'!
toMoveForward: aObject

	^ aObject moveForwardEast! !


!classDefinition: #North category: #'MarsRover-Ejercicio'!
MarsRoverCardinalPoints subclass: #North
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover-Ejercicio'!

!North methodsFor: 'rotate' stamp: 'car 10/9/2019 10:23:17'!
rotateLeft

	^ West new! !

!North methodsFor: 'rotate' stamp: 'car 10/9/2019 10:23:22'!
rotateRight

	^ East new! !


!North methodsFor: 'move-private' stamp: 'car 10/9/2019 10:35:28'!
toMoveBackward: aObject

	^ aObject moveBackwardNorth! !

!North methodsFor: 'move-private' stamp: 'car 10/9/2019 10:36:44'!
toMoveForward: aObject

	^ aObject moveForwardNorth! !


!classDefinition: #South category: #'MarsRover-Ejercicio'!
MarsRoverCardinalPoints subclass: #South
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover-Ejercicio'!

!South methodsFor: 'move-private' stamp: 'car 10/9/2019 10:35:40'!
toMoveBackward: aObject

	^ aObject moveBackwardSouth! !

!South methodsFor: 'move-private' stamp: 'car 10/9/2019 10:36:54'!
toMoveForward: aObject

	^ aObject moveForwardSouth! !


!South methodsFor: 'rotate' stamp: 'car 10/9/2019 10:24:05'!
rotateLeft

	^ East new! !

!South methodsFor: 'rotate' stamp: 'car 10/9/2019 10:24:11'!
rotateRight

	^ West new! !


!classDefinition: #West category: #'MarsRover-Ejercicio'!
MarsRoverCardinalPoints subclass: #West
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover-Ejercicio'!

!West methodsFor: 'move-private' stamp: 'car 10/9/2019 10:35:50'!
toMoveBackward: aObject

	^ aObject moveBackwardWest! !

!West methodsFor: 'move-private' stamp: 'car 10/9/2019 10:37:03'!
toMoveForward: aObject

	^ aObject moveForwardWest! !


!West methodsFor: 'rotate' stamp: 'car 10/9/2019 10:24:21'!
rotateLeft

	^ South new! !

!West methodsFor: 'rotate' stamp: 'car 10/9/2019 10:24:27'!
rotateRight

	^ North new! !
