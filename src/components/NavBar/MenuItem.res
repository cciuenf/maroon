open Chakra

@react.component
let make = (~children, ~href="/") =>
  <Next.Link href> <a> <Text display=#block> {children} </Text> </a> </Next.Link>
