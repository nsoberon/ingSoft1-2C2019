!classDefinition: #MarsRoverTest category: #'MarsRover-Ejercicio'!
TestCase subclass: #MarsRoverTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover-Ejercicio'!

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:02:00'!
test01NoMove

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'N'.

	self assert: (marsRover move: '') position equals: 0@0.

	self assert: marsRover direction equals: 'N'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:09:15'!
test02MoveForward

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'N'.

	self assert: (marsRover move: 'f') position equals: 0@1.

	self assert: marsRover direction equals: 'N'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:21:16'!
test03MoveBackward

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'N'.

	self assert: (marsRover move: 'b') position equals: 0@-1.

	self assert: marsRover direction equals: 'N'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:20:40'!
test04RotateRight

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'N'.

	self assert: (marsRover move: 'r') position equals: 0@0.

	self assert: marsRover direction equals: 'E'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:29:40'!
test05RotateLeft

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'N'.

	self assert: (marsRover move: 'l') position equals: 0@0.

	self assert: marsRover direction equals: 'W'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:36:55'!
test06MoveSouthForwardAndRotateRight

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'S'.

	self assert: (marsRover move: 'fffr') position equals: 0@-3.

	self assert: marsRover direction equals: 'W'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:37:46'!
test07MoveSouthBackwardAndRotateRight

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'S'.

	self assert: (marsRover move: 'bbbr') position equals: 0@3.

	self assert: marsRover direction equals: 'W'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:40:47'!
test08MoveSouthForwardAndRotateLeft

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'S'.

	self assert: (marsRover move: 'fffl') position equals: 0@-3.

	self assert: marsRover direction equals: 'E'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:41:30'!
test09MoveSouthBackwardAndRotateLeft

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'S'.

	self assert: (marsRover move: 'bbbl') position equals: 0@3.

	self assert: marsRover direction equals: 'E'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:15:58'!
test10MoveEastForwardAndRotateRight

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'E'.

	self assert: (marsRover move: 'fffr') position equals: 3@0.

	self assert: marsRover direction equals: 'S'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:25:38'!
test11MoveEastBackwardAndRotateRight

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'E'.

	self assert: (marsRover move: 'bbbr') position equals: -3@0.

	self assert: marsRover direction equals: 'S'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:26:43'!
test12MoveEastForwardAndRotateLeft

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'E'.

	self assert: (marsRover move: 'fffl') position equals: 3@0.

	self assert: marsRover direction equals: 'N'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:28:31'!
test13MoveEastBackwardAndRotateLeft

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'E'.

	self assert: (marsRover move: 'bbbl') position equals: -3@0.

	self assert: marsRover direction equals: 'N'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:30:18'!
test14MoveWestForwardAndRotateRight

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'W'.

	self assert: (marsRover move: 'fffr') position equals: -3@0.

	self assert: marsRover direction equals: 'N'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:31:57'!
test15MoveWestBackwardAndRotateRight

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'W'.

	self assert: (marsRover move: 'bbbr') position equals: 3@0.

	self assert: marsRover direction equals: 'N'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:33:08'!
test16MoveWestForwardAndRotateLeft

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'W'.

	self assert: (marsRover move: 'fffl') position equals: -3@0.

	self assert: marsRover direction equals: 'S'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:35:44'!
test17MoveWestBackwardAndRotateLeft

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'W'.

	self assert: (marsRover move: 'bbbl') position equals: 3@0.

	self assert: marsRover direction equals: 'S'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:39:18'!
test18MoveAround

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'N'.

	self assert: (marsRover move: 'ffrfffffbrffflllbbrfff') position equals: 6@2.

	self assert: marsRover direction equals: 'N'.
! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:50:23'!
test19InvalidInstructionShouldRaiseAnError

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'N'.

	self 
		should: [marsRover move: 'ffrjkuqweao0']
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: (MarsRover uknownInstruction) ].! !

!MarsRoverTest methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 13:02:47'!
test20InvalidInstructionShouldNotMoveMarsRover

	|marsRover|

	marsRover := MarsRover withInitialPosition: 0@0 andDirection: 'N'.

	self 
		should: [marsRover move: 'ffrjkuqweao0']
		raise: Error
		withExceptionDo: [ :anError | 
			self assert: anError messageText equals: (MarsRover uknownInstruction).
			self assert: marsRover position equals: 0@0.
			self assert: marsRover direction equals: 'N'.
		].! !


!classDefinition: #MarsRover category: #'MarsRover-Ejercicio'!
Object subclass: #MarsRover
	instanceVariableNames: 'position direction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover-Ejercicio'!

!MarsRover methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:08:32'!
direction

	^direction! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:07:04'!
initializeWithInitialPosition: aPosition andDirection: aDirection

	position := aPosition.
	direction := aDirection.! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 13:04:21'!
move: aSetOfInstructions
	
	| initialPosition initialDirection |

	initialPosition := position.
	initialDirection := direction.

	aSetOfInstructions do: [
		:instruction |
		instruction = $f ifTrue: [self moveForward ] ifFalse: [
			instruction = $b ifTrue: [self moveBackward ] ifFalse: [
				instruction = $r ifTrue: [self rotateRight ] ifFalse: [
					instruction = $l ifTrue: [self rotateLeft ] ifFalse: [
						position := initialPosition.
						direction := initialDirection.
						^self error: MarsRover uknownInstruction.
					]
				]
			]			
		]
	].! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:32:38'!
moveBackward
	
	direction = 'N' ifTrue: [position := position - (0@1)].
	direction = 'S' ifTrue: [position := position + (0@1)].
	direction = 'E' ifTrue: [position := position - (1@0)].
	direction = 'W' ifTrue: [position := position + (1@0)].! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:30:48'!
moveForward
	
	direction = 'N' ifTrue: [position := position + (0@1)].
	direction = 'S' ifTrue: [position := position - (0@1)].
	direction = 'E' ifTrue: [position := position + (1@0)].
	direction = 'W' ifTrue: [position := position - (1@0)].	! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'a 10/3/2019 21:08:20'!
position

	^position! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:35:12'!
rotateLeft
	direction = 'N' ifTrue: [direction := 'W'] ifFalse: [
		direction = 'S' ifTrue: [direction := 'E'] ifFalse: [
			direction = 'E' ifTrue: [direction := 'N'] ifFalse: [
				direction = 'W' ifTrue: [direction := 'S'].
			]
		].
	].! !

!MarsRover methodsFor: 'as yet unclassified' stamp: 'a 10/5/2019 12:31:22'!
rotateRight
	direction = 'N' ifTrue: [direction := 'E'] ifFalse: [
		direction = 'S' ifTrue: [direction := 'W'] ifFalse: [
			direction = 'E' ifTrue: [direction := 'S'] ifFalse: [
				direction = 'W' ifTrue: [direction := 'N'].
			]
		].
	].! !

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
