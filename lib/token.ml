(** In lexical analysis, a token is a simple data structure
that represents a small piece of syntax in our programming language *)

module Token = struct
  type token =
    (* undefined char [group] *)
    | UNDEF
    (* end-of-file *)
    | EOF
    (* atoms *)
    | ID of string
    | Int of int
    (* operators *)
    | ADD
    | SUB
    | MUL
    | DIV
    | POW
    | EQ
    (* delimiters *)
    | COMMA
    | COLON
    | SEMICOLON
    (* parens *)
    (* () *)
    | LP
    | RP
    (* [] *)
    | LQ
    | RQ
    (* {} *)
    | LC
    | RC
end
