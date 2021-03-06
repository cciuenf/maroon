module Array = Js.Array2

let hasInvalidFields = (fieldState: array<('a, ReForm.fieldState)>) => {
  fieldState->Array.some(((_, state)) =>
    switch state {
    | Error(_)
    | Pristine
    | NestedErrors(_) => true
    | _ => false
    }
  )
}

let getInputValue = ReForm.Helpers.handleChange
