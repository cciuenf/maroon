@react.component
let make = () =>

 <header className="bg-white w-full py-8 mb-10">
            <div className="w-full justify-evenly flex items-center">
              <div>
               <img className="h-16" src="assets/logoPescarte.png" />
              </div>
              <div className="hidden md:block">
                <div className="ml-10 flex items-baseline space-x-4">
                  <a
                    className="text-blue-800 hover:text-white px-3 py-2 rounded-md text-2xl font-medium"
                    href="/#">
                    {`Perfil`->React.string}
                  </a>
                  <a
                    className="text-blue-800 hover:text-white px-3 py-2 rounded-md text-2xl font-medium"
                    href="/#">
                    {`Relatórios`->React.string}
                  </a>
                  <a
                    className="text-blue-800 hover:text-white px-3 py-2 rounded-md text-2xl font-medium"
                    href="/#">
                    {`Mídias`->React.string}
                  </a>
                  <a
                    className="text-blue-800 hover:text-white px-3 py-2 rounded-md text-2xl font-medium"
                    href="/#">
                    {`Agenda`->React.string}
                  </a>
                  <a
                    className="text-blue-800 hover:text-white px-3 py-2 rounded-md text-2xl font-medium"
                    href="/#">
                    {`Sair`->React.string}
                  </a>
                </div>
              </div>
            </div>
            <div className="block"> <div className="ml-4 flex items-center md:ml-6" /> </div>
            <div className="-mr-2 flex md:hidden">
              <button
                className="text-gray-800 dark:text-white hover:text-gray-300 inline-flex items-center justify-center p-2 rounded-md focus:outline-none">
                <svg
                  width="20"
                  height="20"
                  fill="currentColor"
                  className="h-8 w-8"
                  viewBox="0 0 1792 1792"
                  xmlns="http://www.w3.org/2000/svg">
                  <path
                    d="M1664 1344v128q0 26-19 45t-45 19h-1408q-26 0-45-19t-19-45v-128q0-26 19-45t45-19h1408q26 0 45 19t19 45zm0-512v128q0 26-19 45t-45 19h-1408q-26 0-45-19t-19-45v-128q0-26 19-45t45-19h1408q26 0 45 19t19 45zm0-512v128q0 26-19 45t-45 19h-1408q-26 0-45-19t-19-45v-128q0-26 19-45t45-19h1408q26 0 45 19t19 45z"
                  />
                </svg>
              </button>
          </div>
          <div className="md:hidden">
            <div className="px-2 pt-2 pb-3 space-y-1 sm:px-3">
              <a
                className="text-gray-300 hover:text-gray-800 dark:hover:text-white block px-3 py-2 rounded-md text-base font-medium"
                href="/#">
                {`Perfil`->React.string}
              </a>
              <a
                className="text-gray-800 dark:text-white block px-3 py-2 rounded-md text-base font-medium"
                href="/#">
                {`Relatórios`->React.string}
              </a>
              <a
                className="text-gray-300 hover:text-gray-800 dark:hover:text-white block px-3 py-2 rounded-md text-base font-medium"
                href="/#">
                {`Mídias`->React.string}
              </a>
              <a
                className="text-gray-300 hover:text-gray-800 dark:hover:text-white block px-3 py-2 rounded-md text-base font-medium"
                href="/#">
                {`Agenda`->React.string}
              </a>
              <a
                className="text-gray-300 hover:text-gray-800 dark:hover:text-white block px-3 py-2 rounded-md text-base font-medium"
                href="/#">
                {`Sair`->React.string}
              </a>
            </div>
          </div>
        </header>