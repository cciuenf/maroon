@react.component
let make = () =>
  <footer className="bg-white w-full py-8">
    <div className="flex md:flex-row flex-col max-w-screen-xl mx-auto px-4">
      <div className=" mx-10">
            <a className="text-black-700 font-sans font-semibold" href="#">
              {`A realização do Projeto Pescarte é uma medida de mitigação exigida pelo licenciamento ambiental federal, conduzido pelo IBAMA`->React.string}
            </a>
      </div>
      <div className="mx-auto md:mt-0 mt-10 px-4">
        <ul className="mx-auto text-lg font-light text-base md:text-lg flex flex-wrap justify-between">
          <img className="h-9" src="assets/logoPescarte.png" />
          <img className="h-9" src="assets/logoPescarte.png" />
          <img className="h-9" src="assets/logoPescarte.png" />
          <img className="h-9" src="assets/logoPescarte.png" />
          <img className="h-9" src="assets/logoPescarte.png" />
          </ul>
      </div>
    </div>
  </footer>
