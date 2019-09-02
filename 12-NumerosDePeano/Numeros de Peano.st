!classDefinition: #I category: #'Numeros de Peano'!
DenotativeObject subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros de Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: #'Numeros de Peano'!
I class
	instanceVariableNames: ''!

!I class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 11:49:15'!
* unNumeroDePeano
	^ unNumeroDePeano! !

!I class methodsFor: 'as yet unclassified' stamp: 'a 8/26/2019 18:51:42'!
+ unNumeroDePeano
	^ unNumeroDePeano next! !

!I class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 16:11:56'!
- unNumeroDePeano
	^ Error  signal: self descripcionDeErrorDeNumerosNegativosNoSoportados! !

!I class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:24:00'!
/ unNumeroDePeano
	unNumeroDePeano == I ifTrue: [^self].
	^ Error signal: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor.! !

!I class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:21:55'!
< unNumeroDePeano
	unNumeroDePeano == I ifTrue: [^false].
	^ true! !

!I class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 13:38:44'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^ 'No se puede dividir por un numero mayor'! !

!I class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 16:09:46'!
descripcionDeErrorDeNumerosNegativosNoSoportados
	^ 'No se soportan numeros negativos'! !

!I class methodsFor: 'as yet unclassified' stamp: 'a 8/26/2019 18:25:52'!
next
	^ II! !

!I class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 17:43:52'!
restaInversa: unNumeroDePeano
	^ unNumeroDePeano previous! !


!classDefinition: #II category: #'Numeros de Peano'!
DenotativeObject subclass: #II
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros de Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'II class' category: #'Numeros de Peano'!
II class
	instanceVariableNames: 'next previous'!

!II class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 12:08:39'!
* unNumeroDePeano
	^ self previous * unNumeroDePeano + unNumeroDePeano! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 8/26/2019 18:54:16'!
+ unNumeroDePeano
	^self previous + unNumeroDePeano next! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 17:41:21'!
- unNumeroDePeano
	^ unNumeroDePeano restaInversa: self.! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:29:20'!
/ unNumeroDePeano

	unNumeroDePeano == I ifTrue: [^self].
	self == unNumeroDePeano ifTrue: [^I].
	self < unNumeroDePeano ifTrue: [^Error signal: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor].
	self - unNumeroDePeano < unNumeroDePeano ifTrue: [^Error signal: self descripcionErrorNoSePuedeDividir].
	^self - unNumeroDePeano / unNumeroDePeano + I.! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 15:44:46'!
< unNumeroDePeano
	unNumeroDePeano == I ifTrue: [^ false].
	^ self previous < unNumeroDePeano previous! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 13:38:55'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^ 'No se puede dividir por un numero mayor'! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:14:40'!
descripcionErrorNoSePuedeDividir
	^ 'No se puede realizar la division'! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:32:15'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := III.
	previous := I.! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 11:38:11'!
previous
	^ previous! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 11:38:46'!
previous: unNumeroPeano
	^previous:= unNumeroPeano
	! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 8/26/2019 18:37:55'!
removeAllNext

	next ifNotNil:

	[

		next removeAllNext.

		next removeFromSystem.

		next := nil.

	]! !

!II class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 17:40:59'!
restaInversa: unNumeroDePeano
	^unNumeroDePeano previous - self previous! !


!II class methodsFor: 'cloning' stamp: 'a 8/26/2019 19:03:38'!
next

	next ifNil: [
			next _ self cloneNamed: self name, 'I'.
			next previous: self
		].
	^next
! !


!classDefinition: #III category: #'Numeros de Peano'!
DenotativeObject subclass: #III
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros de Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'III class' category: #'Numeros de Peano'!
III class
	instanceVariableNames: 'next previous'!

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
* unNumeroDePeano
	^ self previous * unNumeroDePeano + unNumeroDePeano! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
+ unNumeroDePeano
	^self previous + unNumeroDePeano next! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
- unNumeroDePeano
	^ unNumeroDePeano restaInversa: self.! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
/ unNumeroDePeano

	unNumeroDePeano == I ifTrue: [^self].
	self == unNumeroDePeano ifTrue: [^I].
	self < unNumeroDePeano ifTrue: [^Error signal: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor].
	self - unNumeroDePeano < unNumeroDePeano ifTrue: [^Error signal: self descripcionErrorNoSePuedeDividir].
	^self - unNumeroDePeano / unNumeroDePeano + I.! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
< unNumeroDePeano
	unNumeroDePeano == I ifTrue: [^ false].
	^ self previous < unNumeroDePeano previous! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^ 'No se puede dividir por un numero mayor'! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
descripcionErrorNoSePuedeDividir
	^ 'No se puede realizar la division'! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:32:15'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIII.
	previous := II.! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
previous
	^ previous! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
previous: unNumeroPeano
	^previous:= unNumeroPeano
	! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
removeAllNext

	next ifNotNil:

	[

		next removeAllNext.

		next removeFromSystem.

		next := nil.

	]! !

!III class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:17'!
restaInversa: unNumeroDePeano
	^unNumeroDePeano previous - self previous! !


!III class methodsFor: 'cloning' stamp: 'a 9/1/2019 23:31:17'!
next

	next ifNil: [
			next _ self cloneNamed: self name, 'I'.
			next previous: self
		].
	^next
! !


!classDefinition: #IIII category: #'Numeros de Peano'!
DenotativeObject subclass: #IIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros de Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIII class' category: #'Numeros de Peano'!
IIII class
	instanceVariableNames: 'next previous'!

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
* unNumeroDePeano
	^ self previous * unNumeroDePeano + unNumeroDePeano! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
+ unNumeroDePeano
	^self previous + unNumeroDePeano next! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
- unNumeroDePeano
	^ unNumeroDePeano restaInversa: self.! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
/ unNumeroDePeano

	unNumeroDePeano == I ifTrue: [^self].
	self == unNumeroDePeano ifTrue: [^I].
	self < unNumeroDePeano ifTrue: [^Error signal: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor].
	self - unNumeroDePeano < unNumeroDePeano ifTrue: [^Error signal: self descripcionErrorNoSePuedeDividir].
	^self - unNumeroDePeano / unNumeroDePeano + I.! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
< unNumeroDePeano
	unNumeroDePeano == I ifTrue: [^ false].
	^ self previous < unNumeroDePeano previous! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^ 'No se puede dividir por un numero mayor'! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
descripcionErrorNoSePuedeDividir
	^ 'No se puede realizar la division'! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:32:15'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := nil.
	previous := III.! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
previous
	^ previous! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
previous: unNumeroPeano
	^previous:= unNumeroPeano
	! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
removeAllNext

	next ifNotNil:

	[

		next removeAllNext.

		next removeFromSystem.

		next := nil.

	]! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'a 9/1/2019 23:31:20'!
restaInversa: unNumeroDePeano
	^unNumeroDePeano previous - self previous! !


!IIII class methodsFor: 'cloning' stamp: 'a 9/1/2019 23:31:20'!
next

	next ifNil: [
			next _ self cloneNamed: self name, 'I'.
			next previous: self
		].
	^next
! !

II initializeAfterFileIn!
III initializeAfterFileIn!
IIII initializeAfterFileIn!