open Chakra
open NavBarTypes

module CloseIcon = ReactIcons.Io.Close
module MenuIcon = ReactIcons.Bi.Menu

@react.component
let make = (~toggle, ~navbarState) =>
  <Box display={#array([#block, #none])} onClick={toggle}>
    {switch navbarState {
    | Open => <CloseIcon />
    | Closed => <MenuIcon />
    }}
  </Box>
