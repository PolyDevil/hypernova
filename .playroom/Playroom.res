type t = {
  group: string,
  name: string,
  code: string,
}

type htmlTag = [
  | AHTML.tag
  | ButtonHTML.tag
]

type tag =
  | HTMLTag(htmlTag)
  | HTMLSet(array<htmlTag>)

let getName = (
  ~tag,
  ~description: string,
) => {
  switch tag {
  | HTMLTag(pv) => `<${pv :> string}>: ${description}`
  | HTMLSet(a) => `[${Belt.Array.reduce(a, "", (a, b) => a ++ (a === "" ? "" : " ") ++ (b :> string))}]: ${description} Group`
  }
}

type value =
  | Number(int)
  | String(string)
  | Boolean(bool)

type prop = (string, value)

let attributeFromProp = (. acc, (k, v)) =>
  acc ++ " " ++ k ++ "=" ++ switch v {
  | Number(int) => `{${int -> Belt.Int.toString}}`
  | String(s) => `"${s}"`
  | Boolean(b) => `{${b == true ? "true" : "false"}}`
  }

let getCode = (
  ~component: string,
  ~content: option<string>,
  ~props: list<prop>,
) => {
  let attributes = props -> Belt.List.reduceU("", attributeFromProp);

  switch content {
  | Some(s) => `<${component}${attributes}>${s}</${component}>`
  | None => `<${component}${attributes} />`
  }
}
