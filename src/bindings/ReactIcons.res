module Bi = {
  module Menu = {
    @module("react-icons/bi") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element = "BiMenu"
  }
}

module Io = {
  module Close = {
    @module("react-icons/io5") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element = "IoClose"
  }
}
