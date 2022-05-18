@genType
type t = [
| #primary
| #outline
| #transparent
// | #light
]

let args: array<t> = [
  #primary,
  #outline,
  #transparent,
  // #light,
]

type r<'a> = {
  primary: 'a,
  outline: 'a,
  transparent: 'a,
  // light: 'a,
}

type value = {
  @as("--text-color") text: string,
  @as("--background-color") background: string,
  @as("--border-color") border: string,
  @as("--outline-color") outline: string,
}

type options = r<value>
type variant = r<string>

type output = {
  color: string,
  backgroundColor: string,
  borderColor: string,
  outline: string,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #primary

let options: options = {
  primary: {
    text: "var(--text-color)",
    background: "var(--background-color)",
    border: "var(--border-color)",
    outline: "var(--outline-color)",
  },

  outline: {
    text: "var(--background-color)",
    background: "transparent",
    border: "var(--background-color)",
    outline: "var(--outline-color)",
  },

  transparent: {
    text: "var(--background-color)",
    background: "transparent",
    border: "transparent",
    outline: "var(--outline-color)",
  },

  // light: {
  //   normal: {
  //     text: "",
  //     background: "",
  //     border: "",
  //     outline: "",
  //   },

  //   hover: {
  //     text: "",
  //     background: "",
  //     border: "",
  //     outline: "",
  //   },

  //   disabled: {
  //     text: "",
  //     background: "",
  //     border: "",
  //     outline: "",
  //   },

  //   focused: {
  //     text: "",
  //     background: "",
  //     border: "",
  //     outline: "",
  //   },

  //   pressed: {
  //     text: "",
  //     background: "",
  //     border: "",
  //     outline: "",
  //   },
  // },
}
