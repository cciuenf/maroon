@module("react-use")
external useClickAway: (React.ref<'value>, ReactEvent.UI.t => unit) => unit = "useClickAway"

@module("react-use")
external useMedia: string => bool = "useMedia"
