@genType
type t = [
// | #normal
| #warning
| #danger
| #accent
]

let args: array<t> = [
  // #normal,
  #warning,
  #danger,
  #accent,
]

type r<'a> = {
  // normal: 'a,
  warning: 'a,
  danger: 'a,
  accent: 'a,
}

type state = {
  @as("--text-color") text: string,
  @as("--background-color") background: string,
  @as("--border-color") border: string,
  @as("--outline-color") outline: string,
}

type value = {
  normal: state,
  hover: state,
  disabled: state,
  focused: state,
  pressed: state,
}

type options = r<value>
type variant = r<string>

type output = {
  @as("--text-color") text: string,
  @as("--background-color") background: string,
  @as("--border-color") border: string,
  @as("--outline-color") outline: string,
  transition: string,

  @as(":hover") hover: state,
  @as(":disabled") disabled: state,
  @as(":focus") focused: state,
  @as(":active") pressed: state,
}
type resolve = (value) => output
type make = (. t) => string

let initial: t = #accent

let options: options = {
  // normal: {
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

  warning: {
    normal: {
      text: Theme.color.white,
      background: Theme.color.warning40,
      border: Theme.color.warning40,
      outline: "transparent",
    },

    hover: {
      text: Theme.color.white,
      background: Theme.color.warning50,
      border: Theme.color.warning50,
      outline: "transparent",
    },

    disabled: {
      text: Theme.color.white,
      background: Theme.color.gray30,
      border: Theme.color.gray30,
      outline: "transparent",
    },

    focused: {
      text: Theme.color.white,
      background: Theme.color.warning40,
      border: Theme.color.warning40,
      outline: Theme.color.focusRing,
    },

    pressed: {
      text: Theme.color.white,
      background: Theme.color.warningPressed,
      border: Theme.color.warningPressed,
      outline: "transparent",
    },
  },

  danger: {
    normal: {
      text: Theme.color.white,
      background: Theme.color.danger40,
      border: Theme.color.danger40,
      outline: "transparent",
    },

    hover: {
      text: Theme.color.white,
      background: Theme.color.danger50,
      border: Theme.color.danger50,
      outline: "transparent",
    },

    disabled: {
      text: Theme.color.white,
      background: Theme.color.gray30,
      border: Theme.color.gray30,
      outline: "transparent",
    },

    focused: {
      text: Theme.color.white,
      background: Theme.color.danger40,
      border: Theme.color.danger40,
      outline: Theme.color.focusRing,
    },

    pressed: {
      text: Theme.color.white,
      background: Theme.color.dangerPressed,
      border: Theme.color.dangerPressed,
      outline: "transparent",
    },
  },

  accent: {
    normal: {
      text: Theme.color.white,
      background: Theme.color.primary40,
      border: Theme.color.primary40,
      outline: "transparent",
    },

    hover: {
      text: Theme.color.white,
      background: Theme.color.primary50,
      border: Theme.color.primary50,
      outline: "transparent",
    },

    disabled: {
      text: Theme.color.white,
      background: Theme.color.gray30,
      border: Theme.color.gray30,
      outline: "transparent",
    },

    focused: {
      text: Theme.color.white,
      background: Theme.color.primary40,
      border: Theme.color.primary40,
      outline: Theme.color.focusRing,
    },

    pressed: {
      text: Theme.color.white,
      background: Theme.color.primaryPressed,
      border: Theme.color.primaryPressed,
      outline: "transparent",
    },
  },
}
