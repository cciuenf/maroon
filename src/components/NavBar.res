open NavBarTypes

let toggleNavbarState = state =>
  switch state {
  | Open => Closed
  | Closed => Open
  }

let navbarReducer = (state, action) =>
  switch action {
  | Toggle => toggleNavbarState(state)
  }

@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(navbarReducer, Closed)

  <NavBarContainer>
    <MenuLinks navbarState={state} />
    <MenuToggle toggle={_e => dispatch(Toggle)} navbarState={state} />
  </NavBarContainer>
}
