(lang dune 3.16)

(name mlx)

(generate_opam_files true)

(source
 (github dponyatov/mlx))

(authors "Dmitry Ponyatov <dponyatov@gmail.com>")
(maintainers "Dmitry Ponyatov <dponyatov@gmail.com>")

(license MIT)

(documentation https://github.com/ponyatov/mlx)

(package
 (name mlx)
 (synopsis "OCaml MetaLanguage eXercises")
 (description "code generation")
 (depends ocaml dune utop ocamlformat)
 (tags (REPL script "code generation" compiler interpreter)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
