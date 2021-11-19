type contact = {celular: string, email: string, endereco: string}

type request = {
  contato: contact,
  cpf: string,
  dataNascimento: string,
  nomeCompleto: string,
  password: string,
  passwordConfirmation: string,
}

type signupResponse = {
  ativo: bool,
  confirmado: bool,
  dataNascimento: string,
  nomeCompleto: string,
  perfil: string,
}

type user = {user: signupResponse}

type response = Codecs.dataResponse<user>

let request = Jzon.object6(
  ({contato, cpf, dataNascimento, nomeCompleto, password, passwordConfirmation}) => (
    contato,
    cpf,
    dataNascimento,
    nomeCompleto,
    password,
    passwordConfirmation,
  ),
  ((contato, cpf, dataNascimento, nomeCompleto, password, passwordConfirmation)) =>
    {
      contato: contato,
      cpf: cpf,
      dataNascimento: dataNascimento,
      nomeCompleto: nomeCompleto,
      password: password,
      passwordConfirmation: passwordConfirmation,
    }->Ok,
  Jzon.field(
    "contato",
    Jzon.object3(
      ({celular, email, endereco}) => (celular, email, endereco),
      ((celular, email, endereco)) => {celular: celular, email: email, endereco: endereco}->Ok,
      Jzon.field("celular", Jzon.string),
      Jzon.field("email", Jzon.string),
      Jzon.field("endereco", Jzon.string),
    ),
  ),
  Jzon.field("cpf", Jzon.string),
  Jzon.field("dataNascimento", Jzon.string),
  Jzon.field("nomeCompleto", Jzon.string),
  Jzon.field("password", Jzon.string),
  Jzon.field("passwordConfirmation", Jzon.string),
)

let response = Codecs.dataResponse(
  Jzon.object1(
    ({user}) => user,
    user => {user: user}->Ok,
    Jzon.field(
      "user",
      Jzon.object5(
        ({ativo, confirmado, dataNascimento, nomeCompleto, perfil}) => (
          ativo,
          confirmado,
          dataNascimento,
          nomeCompleto,
          perfil,
        ),
        ((ativo, confirmado, dataNascimento, nomeCompleto, perfil)) =>
          {
            ativo: ativo,
            confirmado: confirmado,
            dataNascimento: dataNascimento,
            nomeCompleto: nomeCompleto,
            perfil: perfil,
          }->Ok,
        Jzon.field("ativo", Jzon.bool),
        Jzon.field("confirmado", Jzon.bool),
        Jzon.field("dataNascimento", Jzon.string),
        Jzon.field("nomeCompleto", Jzon.string),
        Jzon.field("perfil", Jzon.string),
      ),
    ),
  ),
)
