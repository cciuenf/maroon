// open Next
let default = () => {
  //let router = Router.useRouter()
  let editIcon = "/assets/icons/editar_perfil.svg"
  let pwdChange = "/assets/icons/cadeado.svg"
  let plus = "/assets/icons/cadeado.svg"
  <div className="flex bg-blue-500 h-screen">
    // div absoluta, corpo da pagina
    <div className="flex flex-row font-sans sm:space-x-8 md:space-x-24 lg:space-x-0">
      // div que contém os dados a esquerda e direita
      <div
        className="flex flex-col space-y-10 w-2/6 items-center mt-12 sm:mr-12 sm:ml-24 md:ml-48 lg:ml-96">
        // div a esquerda
        <div className="flex flex-col space-y-6 uppercase text-white items-center">
          //div nome foto participaçao
          <div className="bg-blue-100 rounded-full">
            // div foto
            <img width="150" height="150" src="/assets/icons/foto_perfil.svg" />
          </div>
          <div className="font-bold text-2xl"> {`nome do pesquisador`->React.string} </div>
          <div className="font-semibold text-xl"> {`tipo de participação`->React.string} </div>
        </div>
        <div className="flex flex-col space-y-3 text-blue-700">
          // div botões
          <div> <Button label="editar perfil" onClick={_e => ()} icon={editIcon} /> </div>
          <div> <Button label="alterar senha" onClick={_e => ()} icon={pwdChange} /> </div>
          <div> <Button label="ver mais" onClick={_e => ()} icon={plus} /> </div>
        </div>
      </div>
      <div className="flex flex-col w-4/6 text-white mt-24">
        // div direita
        <div className="uppercase font-bold text-2xl mb-4"> {`biografia`->React.string} </div>
        <div className="sm:mr-24 md:mr-48 lg:mr-96 mb-12 text-xl lg:text-2xl">
          {`Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam tincidunt erat, convallis luctus ex sollicitudin vel. Sed vel euismod tellus. Sed ut orci eu ante pulvinar commodo vel in magna. Maecenas malesuada dolor sed semper dictum. Morbi tincidunt pretium interdum. Vestibulum rhoncus, diam sed semper scelerisque, nulla odio viverra nibh, vitae finibus nibh tortor at quam. Nunc et euismod odio. Morbi tempus luctus nulla sed pretium. Pellentesque pretium gravida libero quis placerat. Phasellus lacinia nunc in velit viverra faucibus. Fusce nec erat vel ligula fringilla luctus sed ut sem. Proin quis enim vitae augue rhoncus tincidunt. Aenean dignissim augue vitae odio gravida ornare.

Sed tempor lorem nisl, non pulvinar tortor semper ut. Nullam in nisi id ante ullamcorper dapibus rhoncus ac metus. Nulla facilisi. Curabitur nulla ante, dignissim id nunc non, porttitor commodo sapien. Morbi non facilisis augue, ut vestibulum magna. Nunc placerat urna gravida nibh congue commodo. Nullam volutpat scelerisque nisl, id tincidunt orci auctor vitae. Suspendisse at magna venenatis, egestas lorem sed, euismod justo. Quisque elementum, lectus a accumsan gravida, lacus odio tempus felis, in gravida enim lorem at odio. Aliquam tincidunt mauris velit, nec vehicula risus mattis et. Proin viverra libero nec nunc consectetur dignissim. Suspendisse`->React.string}
        </div>
        <div className="uppercase font-bold text-2xl mb-4"> {`lattes`->React.string} </div>
        <div className="text-2xl"> {`https://lattes.cnpq.br/`->React.string} </div>
      </div>
    </div>
  </div>
}
