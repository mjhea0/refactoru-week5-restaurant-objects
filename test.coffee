Monk = (age, yearsMeditating) ->
  @age = age
  @yearsMeditating = yearsMeditating
  @meditate = meditate = ->
    om = "Om"
    i = 0

    while i < @yearsMeditating
      om += "m"
      i++
    console.log om

monk1 = new Monk(39, 20)
monk2 = new Monk(85, 53)
monk1.meditate()
monk2.meditate()
console.log monk1.meditate is monk2.meditate
Monk = (age, yearsMeditating) ->
  @age = age
  @yearsMeditating = yearsMeditating

Monk::meditate = ->
  om = "Om"
  i = 0

  while i < @yearsMeditating
    om += "m"
    i++
  console.log om

monk1 = new Monk(39, 20)
monk2 = new Monk(85, 53)
monk1.meditate()
monk2.meditate()
Monk::walk = ->
  console.log "Walking Meditation"
  @meditate()

monk1.walk()