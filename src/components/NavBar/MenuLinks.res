open Chakra
open NavBarTypes

module GuestMenu = {
  @react.component
  let make = () => <>
    <MenuItem href="/projeto"> {`O projeto`->React.string} </MenuItem>
    <MenuItem href="/campo"> {`campo`->React.string} </MenuItem>
    <MenuItem href="/pesquisa"> {`pesquisa`->React.string} </MenuItem>
    <MenuItem href="/pedagogico"> {`pedagógico`->React.string} </MenuItem>
    <MenuItem href="/museu-da-pesca"> {`museu da pesca`->React.string} </MenuItem>
    <MenuItem href="/banco-de-dados"> {`banco de dados`->React.string} </MenuItem>
    <MenuItem href="/pgtrs"> {`pgtrs`->React.string} </MenuItem>
    <MenuItem href="/censo"> {`censo da pesca`->React.string} </MenuItem>
    <MenuItem href="/agenda-socioambiental"> {`agenda socioambiental`->React.string} </MenuItem>
    <MenuItem href="/acessar"> {`acessar`->React.string} </MenuItem>
    <MenuItem href="/contato"> {`contato`->React.string} </MenuItem>
  </>
}

module AuthenticatedMenu = {
  @react.component
  let make = () => <>
    <MenuItem href="/app/perfil"> {`perfil`->React.string} </MenuItem>
    <MenuItem href="/app/relatorios"> {`relatórios`->React.string} </MenuItem>
    <MenuItem href="/app/midias"> {`mídias`->React.string} </MenuItem>
    <MenuItem href="/app/agenda"> {`agenda`->React.string} </MenuItem>
    <MenuItem href="/app/notificacoes"> {`notificações`->React.string} </MenuItem>
    <MenuItem href="/app/sair"> {`sair`->React.string} </MenuItem>
  </>
}

@react.component
let make = (~navbarState) => {
  let (user, _dispatch) = UserContext.useUser()

  let isOpen = toBool(navbarState)

  <Box
    display={#array([isOpen ? #block : #none, #block])} flexBasis={#array([#percent(100.), #auto])}>
    <Stack
      spacing={#8}
      align={#center}
      justify={#array([#center, #spaceBetween, #flexEnd, #flexEnd])}
      direction={#array([#column, #row, #row, #row])}
      pt={#array([#4, #4, #0, #0])}>
      {switch user {
      | Guest => <GuestMenu />
      | Authenticated => <AuthenticatedMenu />
      }}
    </Stack>
  </Box>
}
