type request = {
  cpf: string,
  password: string,
}

type jwtResponse = {
  celular: string,
  cpf: string,
  dataNascimento: string,
  email: string,
  endereco: string,
  nomeCompleto: string,
  perfil: string,
  permissoes: option<array<string>>,
  token: string,
}

type user = {user: jwtResponse}

type response = Codecs.dataResponse<user>

let request = Jzon.object2(
  ({cpf, password}) => (cpf, password),
  ((cpf, password)) => {cpf: cpf, password: password}->Ok,
  Jzon.field("cpf", Jzon.string),
  Jzon.field("password", Jzon.string),
)

let response = Codecs.dataResponse(
  Jzon.object1(
    ({user}) => user,
    user => {user: user}->Ok,
    Jzon.field(
      "user",
      Jzon.object9(
        ({
          celular,
          cpf,
          dataNascimento,
          email,
          endereco,
          nomeCompleto,
          perfil,
          permissoes,
          token,
        }) => (
          celular,
          cpf,
          dataNascimento,
          email,
          endereco,
          nomeCompleto,
          perfil,
          permissoes,
          token,
        ),
        ((
          celular,
          cpf,
          dataNascimento,
          email,
          endereco,
          nomeCompleto,
          perfil,
          permissoes,
          token,
        )) =>
          {
            celular: celular,
            cpf: cpf,
            dataNascimento: dataNascimento,
            email: email,
            endereco: endereco,
            nomeCompleto: nomeCompleto,
            perfil: perfil,
            permissoes: permissoes,
            token: token,
          }->Ok,
        Jzon.field("celular", Jzon.string),
        Jzon.field("cpf", Jzon.string),
        Jzon.field("dataNascimento", Jzon.string),
        Jzon.field("email", Jzon.string),
        Jzon.field("endereco", Jzon.string),
        Jzon.field("nomeCompleto", Jzon.string),
        Jzon.field("perfil", Jzon.string),
        Jzon.field("permissoes", Jzon.array(Jzon.string))->Jzon.optional,
        Jzon.field("token", Jzon.string),
      ),
    ),
  ),
)
