type navbarState = Open | Closed

type action = Toggle

let toBool = (state) =>
  switch state {
  | Open => true
  | Closed => false
  }
