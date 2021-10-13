type navbarState = Open | Closed

type action = Toggle

let toggleNavbarState = state =>
  switch state {
  | Open => Closed
  | Closed => Open
  }

let navbarReducer = (state, action) =>
  switch action {
  | Toggle => toggleNavbarState(state)
  }

module Menu = {
  @react.component
  let make = () =>
    <div className="menu md:absolute md:flex mt-10 md:mt-0 justify-evenly">
      <a className="" href="/#"> {`Perfil`->React.string} </a>
      <a className="" href="/#"> {`Relatórios`->React.string} </a>
      <a className="" href="/#"> {`Mídias`->React.string} </a>
      <a className="" href="/#"> {`Agenda`->React.string} </a>
      <a className="" href="/#"> {`Sair`->React.string} </a>
    </div>
}
@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(navbarReducer, Open)

  <nav className="flex items-center justify-between flex-wrap bg-white p-2">
    <div className="ml-10">
      <img className="rounded-lg shadow-xl w-80 h-26" src="assets/logoPescarte.png" />
    </div>
    <div className="block md:hidden ">
      <button className="flex items-center px-3 py-2 " onClick={_e => dispatch(Toggle)}>
        <svg
          className="fill-current h-8 w-8 " viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
          <title> {`Menu`->React.string} </title>
          <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" />
        </svg>
      </button>
    </div>
    <div
      className="w-full block relative flex-grow lg:flex lg:items-center hidden md:block md:w-auto lg:w-auto">
      <Menu />
    </div>
    <div className="w-full block relative flex-grow md:hidden">
      {switch state {
      | Open => <Menu />
      | Closed => React.null
      }}
    </div>
  </nav>
}
