module FormFields = %lenses(
  type state = {
    description: string,
    lattes: string,
  }
)

include ReForm.Make(FormFields)

let initialState: FormFields.state = {
  description: "",
  lattes: "",
}
let useForm = use