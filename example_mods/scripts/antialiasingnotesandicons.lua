function onCreatePost()
  setProperty('iconP2.antialiasing', false)
  setProperty('iconP1.antialiasing', false)
  for i=0,4,1 do
    setPropertyFromGroup('opponentStrums', i, 'antialiasing', false)
    setPropertyFromGroup('playerStrums', i, 'antialiasing', false)
  end
  for i = 0, getProperty('unspawnNotes.length')-1 do
    setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false); --Change texture
  end
end