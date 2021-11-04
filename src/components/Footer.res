@react.component
let make = () =>
  <footer className="bg-white w-full py-8">
    <div className=" md:flex-row w-2/4 mx-auto ">
    <div className="md:mt-0 mt-10 px-4">
        <ul
          className="grid grid-rows-2 grid-flow-col md:grid-rows-1 gap-4">
          <img className="" src="assets/logoPescarte.png" />
          <img className="" src="assets/logoPescarte.png" />
          <img className="" src="assets/logoPescarte.png" />
          <img className="" src="assets/logoPescarte.png" />
          <img className="" src="assets/logoPescarte.png" />
        </ul>
      </div>
      <div className=" mx-10">
        <a className="text-black-700" href="#">
          {`A realização do Projeto Pescarte é uma medida de mitigação exigida pelo licenciamento ambiental federal, conduzido pelo IBAMA`->React.string}
        </a>
      </div>
      
    </div>
  </footer>
