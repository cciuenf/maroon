@react.component
let make = () =>
  <nav className="navbar py-8">
    <div className=" w-full justify-between  flex items-center">
      <div className=" ml-10" > <img className="rounded-lg shadow-xl w-80 h-26" src="assets/logoPescarte.png" /> </div>
      <div className="block lg:hidden mr-10">
        <button
          className="flex items-center px-3 py-2 ">
          <svg
            className="fill-current h-8 w-8 " viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <title> {`Menu`->React.string} </title>
            <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" />
          </svg>
        </button>
      </div>
      <div
        className="header w-full flex mr-10 justify-end hidden lg:block pt-6 lg:pt-0">
        <ul className=" menu flex justify-evenly items-baseline space-x-4">
          <li
            className=""
            href="/#">
            {`Perfil`->React.string}
          </li>
          <li
            className=""
            href="/#">
            {`Relatórios`->React.string}
          </li>
          <li
            className=""
            href="/#">
            {`Mídias`->React.string}
          </li>
          <li
            className=""
            href="/#">
            {`Agenda`->React.string}
          </li>
          <li
            className=""
            href="/#">
            {`Sair`->React.string}
          </li>
        </ul>
      </div>
    </div>
  </nav>
