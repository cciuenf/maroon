let default = () =>{
    <div className="flex grid gap-4 grid-cols-2 grid-rows-1 justify-center">
    // div absoluta, corpo da pagina
      <div className="uppercase text-2xl md:p-8 font-bold box-border text-left"> 
      {`Relatório Mensal de Pesquisa em Mês e ano`->React.string} </div>
      <span className="text-blue-500 uppercase font-black bg-white rounded-3xl
                       box-border text-center"> {`Voltar`->React.string} </span>
    //  <Button `Voltar`/>
      <TextBox placeholder=`Ações de Planejamento e Construção da Pesquisa`/>
      <TextBox placeholder=`Participação em Grupos de Estudo`/>
      <TextBox placeholder=`Reuniões de Orientação`/>
      <TextBox placeholder=`Ações de Pesquisa de Campo, Análise de Dados e Construção Audiovisual`/>
      <TextBox placeholder=`Participaçãm em Treinamentos e Cursos PEA Pescarte`/>
      <TextBox placeholder=`Publicação`/>
      <TextBox placeholder=`Planejamento de Estudos ou de Pesquisa`/>
    </div>
}