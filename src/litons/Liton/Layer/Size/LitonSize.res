@genType
type t = [
| #xl
| #l16 // well, this is fucked up, why is this a thing?
| #l14
| #m
| #s
]

let args: array<t> = [
  #xl,
  #l16,
  #l14,
  #m,
  #s,
]

type r<'a> = {
  xl: 'a,
  l16: 'a,
  l14: 'a,
  m: 'a,
  s: 'a,
}

type value = {
  fontSize: string,
  paddingBlock: string,
  paddingInline: string,
  minWidth: string,
}

type options = r<value>
type variant = r<string>
type output = {
  fontSize: string,
  paddingBlock: string,
  paddingInline: string,
  minWidth: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #m

let options: options = {
  xl: {
    fontSize: "16px",
    paddingBlock: "12px",
    paddingInline: "20px",
    minWidth: "104px",
  },
  l16: {
    fontSize: `16px`,
    paddingBlock: "8px",
    paddingInline: "16px",
    minWidth: "96px",
  },
  l14: {
    fontSize: `14px`,
    paddingBlock: "8px",
    paddingInline: "16px",
    minWidth: "96px",
  },
  m: {
    fontSize: `14px`,
    paddingBlock: "4px",
    paddingInline: "12px",
    minWidth: "88px",
  },
  s: {
    fontSize: `12px`,
    paddingBlock: "4px",
    paddingInline: "12px",
    minWidth: "80px",
  },
}
