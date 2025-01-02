
let dirs =
  Sys.mkdir ".vscode" 0o750

let settings =
  let f = open_out ".vscode/settings.json"  in
  close_out f
