module Icons = {
  type icon = [
    | #anexo
    | #bell
    | #cadeado
    | #check_branco
    | #download
    | #editar
    | #editar_perfil
    | #foto_perfil
    | #lixeira
    | #loading
    | #mesclar
    | #olho_visto
    | #upload
  ]

  let basePath = "/assets/icons/"

  let make = (iconName: icon) =>
    switch iconName {
    | #anexo => basePath ++ "anexo.svg"
    | #bell => basePath ++ "bell.svg"
    | #cadeado => basePath ++ "cadeado.svg"
    | #check_branco => basePath ++ "check_branco.svg"
    | #download => basePath ++ "download.svg"
    | #editar => basePath ++ "editar.svg"
    | #editar_perfil => basePath ++ "editar_perfil.svg"
    | #foto_perfil => basePath ++ "foto_perfil.svg"
    | #lixeira => basePath ++ "lixeira.svg"
    | #loading => basePath ++ "loading.svg"
    | #mesclar => basePath ++ "mesclar.svg"
    | #olho_visto => basePath ++ "olho_visto.svg"
    | #upload => basePath ++ "upload.svg"
    }
}
