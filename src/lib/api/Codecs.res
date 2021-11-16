type dataResponse<'a> = {data: 'a}

let dataResponse = fields =>
  Jzon.object1(({data}) => data, data => {data: data}->Ok, Jzon.field("data", fields))
