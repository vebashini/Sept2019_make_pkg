
rumour <- function(suspect, weapon, room) {
  return(glue::glue("I think {suspect} did it in the {room} with the {weapon}"))
}

whodunnit <- function(x = 1) {
  suspects <- c(
    "Mrs. White", "Reverend. Green", "Mrs. Peacock",
    "Professor Plum", "Miss Scarlet", "Colonel Mustard"
  )
  weapons <- c(
    "Ax", "Bat", "Candlestick", "Dumbbell", "Pistol",
    "Poison", "Trophy", "Knife", "Rope"
  )
  rooms <- c(
    "Hall", "Guest House", "Dining Room", "Kitchen",
    "Patio", "Spa", "Theatre", "Living Room", "Observatory"
  )

  suspect = sample(suspects, x, replace = T)
  weapon = sample(weapons, x, replace = T)
  room = sample(rooms, x, replace = T)

  rumours = data.frame(suspect, weapon, room)

  return(purrr::pmap_chr(rumours, rumour))
}
