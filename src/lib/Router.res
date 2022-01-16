type routes =
  | Landing
  | Signin
  | Signup
  | Profile(string)
  | NotFound
  | Project
  | Camp
  | Search
  | Pedagogical
  | Museum
  | Database
  | Pgtrs
  | Census
  | Schedule
  | Contact
  | Reports
  | Report(string)
  | Medias
  | Calendar
  | Notifications
  | LogOut

let toString = route =>
  switch route {
  | Landing => "/"
  | Signin => "/acessar"
  | Signup => "/app/cadastrar"
  | Profile(id) => `/app/perfil/${id}`
  | NotFound => "/not-found"
  | Project => "/projeto"
  | Camp => "/campo"
  | Search => "/pesquisa"
  | Pedagogical => "/pedagogico"
  | Museum => "/museu-da-pesca"
  | Database => "/banco-de-dados"
  | Pgtrs => "/pgtrs"
  | Census => "/censo"
  | Schedule => "/agenda-socioambiental"
  | Contact => "/contato"
  | Reports => "/app/relatorios"
  | Report(id) => `/app/relatorio/${id}`
  | Medias => "/app/midias"
  | Calendar => "/app/agenda"
  | Notifications => "/app/notificacoes"
  | LogOut => "/app/sair"
  }

let routeFromUrl = (router: Next.Router.router) =>
  switch router.pathname {
  | "/" => Landing
  | "/projeto" => Project
  | "/campo" => Camp
  | "/pesquisa" => Search
  | "/pedagogico" => Pedagogical
  | "/museu-da-pesca" => Museum
  | "/banco-de-dados" => Database
  | "/pgtrs" => Pgtrs
  | "/censo" => Census
  | "/agenda-socioambiental" => Schedule
  | "/contato" => Contact
  | "/acessar" => Signin
  | "/app/cadastrar" => Signup
  | "/app/relatorios" => Reports
  | "/app/midias" => Medias
  | "/app/agenda" => Calendar
  | "/app/notificacoes" => Notifications
  | "/app/sair" => LogOut
  | "/app/relatorio" =>
    switch Js.Dict.get(router.query, "rid") {
    | Some(pid) => Report(pid)
    | None => Report("")
    }
  | "/app/perfil" =>
    switch Js.Dict.get(router.query, "pid") {
    | Some(pid) => Profile(pid)
    | None => Profile("")
    }
  | _ => NotFound
  }

let push = (router: Next.Router.router, route: routes) => Next.Router.push(router, toString(route))

let useRouter = Next.Router.useRouter
