@react.component
let make = () => {
  let (click, setclick) = React.useState(() => false)
  Js.log(click)

  
  <nav className=" flex items-center justify-between flex-wrap bg-white p-6">
    <div className=" ml-10">
      <img className="rounded-lg shadow-xl w-80 h-26" src="assets/logoPescarte.png" />
    </div>
    <div className="block lg:hidden ">
      <button className="flex items-center px-3 py-2 " onClick={_e => setclick(c => !c)}>
        <svg
          className="fill-current h-8 w-8 " viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
          <title> {`Menu`->React.string} </title>
          <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" />
        </svg>
      </button>
    </div>
    <div className=" w-full block flex-grow lg:flex lg:items-center  lg:w-auto" id="menu">
      <div className="menu md:flex mt-10 md:mt-0 lg:flex-grow justify-evenly items-baseline ">
        <a className="" href="/#"> {`Perfil`->React.string} </a>
        <a className="" href="/#"> {`Relatórios`->React.string} </a>
        <a className="" href="/#"> {`Mídias`->React.string} </a>
        <a className="" href="/#"> {`Agenda`->React.string} </a>
        <a className="" href="/#"> {`Sair`->React.string} </a>
      </div>
    </div>
  </nav>
}
