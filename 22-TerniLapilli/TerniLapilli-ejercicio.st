!classDefinition: #TerniLapilliTest category: #'TerniLapilli-ejercicio'!
TestCase subclass: #TerniLapilliTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TerniLapilli-ejercicio'!

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 02:04:02'!
test01XBeginsOnEmptyBoard

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	
	juegoTerniLapilli putXAt: 0@1.

	self assert: (juegoTerniLapilli isXAt: 0@1).! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 02:04:46'!
test02OPlaysAfterX

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	
	juegoTerniLapilli putXAt: 0@1.
	juegoTerniLapilli putOAt: 0@0.

	self assert: (juegoTerniLapilli isOAt: 0@0).! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 02:05:21'!
test03OCantPlayBeforeX

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.

	self should: [juegoTerniLapilli putOAt: 0@0] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText  equals: TerniLapilli errorOCantPlayBeforeX.
							self deny: (juegoTerniLapilli isOAt: 0@0)]! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 02:06:09'!
test04XCantPlayTwoTimesInARow

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@1.
	
	self should: [juegoTerniLapilli putXAt: 0@0] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText  equals: TerniLapilli errorXCantPlayTwoTimesInARow.
						      self deny: (juegoTerniLapilli isXAt: 0@0)]! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 02:06:37'!
test05OCantPlayTwoTimesInARow

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.

	juegoTerniLapilli putXAt: 0@1.
	juegoTerniLapilli putOAt: 0@2.
	
	self should: [juegoTerniLapilli putOAt: 0@0] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText  equals: TerniLapilli errorOCantPlayTwoTimesInARow.
						      self deny: (juegoTerniLapilli isOAt: 0@0)]! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 02:06:59'!
test06XCantPlaceMoreThanThreeTiles

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@1.
	juegoTerniLapilli putOAt: 0@2.
	juegoTerniLapilli putXAt: 1@0.
	juegoTerniLapilli putOAt: 1@1.
	juegoTerniLapilli putXAt: 1@2.
	juegoTerniLapilli putOAt: 2@0.

	self should: [juegoTerniLapilli putXAt: 0@0] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorXCantPlaceMoreThanThreeTiles.
							self deny: (juegoTerniLapilli isXAt: 0@0)]! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 02:07:29'!
test07InvalidPositionForX

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.

	self should: [juegoTerniLapilli putXAt: 3@0] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorInvalidPosition.
							self deny: (juegoTerniLapilli isXAt: 3@0)]! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 02:07:49'!
test08InvalidPositionForO

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.

	self should: [juegoTerniLapilli putOAt: 3@0] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorInvalidPosition.
							self deny: (juegoTerniLapilli isOAt: 3@0).]! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:15:39'!
test09XCantMoveIfAllTilesAreNotPlaced

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.

	self should: [juegoTerniLapilli moveXFrom: 0@0 to: 1@0] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorCantMoveBeforeAllTilesArePlaced.
							self deny: (juegoTerniLapilli isXAt: 1@0).]! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:17:16'!
test10XCanMoveWhenAllTilesArePlaced

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 1@1.
	juegoTerniLapilli putOAt: 1@2.
	juegoTerniLapilli  moveXFrom: 1@1 to: 2@1.
	
	self deny: (juegoTerniLapilli isXAt: 1@1).
	self assert: (juegoTerniLapilli isXAt: 2@1).
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:19:34'!
test11XCantMoveToAnInvalidPosition

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 1@1.
	juegoTerniLapilli putOAt: 1@2.
	
	self should: [juegoTerniLapilli  moveXFrom: 1@1 to: 6@1.] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorInvalidPosition.
							self deny: (juegoTerniLapilli isXAt: 6@1)]
	
	
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:22:59'!
test12XCantMoveToAPositionWithAnotherXTile

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 1@2.
	juegoTerniLapilli putOAt: 1@1.
	
	self should: [juegoTerniLapilli  moveXFrom: 0@2 to: 1@2.] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorPositionNotEmpty.
							self assert: (juegoTerniLapilli isXAt: 0@2).
							self assert: (juegoTerniLapilli isXAt: 1@2)
							]
	
	
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:41:59'!
test13XCantMoveToAPositionWithAnOTile

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 1@1.
	juegoTerniLapilli putOAt: 1@2.
	
	self should: [juegoTerniLapilli  moveXFrom: 0@2 to: 1@2.] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorPositionNotEmpty.
							self assert: (juegoTerniLapilli isXAt: 0@2).
							self deny: (juegoTerniLapilli isXAt: 1@2).
							self assert: (juegoTerniLapilli isOAt: 1@2).
							]
	
	
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:28:22'!
test14XCantMoveMoreThanOneStep

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 1@1.
	juegoTerniLapilli putOAt: 1@2.
	
	self should: [juegoTerniLapilli  moveXFrom: 0@2 to: 2@2.] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorCantMoveMoreThanOneStep.
							self assert: (juegoTerniLapilli isXAt: 0@2).
							self deny: (juegoTerniLapilli isXAt: 2@2)
							]
	
	
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:04:25'!
test15XCantMoveTwoTimesInARow

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 2@1.
	juegoTerniLapilli putOAt: 1@2.
	juegoTerniLapilli  moveXFrom: 0@0 to: 1@1.
	
	self should: [juegoTerniLapilli  moveXFrom: 1@1 to: 2@2.] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorCantMoveTwoTimesInARow.
							self assert: (juegoTerniLapilli isXAt: 1@1).
							self deny: (juegoTerniLapilli isXAt: 2@2)
							]
	
	
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:35:25'!
test16OCantMoveIfAllTilesAreNotPlaced

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	
	self should: [juegoTerniLapilli moveOFrom: 0@1 to: 1@1] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorCantMoveBeforeAllTilesArePlaced.
							self deny: (juegoTerniLapilli isOAt: 1@1).]! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:37:00'!
test17OCanMoveWhenAllTilesArePlaced

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 1@1.
	juegoTerniLapilli putOAt: 1@2.
	juegoTerniLapilli  moveXFrom: 1@1 to: 2@1.
	juegoTerniLapilli  moveOFrom: 1@2 to: 1@1.	
	
	self deny: (juegoTerniLapilli isOAt: 1@2).
	self assert: (juegoTerniLapilli isOAt: 1@1).
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:38:49'!
test18OCantMoveToAnInvalidPosition

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 1@1.
	juegoTerniLapilli putOAt: 1@2.
	juegoTerniLapilli  moveXFrom: 1@1 to: 2@2.
	
	self should: [juegoTerniLapilli  moveOFrom: 1@2 to: 6@1.] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorInvalidPosition.
							self deny: (juegoTerniLapilli isOAt: 6@1)]
	
	
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:40:23'!
test19OCantMoveToAPositionWithAnotherOTile

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 1@2.
	juegoTerniLapilli putOAt: 1@1.
	juegoTerniLapilli  moveXFrom: 1@2 to: 2@2.
	
	self should: [juegoTerniLapilli  moveOFrom: 1@0 to: 1@1.] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorPositionNotEmpty.
							self assert: (juegoTerniLapilli isOAt: 1@0).
							self assert: (juegoTerniLapilli isOAt: 1@1)
							]
	
	
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:43:35'!
test20OCantMoveToAPositionWithAnXTile

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 1@1.
	juegoTerniLapilli putOAt: 1@2.
	juegoTerniLapilli  moveXFrom: 1@1 to: 2@2.
	
	self should: [juegoTerniLapilli  moveOFrom: 1@2 to: 2@2.] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorPositionNotEmpty.
							self assert: (juegoTerniLapilli isOAt: 1@2).
							self deny: (juegoTerniLapilli isOAt: 2@2).
							self assert: (juegoTerniLapilli isXAt: 2@2).
							]
	
	
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:44:37'!
test21OCantMoveMoreThanOneStep

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 1@1.
	juegoTerniLapilli putOAt: 1@2.
	juegoTerniLapilli  moveXFrom: 1@1 to: 2@2.
	
	self should: [juegoTerniLapilli  moveOFrom: 0@1 to: 2@1.] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorCantMoveMoreThanOneStep.
							self assert: (juegoTerniLapilli isOAt: 0@1).
							self deny: (juegoTerniLapilli isOAt: 2@1)
							]
	
	
! !

!TerniLapilliTest methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:47:04'!
test22OCantMoveTwoTimesInARow

	| juegoTerniLapilli |
	juegoTerniLapilli :=  TerniLapilli startGame.
	juegoTerniLapilli putXAt: 0@0.
	juegoTerniLapilli putOAt: 0@1.
	juegoTerniLapilli putXAt: 0@2.
	juegoTerniLapilli putOAt: 1@0.
	juegoTerniLapilli putXAt: 2@1.
	juegoTerniLapilli putOAt: 1@2.
	juegoTerniLapilli  moveXFrom: 0@0 to: 1@1.
	juegoTerniLapilli  moveOFrom: 1@2 to: 2@2.
	
	self should: [juegoTerniLapilli  moveOFrom: 2@2 to: 1@1.] 
		 raise: Error - MessageNotUnderstood 
		 withExceptionDo: [:anError| self assert: anError messageText equals: TerniLapilli errorCantMoveTwoTimesInARow.
							self assert: (juegoTerniLapilli isOAt: 2@2).
							self deny: (juegoTerniLapilli isOAt: 1@1)
							]
	
	
! !


!classDefinition: #TerniLapilli category: #'TerniLapilli-ejercicio'!
Object subclass: #TerniLapilli
	instanceVariableNames: 'positionsX positionsO allowedMovements playing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TerniLapilli-ejercicio'!

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:15:54'!
areStillTilesToPlace

	^ positionsX size < 3 or: positionsO size < 3.! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:55:51'!
initializeAllowedMovements

	| allMovements |
	allMovements := OrderedCollection with: 0@0 with: 0@1 with: 0@2 with: 1@0 with: 1@2 with: 2@0.
	allMovements add: 2@1.
	allMovements add: 2@2.
	
	allowedMovements := Dictionary new.
	allowedMovements at: 0@0 put: (OrderedCollection with: 0@1 with: 1@0 with: 1@1).
	allowedMovements at: 0@1 put: (OrderedCollection with: 0@0 with: 0@2 with: 1@1 with: 1@0 with: 1@2).
	allowedMovements at: 0@2 put: (OrderedCollection with: 0@1 with: 1@2 with: 1@1).
	allowedMovements at: 1@0 put: (OrderedCollection with: 0@0 with: 2@0 with: 1@1 with: 0@1 with: 2@1).
	allowedMovements at: 1@1 put: allMovements.
	allowedMovements at: 1@2 put: (OrderedCollection with: 0@2 with: 2@2 with: 1@1 with: 0@1 with: 2@1).	
	allowedMovements at: 2@0 put: (OrderedCollection with: 1@0 with: 2@1 with: 1@1).
	allowedMovements at: 2@1 put: (OrderedCollection with: 2@0 with: 2@2 with: 1@1 with: 1@0 with: 1@2).
	allowedMovements at: 2@2 put: (OrderedCollection with: 2@1 with: 1@2 with: 1@1).
! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:47:12'!
initializeStartGame

	positionsX:= OrderedCollection new.
	positionsO:= OrderedCollection new.
	self initializeAllowedMovements.! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'car 10/10/2019 20:33:25'!
isInvalid: aPosition

	^ (aPosition x > 2 or: aPosition x < 0) or: (aPosition y > 2 or: aPosition y < 0).! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:02:16'!
isNotAllowedFrom: aPosition to: anotherPosition
	
	| allowedMovementsForPosition |
	allowedMovementsForPosition := allowedMovements at: aPosition.
	(allowedMovementsForPosition includes: anotherPosition) ifTrue: [^ false].
	^ true.
 ! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 02:02:57'!
isOAt: aPosition

	^ positionsO includes: aPosition.! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:47:28'!
isPlayingO

	^ playing = #O.! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:06:32'!
isPlayingX

	^ playing = #X.! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:25:41'!
isPositionNotEmpty: anotherPosition

	^ (self isXAt: anotherPosition) or: (self isOAt: anotherPosition).! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 02:03:06'!
isXAt: aPosition

	^ positionsX includes: aPosition.! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:47:21'!
moveOFrom: aPosition to: anotherPosition
	self isPlayingO ifTrue: [^TerniLapilli error: TerniLapilli errorCantMoveTwoTimesInARow ].
	(self areStillTilesToPlace) ifTrue: [^TerniLapilli error: TerniLapilli errorCantMoveBeforeAllTilesArePlaced].
	(self isInvalid: anotherPosition) ifTrue: [TerniLapilli error: TerniLapilli errorInvalidPosition ].
	(self isPositionNotEmpty: anotherPosition) ifTrue: [TerniLapilli error: TerniLapilli errorPositionNotEmpty].
	(self isNotAllowedFrom: aPosition to: anotherPosition) ifTrue: [TerniLapilli error: TerniLapilli errorCantMoveMoreThanOneStep].
	positionsO remove: aPosition.
	positionsO add: anotherPosition.
	playing := #O.! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:07:11'!
moveXFrom: aPosition to: anotherPosition
	self isPlayingX ifTrue: [^TerniLapilli error: TerniLapilli errorCantMoveTwoTimesInARow ].
	(self areStillTilesToPlace) ifTrue: [^TerniLapilli error: TerniLapilli errorCantMoveBeforeAllTilesArePlaced].
	(self isInvalid: anotherPosition) ifTrue: [TerniLapilli error: TerniLapilli errorInvalidPosition ].
	(self isPositionNotEmpty: anotherPosition) ifTrue: [TerniLapilli error: TerniLapilli errorPositionNotEmpty].
	(self isNotAllowedFrom: aPosition to: anotherPosition) ifTrue: [TerniLapilli error: TerniLapilli errorCantMoveMoreThanOneStep].
	positionsX remove: aPosition.
	positionsX add: anotherPosition.
	playing := #X.! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 01:28:13'!
positionsO

	^positionsO! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 01:28:06'!
positionsX

	^positionsX! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:48:50'!
putOAt: aPosition
	(self isInvalid: aPosition) ifTrue: [^TerniLapilli error: TerniLapilli errorInvalidPosition].
	positionsX isEmpty ifTrue: [^ TerniLapilli error: TerniLapilli errorOCantPlayBeforeX ].
	self isPlayingO ifTrue: [^TerniLapilli error: TerniLapilli errorOCantPlayTwoTimesInARow].
	positionsO add: aPosition .
	playing := #O.! !

!TerniLapilli methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:50:02'!
putXAt: aPosition
	(self isInvalid: aPosition) ifTrue: [^TerniLapilli error: TerniLapilli errorInvalidPosition].
	positionsX size = 3 ifTrue: [^TerniLapilli error: TerniLapilli errorXCantPlaceMoreThanThreeTiles]. 
	self isPlayingX ifTrue: [^TerniLapilli error: TerniLapilli errorXCantPlayTwoTimesInARow].
	positionsX add: aPosition .
	playing := #X.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TerniLapilli class' category: #'TerniLapilli-ejercicio'!
TerniLapilli class
	instanceVariableNames: ''!

!TerniLapilli class methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:12:15'!
errorCantMoveBeforeAllTilesArePlaced
	
	^'Cant move a tile before all tiles are placed'! !

!TerniLapilli class methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:28:05'!
errorCantMoveMoreThanOneStep
	
	^'Cant move more than one step'! !

!TerniLapilli class methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 13:04:37'!
errorCantMoveTwoTimesInARow
	
	^'Cant move two times in a row'! !

!TerniLapilli class methodsFor: 'as yet unclassified' stamp: 'car 10/10/2019 20:34:04'!
errorInvalidPosition
	
	^'Invalid position'! !

!TerniLapilli class methodsFor: 'as yet unclassified' stamp: 'car 10/10/2019 20:23:32'!
errorOCantPlayBeforeX
	^'O can not play before X'! !

!TerniLapilli class methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 01:37:47'!
errorOCantPlayTwoTimesInARow
	^'O cant play two times in a row'! !

!TerniLapilli class methodsFor: 'as yet unclassified' stamp: 'a 10/12/2019 12:23:17'!
errorPositionNotEmpty
	
	^'Position is not empty'! !

!TerniLapilli class methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 01:36:52'!
errorXCantPlaceMoreThanThreeTiles
	^ 'X cant place more than three tiles'! !

!TerniLapilli class methodsFor: 'as yet unclassified' stamp: 'car 10/11/2019 01:37:42'!
errorXCantPlayTwoTimesInARow
	^'X cant play two times in a row'! !

!TerniLapilli class methodsFor: 'as yet unclassified' stamp: 'car 10/10/2019 18:24:39'!
startGame
	^self new initializeStartGame! !
