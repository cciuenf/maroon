open Chakra

@react.component
let make = (~children) =>
  <Flex
    _as="nav"
    align={#center}
    justify={#spaceBetween}
    wrap={#wrap}
    w={#percent(100.)}
    mb={#8}
    p={#8}
  >
    {children}
  </Flex>
