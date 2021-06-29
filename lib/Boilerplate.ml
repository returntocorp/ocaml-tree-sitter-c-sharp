(**
   Boilerplate to be used as a template when mapping the c_sharp CST
   to another type of tree.
*)

(* Disable warnings against unused variables *)
[@@@warning "-26-27"]

(* Disable warning against unused 'rec' *)
[@@@warning "-39"]

type env = unit

let token (env : env) (_tok : Tree_sitter_run.Token.t) =
  failwith "not implemented"

let blank (env : env) () =
  failwith "not implemented"

let todo (env : env) _ =
   failwith "not implemented"

let map_identifier_token (env : env) (tok : CST.identifier_token) =
  token env tok (* identifier_token *)

let map_preproc_directive_start (env : env) (tok : CST.preproc_directive_start) =
  token env tok (* pattern #[ \t]* *)

let map_imm_tok_pat_684220d (env : env) (tok : CST.imm_tok_pat_684220d) =
  token env tok (* pattern "[^'\\\\]" *)

let map_integer_literal (env : env) (tok : CST.integer_literal) =
  token env tok (* integer_literal *)

let map_interpolated_verbatim_string_text_fragment (env : env) (tok : CST.interpolated_verbatim_string_text_fragment) =
  token env tok (* pattern "[^{\"]+" *)

let map_assignment_operator (env : env) (x : CST.assignment_operator) =
  (match x with
  | `EQ tok -> token env tok (* "=" *)
  | `PLUSEQ tok -> token env tok (* "+=" *)
  | `DASHEQ tok -> token env tok (* "-=" *)
  | `STAREQ tok -> token env tok (* "*=" *)
  | `SLASHEQ tok -> token env tok (* "/=" *)
  | `PERCEQ tok -> token env tok (* "%=" *)
  | `AMPEQ tok -> token env tok (* "&=" *)
  | `HATEQ tok -> token env tok (* "^=" *)
  | `BAREQ tok -> token env tok (* "|=" *)
  | `LTLTEQ tok -> token env tok (* "<<=" *)
  | `GTGTEQ tok -> token env tok (* ">>=" *)
  | `QMARKQMARKEQ tok -> token env tok (* "??=" *)
  )

let map_preproc_message (env : env) (tok : CST.preproc_message) =
  token env tok (* pattern [^\n\r]+ *)

let map_preproc_directive_end (env : env) (tok : CST.preproc_directive_end) =
  token env tok (* preproc_directive_end *)

let map_real_literal (env : env) (tok : CST.real_literal) =
  token env tok (* real_literal *)

let map_pat_52ffbd7 (env : env) (tok : CST.pat_52ffbd7) =
  token env tok (* pattern "[^}\"]+" *)

let map_preproc_integer_literal (env : env) (tok : CST.preproc_integer_literal) =
  token env tok (* pattern [0-9]+ *)

let map_default_switch_label (env : env) ((v1, v2) : CST.default_switch_label) =
  let v1 = token env v1 (* "default" *) in
  let v2 = token env v2 (* ":" *) in
  todo env (v1, v2)

let map_predefined_type (env : env) (tok : CST.predefined_type) =
  token env tok (* predefined_type *)

let map_modifier (env : env) (x : CST.modifier) =
  (match x with
  | `Abst tok -> token env tok (* "abstract" *)
  | `Async tok -> token env tok (* "async" *)
  | `Const tok -> token env tok (* "const" *)
  | `Extern tok -> token env tok (* "extern" *)
  | `Fixed tok -> token env tok (* "fixed" *)
  | `Inte tok -> token env tok (* "internal" *)
  | `New tok -> token env tok (* "new" *)
  | `Over tok -> token env tok (* "override" *)
  | `Part tok -> token env tok (* "partial" *)
  | `Priv tok -> token env tok (* "private" *)
  | `Prot tok -> token env tok (* "protected" *)
  | `Public tok -> token env tok (* "public" *)
  | `Read tok -> token env tok (* "readonly" *)
  | `Ref tok -> token env tok (* "ref" *)
  | `Sealed tok -> token env tok (* "sealed" *)
  | `Static tok -> token env tok (* "static" *)
  | `Unsafe tok -> token env tok (* "unsafe" *)
  | `Virt tok -> token env tok (* "virtual" *)
  | `Vola tok -> token env tok (* "volatile" *)
  )

let map_parameter_modifier (env : env) (x : CST.parameter_modifier) =
  (match x with
  | `Ref tok -> token env tok (* "ref" *)
  | `Out tok -> token env tok (* "out" *)
  | `This tok -> token env tok (* "this" *)
  | `In tok -> token env tok (* "in" *)
  )

let map_nullable_directive (env : env) ((v1, v2, v3) : CST.nullable_directive) =
  let v1 = token env v1 (* "nullable" *) in
  let v2 =
    (match v2 with
    | `Disa tok -> token env tok (* "disable" *)
    | `Enable tok -> token env tok (* "enable" *)
    | `Rest tok -> token env tok (* "restore" *)
    )
  in
  let v3 =
    (match v3 with
    | Some x ->
        (match x with
        | `Annots tok -> token env tok (* "annotations" *)
        | `Warnis tok -> token env tok (* "warnings" *)
        )
    | None -> todo env ())
  in
  todo env (v1, v2, v3)

let map_overloadable_operator (env : env) (x : CST.overloadable_operator) =
  (match x with
  | `BANG tok -> token env tok (* "!" *)
  | `TILDE tok -> token env tok (* "~" *)
  | `PLUSPLUS tok -> token env tok (* "++" *)
  | `DASHDASH tok -> token env tok (* "--" *)
  | `True tok -> token env tok (* "true" *)
  | `False tok -> token env tok (* "false" *)
  | `PLUS tok -> token env tok (* "+" *)
  | `DASH tok -> token env tok (* "-" *)
  | `STAR tok -> token env tok (* "*" *)
  | `SLASH tok -> token env tok (* "/" *)
  | `PERC tok -> token env tok (* "%" *)
  | `HAT tok -> token env tok (* "^" *)
  | `BAR tok -> token env tok (* "|" *)
  | `AMP tok -> token env tok (* "&" *)
  | `LTLT tok -> token env tok (* "<<" *)
  | `GTGT tok -> token env tok (* ">>" *)
  | `EQEQ tok -> token env tok (* "==" *)
  | `BANGEQ tok -> token env tok (* "!=" *)
  | `GT tok -> token env tok (* ">" *)
  | `LT tok -> token env tok (* "<" *)
  | `GTEQ tok -> token env tok (* ">=" *)
  | `LTEQ tok -> token env tok (* "<=" *)
  )

let map_escape_sequence (env : env) (tok : CST.escape_sequence) =
  token env tok (* escape_sequence *)

let map_interpolated_string_text_fragment (env : env) (tok : CST.interpolated_string_text_fragment) =
  token env tok (* pattern "[^{\"\\\\\\n]+" *)

let map_string_literal_fragment (env : env) (tok : CST.string_literal_fragment) =
  token env tok (* pattern "[^\"\\\\\\n]+" *)

let map_verbatim_string_literal (env : env) (tok : CST.verbatim_string_literal) =
  token env tok (* verbatim_string_literal *)

let map_boolean_literal (env : env) (x : CST.boolean_literal) =
  (match x with
  | `True tok -> token env tok (* "true" *)
  | `False tok -> token env tok (* "false" *)
  )

let map_preproc_string_literal (env : env) (tok : CST.preproc_string_literal) =
  token env tok (* pattern "\"[^\"]*\"" *)

let map_attribute_target_specifier (env : env) ((v1, v2) : CST.attribute_target_specifier) =
  let v1 =
    (match v1 with
    | `Field tok -> token env tok (* "field" *)
    | `Event tok -> token env tok (* "event" *)
    | `Meth tok -> token env tok (* "method" *)
    | `Param tok -> token env tok (* "param" *)
    | `Prop tok -> token env tok (* "property" *)
    | `Ret tok -> token env tok (* "return" *)
    | `Type tok -> token env tok (* "type" *)
    )
  in
  let v2 = token env v2 (* ":" *) in
  todo env (v1, v2)

let map_contextual_keywords (env : env) (x : CST.contextual_keywords) =
  (match x with
  | `Asce tok -> token env tok (* "ascending" *)
  | `By tok -> token env tok (* "by" *)
  | `Desc tok -> token env tok (* "descending" *)
  | `Equals tok -> token env tok (* "equals" *)
  | `From tok -> token env tok (* "from" *)
  | `Group tok -> token env tok (* "group" *)
  | `Into tok -> token env tok (* "into" *)
  | `Join tok -> token env tok (* "join" *)
  | `Let tok -> token env tok (* "let" *)
  | `On tok -> token env tok (* "on" *)
  | `Orde tok -> token env tok (* "orderby" *)
  | `Select tok -> token env tok (* "select" *)
  | `Where tok -> token env tok (* "where" *)
  | `Add tok -> token env tok (* "add" *)
  | `Get tok -> token env tok (* "get" *)
  | `Remove tok -> token env tok (* "remove" *)
  | `Set tok -> token env tok (* "set" *)
  | `Global tok -> token env tok (* "global" *)
  | `Alias tok -> token env tok (* "alias" *)
  | `Dyna tok -> token env tok (* "dynamic" *)
  | `Nameof tok -> token env tok (* "nameof" *)
  | `Notn tok -> token env tok (* "notnull" *)
  | `Unma tok -> token env tok (* "unmanaged" *)
  | `When tok -> token env tok (* "when" *)
  | `Yield tok -> token env tok (* "yield" *)
  )

let map_interpolated_verbatim_string_text (env : env) (x : CST.interpolated_verbatim_string_text) =
  (match x with
  | `LCURLLCURL tok -> token env tok (* "{{" *)
  | `Inte_verb_str_text_frag tok ->
      token env tok (* pattern "[^{\"]+" *)
  | `DQUOTDQUOT tok -> token env tok (* "\"\"" *)
  )

let map_endregion_directive (env : env) ((v1, v2) : CST.endregion_directive) =
  let v1 = token env v1 (* "endregion" *) in
  let v2 =
    (match v2 with
    | Some tok -> token env tok (* pattern [^\n\r]+ *)
    | None -> todo env ())
  in
  todo env (v1, v2)

let map_region_directive (env : env) ((v1, v2) : CST.region_directive) =
  let v1 = token env v1 (* "region" *) in
  let v2 =
    (match v2 with
    | Some tok -> token env tok (* pattern [^\n\r]+ *)
    | None -> todo env ())
  in
  todo env (v1, v2)

let map_error_directive (env : env) ((v1, v2) : CST.error_directive) =
  let v1 = token env v1 (* "error" *) in
  let v2 = token env v2 (* pattern [^\n\r]+ *) in
  todo env (v1, v2)

let map_warning_directive (env : env) ((v1, v2) : CST.warning_directive) =
  let v1 = token env v1 (* "warning" *) in
  let v2 = token env v2 (* pattern [^\n\r]+ *) in
  todo env (v1, v2)

let map_interpolation_format_clause (env : env) ((v1, v2) : CST.interpolation_format_clause) =
  let v1 = token env v1 (* ":" *) in
  let v2 = token env v2 (* pattern "[^}\"]+" *) in
  todo env (v1, v2)

let map_interpolated_string_text (env : env) (x : CST.interpolated_string_text) =
  (match x with
  | `LCURLLCURL tok -> token env tok (* "{{" *)
  | `Inte_str_text_frag tok ->
      token env tok (* pattern "[^{\"\\\\\\n]+" *)
  | `Esc_seq tok -> token env tok (* escape_sequence *)
  )

let map_line_directive (env : env) ((v1, v2) : CST.line_directive) =
  let v1 = token env v1 (* "line" *) in
  let v2 =
    (match v2 with
    | `Defa tok -> token env tok (* "default" *)
    | `Hidden tok -> token env tok (* "hidden" *)
    | `Prep_int_lit_opt_prep_str_lit (v1, v2) ->
        let v1 = token env v1 (* pattern [0-9]+ *) in
        let v2 =
          (match v2 with
          | Some tok -> token env tok (* pattern "\"[^\"]*\"" *)
          | None -> todo env ())
        in
        todo env (v1, v2)
    )
  in
  todo env (v1, v2)

let map_identifier (env : env) (x : CST.identifier) =
  (match x with
  | `Id_tok tok -> token env tok (* identifier_token *)
  | `Cont_keywos x -> map_contextual_keywords env x
  )

let map_literal (env : env) (x : CST.literal) =
  (match x with
  | `Null_lit tok -> token env tok (* "null" *)
  | `Bool_lit x -> map_boolean_literal env x
  | `Char_lit (v1, v2, v3) ->
      let v1 = token env v1 (* "'" *) in
      let v2 =
        (match v2 with
        | `Imm_tok_pat_684220d tok ->
            token env tok (* pattern "[^'\\\\]" *)
        | `Esc_seq tok -> token env tok (* escape_sequence *)
        )
      in
      let v3 = token env v3 (* "'" *) in
      todo env (v1, v2, v3)
  | `Real_lit tok -> token env tok (* real_literal *)
  | `Int_lit tok -> token env tok (* integer_literal *)
  | `Str_lit (v1, v2, v3) ->
      let v1 = token env v1 (* "\"" *) in
      let v2 =
        List.map (fun x ->
          (match x with
          | `Str_lit_frag tok ->
              token env tok (* pattern "[^\"\\\\\\n]+" *)
          | `Esc_seq tok -> token env tok (* escape_sequence *)
          )
        ) v2
      in
      let v3 = token env v3 (* "\"" *) in
      todo env (v1, v2, v3)
  | `Verb_str_lit tok ->
      token env tok (* verbatim_string_literal *)
  )

let map_identifier_or_global (env : env) (x : CST.identifier_or_global) =
  (match x with
  | `Global tok -> token env tok (* "global" *)
  | `Id x -> map_identifier env x
  )

let rec map_anon_choice_id_c036834 (env : env) (x : CST.anon_choice_id_c036834) =
  (match x with
  | `Id x -> map_identifier env x
  | `Disc tok -> token env tok (* "_" *)
  | `Tuple_pat x -> map_tuple_pattern env x
  )

and map_tuple_pattern (env : env) ((v1, v2, v3, v4) : CST.tuple_pattern) =
  let v1 = token env v1 (* "(" *) in
  let v2 = map_anon_choice_id_c036834 env v2 in
  let v3 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_anon_choice_id_c036834 env v2 in
      todo env (v1, v2)
    ) v3
  in
  let v4 = token env v4 (* ")" *) in
  todo env (v1, v2, v3, v4)

let map_join_into_clause (env : env) ((v1, v2) : CST.join_into_clause) =
  let v1 = token env v1 (* "into" *) in
  let v2 = map_identifier env v2 in
  todo env (v1, v2)

let rec map_variable_designation (env : env) (x : CST.variable_designation) =
  (match x with
  | `Disc tok -> token env tok (* "_" *)
  | `Paren_var_desi (v1, v2, v3) ->
      let v1 = token env v1 (* "(" *) in
      let v2 =
        (match v2 with
        | Some (v1, v2) ->
            let v1 = map_variable_designation env v1 in
            let v2 =
              List.map (fun (v1, v2) ->
                let v1 = token env v1 (* "," *) in
                let v2 = map_variable_designation env v2 in
                todo env (v1, v2)
              ) v2
            in
            todo env (v1, v2)
        | None -> todo env ())
      in
      let v3 = token env v3 (* ")" *) in
      todo env (v1, v2, v3)
  | `Id x -> map_identifier env x
  )

let rec map_preproc_binary_expression (env : env) (x : CST.preproc_binary_expression) =
  (match x with
  | `Prep_exp_BARBAR_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "||" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_AMPAMP_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "&&" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_EQEQ_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "==" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  | `Prep_exp_BANGEQ_prep_exp (v1, v2, v3) ->
      let v1 = map_preproc_expression env v1 in
      let v2 = token env v2 (* "!=" *) in
      let v3 = map_preproc_expression env v3 in
      todo env (v1, v2, v3)
  )

and map_preproc_expression (env : env) (x : CST.preproc_expression) =
  (match x with
  | `Id x -> map_identifier env x
  | `Bool_lit x -> map_boolean_literal env x
  | `Prep_int_lit tok -> token env tok (* pattern [0-9]+ *)
  | `Prep_str_lit tok ->
      token env tok (* pattern "\"[^\"]*\"" *)
  | `Prep_un_exp (v1, v2) ->
      let v1 = token env v1 (* "!" *) in
      let v2 = map_preproc_expression env v2 in
      todo env (v1, v2)
  | `Prep_bin_exp x -> map_preproc_binary_expression env x
  | `Prep_paren_exp (v1, v2, v3) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_preproc_expression env v2 in
      let v3 = token env v3 (* ")" *) in
      todo env (v1, v2, v3)
  )

let map_function_pointer_unmanaged_calling_convention (env : env) (x : CST.function_pointer_unmanaged_calling_convention) =
  (match x with
  | `Cdecl tok -> token env tok (* "Cdecl" *)
  | `Stdc tok -> token env tok (* "Stdcall" *)
  | `This tok -> token env tok (* "Thiscall" *)
  | `Fast tok -> token env tok (* "Fastcall" *)
  | `Id x -> map_identifier env x
  )

let map_anon_choice_id_c290f8e (env : env) (x : CST.anon_choice_id_c290f8e) =
  (match x with
  | `Id x -> map_identifier env x
  | `Prep_int_lit tok -> token env tok (* pattern [0-9]+ *)
  )

let map_define_directive (env : env) ((v1, v2) : CST.define_directive) =
  let v1 = token env v1 (* "define" *) in
  let v2 = map_identifier env v2 in
  todo env (v1, v2)

let map_extern_alias_directive (env : env) ((v1, v2, v3, v4) : CST.extern_alias_directive) =
  let v1 = token env v1 (* "extern" *) in
  let v2 = token env v2 (* "alias" *) in
  let v3 = map_identifier env v3 in
  let v4 = token env v4 (* ";" *) in
  todo env (v1, v2, v3, v4)

let map_undef_directive (env : env) ((v1, v2) : CST.undef_directive) =
  let v1 = token env v1 (* "undef" *) in
  let v2 = map_identifier env v2 in
  todo env (v1, v2)

let map_name_equals (env : env) ((v1, v2) : CST.name_equals) =
  let v1 = map_identifier_or_global env v1 in
  let v2 = token env v2 (* "=" *) in
  todo env (v1, v2)

let map_name_colon (env : env) ((v1, v2) : CST.name_colon) =
  let v1 = map_identifier_or_global env v1 in
  let v2 = token env v2 (* ":" *) in
  todo env (v1, v2)

let map_anon_choice_id_bf14316 (env : env) (x : CST.anon_choice_id_bf14316) =
  (match x with
  | `Id x -> map_identifier env x
  | `Tuple_pat x -> map_tuple_pattern env x
  )

let map_elif_directive (env : env) ((v1, v2) : CST.elif_directive) =
  let v1 = token env v1 (* "elif" *) in
  let v2 = map_preproc_expression env v2 in
  todo env (v1, v2)

let map_if_directive (env : env) ((v1, v2) : CST.if_directive) =
  let v1 = token env v1 (* "if" *) in
  let v2 = map_preproc_expression env v2 in
  todo env (v1, v2)

let map_function_pointer_unmanaged_calling_convention_list (env : env) ((v1, v2, v3, v4) : CST.function_pointer_unmanaged_calling_convention_list) =
  let v1 = token env v1 (* "[" *) in
  let v2 =
    map_function_pointer_unmanaged_calling_convention env v2
  in
  let v3 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 =
        map_function_pointer_unmanaged_calling_convention env v2
      in
      todo env (v1, v2)
    ) v3
  in
  let v4 = token env v4 (* "]" *) in
  todo env (v1, v2, v3, v4)

let map_pragma_directive (env : env) ((v1, v2) : CST.pragma_directive) =
  let v1 = token env v1 (* "pragma" *) in
  let v2 =
    (match v2 with
    | `Warn_choice_disa_opt_choice_id_rep_COMMA_choice_id (v1, v2, v3) ->
        let v1 = token env v1 (* "warning" *) in
        let v2 =
          (match v2 with
          | `Disa tok -> token env tok (* "disable" *)
          | `Rest tok -> token env tok (* "restore" *)
          )
        in
        let v3 =
          (match v3 with
          | Some (v1, v2) ->
              let v1 = map_anon_choice_id_c290f8e env v1 in
              let v2 =
                List.map (fun (v1, v2) ->
                  let v1 = token env v1 (* "," *) in
                  let v2 = map_anon_choice_id_c290f8e env v2 in
                  todo env (v1, v2)
                ) v2
              in
              todo env (v1, v2)
          | None -> todo env ())
        in
        todo env (v1, v2, v3)
    | `Chec_prep_str_lit_prep_str_lit_prep_str_lit (v1, v2, v3, v4) ->
        let v1 = token env v1 (* "checksum" *) in
        let v2 = token env v2 (* pattern "\"[^\"]*\"" *) in
        let v3 = token env v3 (* pattern "\"[^\"]*\"" *) in
        let v4 = token env v4 (* pattern "\"[^\"]*\"" *) in
        todo env (v1, v2, v3, v4)
    )
  in
  todo env (v1, v2)

let map_function_pointer_calling_convention (env : env) (x : CST.function_pointer_calling_convention) =
  (match x with
  | `Mana tok -> token env tok (* "managed" *)
  | `Unma_opt_func_poin_unma_call_conv_list (v1, v2) ->
      let v1 = token env v1 (* "unmanaged" *) in
      let v2 =
        (match v2 with
        | Some x ->
            map_function_pointer_unmanaged_calling_convention_list env x
        | None -> todo env ())
      in
      todo env (v1, v2)
  )

let rec map_anon_choice_param_ce11a32 (env : env) (x : CST.anon_choice_param_ce11a32) =
  (match x with
  | `Param x -> map_parameter env x
  | `Param_array (v1, v2, v3, v4) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = token env v2 (* "params" *) in
      let v3 =
        (match v3 with
        | `Array_type x -> map_array_type env x
        | `Null_type x -> map_nullable_type env x
        )
      in
      let v4 = map_identifier env v4 in
      todo env (v1, v2, v3, v4)
  )

and map_anon_opt_cst_pat_rep_interp_alig_clause_080fdff (env : env) (opt : CST.anon_opt_cst_pat_rep_interp_alig_clause_080fdff) =
  (match opt with
  | Some (v1, v2) ->
      let v1 = map_constant_pattern env v1 in
      let v2 =
        List.map (map_interpolation_alignment_clause env) v2
      in
      todo env (v1, v2)
  | None -> todo env ())

and map_anonymous_object_member_declarator (env : env) (x : CST.anonymous_object_member_declarator) =
  (match x with
  | `Name_equals_exp (v1, v2) ->
      let v1 = map_name_equals env v1 in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `Exp x -> map_constant_pattern env x
  )

and map_argument (env : env) ((v1, v2, v3) : CST.argument) =
  let v1 =
    (match v1 with
    | Some x -> map_name_colon env x
    | None -> todo env ())
  in
  let v2 =
    (match v2 with
    | Some x ->
        (match x with
        | `Ref tok -> token env tok (* "ref" *)
        | `Out tok -> token env tok (* "out" *)
        | `In tok -> token env tok (* "in" *)
        )
    | None -> todo env ())
  in
  let v3 =
    (match v3 with
    | `Exp x -> map_constant_pattern env x
    | `Decl_exp x -> map_declaration_expression env x
    )
  in
  todo env (v1, v2, v3)

and map_argument_list (env : env) ((v1, v2, v3) : CST.argument_list) =
  let v1 = token env v1 (* "(" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = map_argument env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_argument env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 = token env v3 (* ")" *) in
  todo env (v1, v2, v3)

and map_array_rank_specifier (env : env) ((v1, v2, v3) : CST.array_rank_specifier) =
  let v1 = token env v1 (* "[" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 =
          (match v1 with
          | Some x -> map_constant_pattern env x
          | None -> todo env ())
        in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 =
              (match v2 with
              | Some x -> map_constant_pattern env x
              | None -> todo env ())
            in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 = token env v3 (* "]" *) in
  todo env (v1, v2, v3)

and map_array_type (env : env) ((v1, v2) : CST.array_type) =
  let v1 = map_type_pattern env v1 in
  let v2 = map_array_rank_specifier env v2 in
  todo env (v1, v2)

and map_arrow_expression_clause (env : env) ((v1, v2) : CST.arrow_expression_clause) =
  let v1 = token env v1 (* "=>" *) in
  let v2 = map_constant_pattern env v2 in
  todo env (v1, v2)

and map_attribute (env : env) ((v1, v2) : CST.attribute) =
  let v1 = map_name env v1 in
  let v2 =
    (match v2 with
    | Some x -> map_attribute_argument_list env x
    | None -> todo env ())
  in
  todo env (v1, v2)

and map_attribute_argument (env : env) ((v1, v2) : CST.attribute_argument) =
  let v1 =
    (match v1 with
    | Some x ->
        (match x with
        | `Name_equals x -> map_name_equals env x
        | `Name_colon x -> map_name_colon env x
        )
    | None -> todo env ())
  in
  let v2 = map_constant_pattern env v2 in
  todo env (v1, v2)

and map_attribute_argument_list (env : env) ((v1, v2, v3) : CST.attribute_argument_list) =
  let v1 = token env v1 (* "(" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = map_attribute_argument env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_attribute_argument env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 = token env v3 (* ")" *) in
  todo env (v1, v2, v3)

and map_attribute_list (env : env) ((v1, v2, v3, v4, v5, v6) : CST.attribute_list) =
  let v1 = token env v1 (* "[" *) in
  let v2 =
    (match v2 with
    | Some x -> map_attribute_target_specifier env x
    | None -> todo env ())
  in
  let v3 = map_attribute env v3 in
  let v4 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_attribute env v2 in
      todo env (v1, v2)
    ) v4
  in
  let v5 =
    (match v5 with
    | Some tok -> token env tok (* "," *)
    | None -> todo env ())
  in
  let v6 = token env v6 (* "]" *) in
  todo env (v1, v2, v3, v4, v5, v6)

and map_binary_expression (env : env) (x : CST.binary_expression) =
  (match x with
  | `Exp_AMPAMP_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "&&" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_BARBAR_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "||" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_GTGT_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* ">>" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_LTLT_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "<<" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_AMP_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "&" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_HAT_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "^" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_BAR_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "|" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_PLUS_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "+" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_DASH_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "-" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_STAR_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "*" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_SLASH_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "/" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_PERC_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "%" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_LT_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "<" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_LTEQ_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "<=" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_EQEQ_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "==" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_BANGEQ_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "!=" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_GTEQ_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* ">=" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_GT_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* ">" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Exp_QMARKQMARK_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "??" *) in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  )

and map_binary_pattern (env : env) (x : CST.binary_pattern) =
  (match x with
  | `Pat_and_pat (v1, v2, v3) ->
      let v1 = map_pattern env v1 in
      let v2 = token env v2 (* "and" *) in
      let v3 = map_pattern env v3 in
      todo env (v1, v2, v3)
  | `Pat_or_pat (v1, v2, v3) ->
      let v1 = map_pattern env v1 in
      let v2 = token env v2 (* "or" *) in
      let v3 = map_pattern env v3 in
      todo env (v1, v2, v3)
  )

and map_block (env : env) ((v1, v2, v3) : CST.block) =
  let v1 = token env v1 (* "{" *) in
  let v2 = List.map (map_global_statement env) v2 in
  let v3 = token env v3 (* "}" *) in
  todo env (v1, v2, v3)

and map_bracketed_argument_list (env : env) ((v1, v2, v3, v4) : CST.bracketed_argument_list) =
  let v1 = token env v1 (* "[" *) in
  let v2 = map_argument env v2 in
  let v3 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_argument env v2 in
      todo env (v1, v2)
    ) v3
  in
  let v4 = token env v4 (* "]" *) in
  todo env (v1, v2, v3, v4)

and map_case_pattern_switch_label (env : env) ((v1, v2, v3, v4) : CST.case_pattern_switch_label) =
  let v1 = token env v1 (* "case" *) in
  let v2 = map_pattern env v2 in
  let v3 =
    (match v3 with
    | Some x -> map_when_clause env x
    | None -> todo env ())
  in
  let v4 = token env v4 (* ":" *) in
  todo env (v1, v2, v3, v4)

and map_case_switch_label (env : env) ((v1, v2, v3) : CST.case_switch_label) =
  let v1 = token env v1 (* "case" *) in
  let v2 = map_constant_pattern env v2 in
  let v3 = token env v3 (* ":" *) in
  todo env (v1, v2, v3)

and map_catch_clause (env : env) ((v1, v2, v3, v4) : CST.catch_clause) =
  let v1 = token env v1 (* "catch" *) in
  let v2 =
    (match v2 with
    | Some x -> map_catch_declaration env x
    | None -> todo env ())
  in
  let v3 =
    (match v3 with
    | Some x -> map_catch_filter_clause env x
    | None -> todo env ())
  in
  let v4 = map_block env v4 in
  todo env (v1, v2, v3, v4)

and map_catch_declaration (env : env) ((v1, v2, v3, v4) : CST.catch_declaration) =
  let v1 = token env v1 (* "(" *) in
  let v2 = map_type_pattern env v2 in
  let v3 =
    (match v3 with
    | Some x -> map_identifier env x
    | None -> todo env ())
  in
  let v4 = token env v4 (* ")" *) in
  todo env (v1, v2, v3, v4)

and map_catch_filter_clause (env : env) ((v1, v2, v3, v4) : CST.catch_filter_clause) =
  let v1 = token env v1 (* "when" *) in
  let v2 = token env v2 (* "(" *) in
  let v3 = map_constant_pattern env v3 in
  let v4 = token env v4 (* ")" *) in
  todo env (v1, v2, v3, v4)

and map_checked_expression (env : env) (x : CST.checked_expression) =
  (match x with
  | `Chec_LPAR_exp_RPAR (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "checked" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_constant_pattern env v3 in
      let v4 = token env v4 (* ")" *) in
      todo env (v1, v2, v3, v4)
  | `Unch_LPAR_exp_RPAR (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "unchecked" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_constant_pattern env v3 in
      let v4 = token env v4 (* ")" *) in
      todo env (v1, v2, v3, v4)
  )

and map_constant_pattern (env : env) (x : CST.constant_pattern) =
  map_expression env x

and map_declaration_expression (env : env) ((v1, v2) : CST.declaration_expression) =
  let v1 = map_type_pattern env v1 in
  let v2 = map_identifier env v2 in
  todo env (v1, v2)

and map_element_binding_expression (env : env) (x : CST.element_binding_expression) =
  map_bracketed_argument_list env x

and map_equals_value_clause (env : env) ((v1, v2) : CST.equals_value_clause) =
  let v1 = token env v1 (* "=" *) in
  let v2 = map_constant_pattern env v2 in
  todo env (v1, v2)

and map_expression (env : env) (x : CST.expression) =
  (match x with
  | `Anon_meth_exp (v1, v2, v3, v4) ->
      let v1 =
        (match v1 with
        | Some tok -> token env tok (* "async" *)
        | None -> todo env ())
      in
      let v2 = token env v2 (* "delegate" *) in
      let v3 =
        (match v3 with
        | Some x -> map_parameter_list env x
        | None -> todo env ())
      in
      let v4 = map_block env v4 in
      todo env (v1, v2, v3, v4)
  | `Anon_obj_crea_exp (v1, v2, v3, v4, v5) ->
      let v1 = token env v1 (* "new" *) in
      let v2 = token env v2 (* "{" *) in
      let v3 =
        (match v3 with
        | Some (v1, v2) ->
            let v1 = map_anonymous_object_member_declarator env v1 in
            let v2 =
              List.map (fun (v1, v2) ->
                let v1 = token env v1 (* "," *) in
                let v2 = map_anonymous_object_member_declarator env v2 in
                todo env (v1, v2)
              ) v2
            in
            todo env (v1, v2)
        | None -> todo env ())
      in
      let v4 =
        (match v4 with
        | Some tok -> token env tok (* "," *)
        | None -> todo env ())
      in
      let v5 = token env v5 (* "}" *) in
      todo env (v1, v2, v3, v4, v5)
  | `Array_crea_exp (v1, v2, v3) ->
      let v1 = token env v1 (* "new" *) in
      let v2 = map_array_type env v2 in
      let v3 =
        (match v3 with
        | Some x -> map_initializer_expression env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3)
  | `As_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "as" *) in
      let v3 = map_type_pattern env v3 in
      todo env (v1, v2, v3)
  | `Assign_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = map_assignment_operator env v2 in
      let v3 = map_constant_pattern env v3 in
      todo env (v1, v2, v3)
  | `Await_exp (v1, v2) ->
      let v1 = token env v1 (* "await" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `Base_exp tok -> token env tok (* "base" *)
  | `Bin_exp x -> map_binary_expression env x
  | `Cast_exp (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_type_pattern env v2 in
      let v3 = token env v3 (* ")" *) in
      let v4 = map_constant_pattern env v4 in
      todo env (v1, v2, v3, v4)
  | `Chec_exp x -> map_checked_expression env x
  | `Cond_access_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "?" *) in
      let v3 =
        (match v3 with
        | `Member_bind_exp x -> map_member_binding_expression env x
        | `Elem_bind_exp x -> map_element_binding_expression env x
        )
      in
      todo env (v1, v2, v3)
  | `Cond_exp (v1, v2, v3, v4, v5) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "?" *) in
      let v3 = map_constant_pattern env v3 in
      let v4 = token env v4 (* ":" *) in
      let v5 = map_constant_pattern env v5 in
      todo env (v1, v2, v3, v4, v5)
  | `Defa_exp (v1, v2) ->
      let v1 = token env v1 (* "default" *) in
      let v2 =
        (match v2 with
        | Some (v1, v2, v3) ->
            let v1 = token env v1 (* "(" *) in
            let v2 = map_type_pattern env v2 in
            let v3 = token env v3 (* ")" *) in
            todo env (v1, v2, v3)
        | None -> todo env ())
      in
      todo env (v1, v2)
  | `Elem_access_exp (v1, v2) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = map_element_binding_expression env v2 in
      todo env (v1, v2)
  | `Elem_bind_exp x -> map_element_binding_expression env x
  | `Impl_array_crea_exp (v1, v2, v3, v4, v5) ->
      let v1 = token env v1 (* "new" *) in
      let v2 = token env v2 (* "[" *) in
      let v3 = List.map (token env) (* "," *) v3 in
      let v4 = token env v4 (* "]" *) in
      let v5 = map_initializer_expression env v5 in
      todo env (v1, v2, v3, v4, v5)
  | `Impl_obj_crea_exp (v1, v2, v3) ->
      let v1 = token env v1 (* "new" *) in
      let v2 = map_argument_list env v2 in
      let v3 =
        (match v3 with
        | Some x -> map_initializer_expression env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3)
  | `Impl_stack_alloc_array_crea_exp (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "stackalloc" *) in
      let v2 = token env v2 (* "[" *) in
      let v3 = token env v3 (* "]" *) in
      let v4 = map_initializer_expression env v4 in
      todo env (v1, v2, v3, v4)
  | `Init_exp x -> map_initializer_expression env x
  | `Inte_str_exp x ->
      map_interpolated_string_expression env x
  | `Invo_exp (v1, v2) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = map_argument_list env v2 in
      todo env (v1, v2)
  | `Is_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "is" *) in
      let v3 = map_type_pattern env v3 in
      todo env (v1, v2, v3)
  | `Is_pat_exp (v1, v2, v3) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "is" *) in
      let v3 = map_pattern env v3 in
      todo env (v1, v2, v3)
  | `Lambda_exp (v1, v2, v3, v4, v5) ->
      let v1 =
        (match v1 with
        | Some tok -> token env tok (* "async" *)
        | None -> todo env ())
      in
      let v2 =
        (match v2 with
        | Some tok -> token env tok (* "static" *)
        | None -> todo env ())
      in
      let v3 =
        (match v3 with
        | `Param_list x -> map_parameter_list env x
        | `Id x -> map_identifier env x
        )
      in
      let v4 = token env v4 (* "=>" *) in
      let v5 =
        (match v5 with
        | `Blk x -> map_block env x
        | `Exp x -> map_constant_pattern env x
        )
      in
      todo env (v1, v2, v3, v4, v5)
  | `Make_ref_exp (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "__makeref" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_constant_pattern env v3 in
      let v4 = token env v4 (* ")" *) in
      todo env (v1, v2, v3, v4)
  | `Member_access_exp (v1, v2, v3) ->
      let v1 =
        (match v1 with
        | `Exp x -> map_constant_pattern env x
        | `Pred_type tok -> token env tok (* predefined_type *)
        | `Name x -> map_name env x
        )
      in
      let v2 =
        (match v2 with
        | `DOT tok -> token env tok (* "." *)
        | `DASHGT tok -> token env tok (* "->" *)
        )
      in
      let v3 = map_simple_name env v3 in
      todo env (v1, v2, v3)
  | `Obj_crea_exp (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "new" *) in
      let v2 = map_type_pattern env v2 in
      let v3 =
        (match v3 with
        | Some x -> map_argument_list env x
        | None -> todo env ())
      in
      let v4 =
        (match v4 with
        | Some x -> map_initializer_expression env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3, v4)
  | `Paren_exp x -> map_parenthesized_expression env x
  | `Post_un_exp x -> map_postfix_unary_expression env x
  | `Prefix_un_exp x -> map_prefix_unary_expression env x
  | `Query_exp (v1, v2) ->
      let v1 = map_from_clause env v1 in
      let v2 = map_query_body env v2 in
      todo env (v1, v2)
  | `Range_exp (v1, v2, v3) ->
      let v1 =
        (match v1 with
        | Some x -> map_constant_pattern env x
        | None -> todo env ())
      in
      let v2 = token env v2 (* ".." *) in
      let v3 =
        (match v3 with
        | Some x -> map_constant_pattern env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3)
  | `Ref_exp (v1, v2) ->
      let v1 = token env v1 (* "ref" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `Ref_type_exp (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "__reftype" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_constant_pattern env v3 in
      let v4 = token env v4 (* ")" *) in
      todo env (v1, v2, v3, v4)
  | `Ref_value_exp (v1, v2, v3, v4, v5, v6) ->
      let v1 = token env v1 (* "__refvalue" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_constant_pattern env v3 in
      let v4 = token env v4 (* "," *) in
      let v5 = map_type_pattern env v5 in
      let v6 = token env v6 (* ")" *) in
      todo env (v1, v2, v3, v4, v5, v6)
  | `Size_of_exp (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "sizeof" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_type_pattern env v3 in
      let v4 = token env v4 (* ")" *) in
      todo env (v1, v2, v3, v4)
  | `Stack_alloc_array_crea_exp (v1, v2, v3) ->
      let v1 = token env v1 (* "stackalloc" *) in
      let v2 = map_array_type env v2 in
      let v3 =
        (match v3 with
        | Some x -> map_initializer_expression env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3)
  | `Switch_exp (v1, v2, v3, v4, v5, v6) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "switch" *) in
      let v3 = token env v3 (* "{" *) in
      let v4 =
        (match v4 with
        | Some (v1, v2) ->
            let v1 = map_switch_expression_arm env v1 in
            let v2 =
              List.map (fun (v1, v2) ->
                let v1 = token env v1 (* "," *) in
                let v2 = map_switch_expression_arm env v2 in
                todo env (v1, v2)
              ) v2
            in
            todo env (v1, v2)
        | None -> todo env ())
      in
      let v5 =
        (match v5 with
        | Some tok -> token env tok (* "," *)
        | None -> todo env ())
      in
      let v6 = token env v6 (* "}" *) in
      todo env (v1, v2, v3, v4, v5, v6)
  | `This_exp tok -> token env tok (* "this" *)
  | `Throw_exp (v1, v2) ->
      let v1 = token env v1 (* "throw" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `Tuple_exp x -> map_tuple_expression env x
  | `Type_of_exp (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "typeof" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_type_pattern env v3 in
      let v4 = token env v4 (* ")" *) in
      todo env (v1, v2, v3, v4)
  | `With_exp (v1, v2, v3, v4, v5) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "with" *) in
      let v3 = token env v3 (* "{" *) in
      let v4 =
        (match v4 with
        | Some x -> map_with_initializer_expression env x
        | None -> todo env ())
      in
      let v5 = token env v5 (* "}" *) in
      todo env (v1, v2, v3, v4, v5)
  | `Simple_name x -> map_simple_name env x
  | `Lit x -> map_literal env x
  )

and map_finally_clause (env : env) ((v1, v2) : CST.finally_clause) =
  let v1 = token env v1 (* "finally" *) in
  let v2 = map_block env v2 in
  todo env (v1, v2)

and map_formal_parameter_list (env : env) ((v1, v2) : CST.formal_parameter_list) =
  let v1 = map_anon_choice_param_ce11a32 env v1 in
  let v2 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_anon_choice_param_ce11a32 env v2 in
      todo env (v1, v2)
    ) v2
  in
  todo env (v1, v2)

and map_from_clause (env : env) ((v1, v2, v3, v4, v5) : CST.from_clause) =
  let v1 = token env v1 (* "from" *) in
  let v2 =
    (match v2 with
    | Some x -> map_type_pattern env x
    | None -> todo env ())
  in
  let v3 = map_identifier env v3 in
  let v4 = token env v4 (* "in" *) in
  let v5 = map_constant_pattern env v5 in
  todo env (v1, v2, v3, v4, v5)

and map_function_body (env : env) (x : CST.function_body) =
  (match x with
  | `Blk x -> map_block env x
  | `Arrow_exp_clause_SEMI (v1, v2) ->
      let v1 = map_arrow_expression_clause env v1 in
      let v2 = token env v2 (* ";" *) in
      todo env (v1, v2)
  | `SEMI tok -> token env tok (* ";" *)
  )

and map_function_pointer_parameter (env : env) ((v1, v2) : CST.function_pointer_parameter) =
  let v1 =
    (match v1 with
    | Some x ->
        (match x with
        | `Ref tok -> token env tok (* "ref" *)
        | `Out tok -> token env tok (* "out" *)
        | `In tok -> token env tok (* "in" *)
        | `Ref_read (v1, v2) ->
            let v1 = token env v1 (* "ref" *) in
            let v2 = token env v2 (* "readonly" *) in
            todo env (v1, v2)
        )
    | None -> todo env ())
  in
  let v2 = map_return_type env v2 in
  todo env (v1, v2)

and map_global_statement (env : env) (x : CST.global_statement) =
  map_statement env x

and map_initializer_expression (env : env) ((v1, v2, v3, v4) : CST.initializer_expression) =
  let v1 = token env v1 (* "{" *) in
  let v2 =
    map_anon_opt_cst_pat_rep_interp_alig_clause_080fdff env v2
  in
  let v3 =
    (match v3 with
    | Some tok -> token env tok (* "," *)
    | None -> todo env ())
  in
  let v4 = token env v4 (* "}" *) in
  todo env (v1, v2, v3, v4)

and map_interpolated_string_content (env : env) (x : CST.interpolated_string_content) =
  (match x with
  | `Inte_str_text x -> map_interpolated_string_text env x
  | `Interp x -> map_interpolation env x
  )

and map_interpolated_string_expression (env : env) (x : CST.interpolated_string_expression) =
  (match x with
  | `DOLLARDQUOT_rep_inte_str_content_DQUOT (v1, v2, v3) ->
      let v1 = token env v1 (* "$\"" *) in
      let v2 =
        List.map (map_interpolated_string_content env) v2
      in
      let v3 = token env v3 (* "\"" *) in
      todo env (v1, v2, v3)
  | `DOLLARATDQUOT_rep_inte_verb_str_content_DQUOT (v1, v2, v3) ->
      let v1 = token env v1 (* "$@\"" *) in
      let v2 =
        List.map (map_interpolated_verbatim_string_content env) v2
      in
      let v3 = token env v3 (* "\"" *) in
      todo env (v1, v2, v3)
  | `ATDOLLARDQUOT_rep_inte_verb_str_content_DQUOT (v1, v2, v3) ->
      let v1 = token env v1 (* "@$\"" *) in
      let v2 =
        List.map (map_interpolated_verbatim_string_content env) v2
      in
      let v3 = token env v3 (* "\"" *) in
      todo env (v1, v2, v3)
  )

and map_interpolated_verbatim_string_content (env : env) (x : CST.interpolated_verbatim_string_content) =
  (match x with
  | `Inte_verb_str_text x ->
      map_interpolated_verbatim_string_text env x
  | `Interp x -> map_interpolation env x
  )

and map_interpolation (env : env) ((v1, v2, v3, v4, v5) : CST.interpolation) =
  let v1 = token env v1 (* "{" *) in
  let v2 = map_constant_pattern env v2 in
  let v3 =
    (match v3 with
    | Some x -> map_interpolation_alignment_clause env x
    | None -> todo env ())
  in
  let v4 =
    (match v4 with
    | Some x -> map_interpolation_format_clause env x
    | None -> todo env ())
  in
  let v5 = token env v5 (* "}" *) in
  todo env (v1, v2, v3, v4, v5)

and map_interpolation_alignment_clause (env : env) ((v1, v2) : CST.interpolation_alignment_clause) =
  let v1 = token env v1 (* "," *) in
  let v2 = map_constant_pattern env v2 in
  todo env (v1, v2)

and map_member_binding_expression (env : env) ((v1, v2) : CST.member_binding_expression) =
  let v1 = token env v1 (* "." *) in
  let v2 = map_simple_name env v2 in
  todo env (v1, v2)

and map_name (env : env) (x : CST.name) =
  (match x with
  | `Alias_qual_name (v1, v2, v3) ->
      let v1 = map_identifier_or_global env v1 in
      let v2 = token env v2 (* "::" *) in
      let v3 = map_simple_name env v3 in
      todo env (v1, v2, v3)
  | `Qual_name (v1, v2, v3) ->
      let v1 = map_name env v1 in
      let v2 = token env v2 (* "." *) in
      let v3 = map_simple_name env v3 in
      todo env (v1, v2, v3)
  | `Simple_name x -> map_simple_name env x
  )

and map_nullable_type (env : env) (x : CST.nullable_type) =
  (match x with
  | `Type_QMARK (v1, v2) ->
      let v1 = map_type_pattern env v1 in
      let v2 = token env v2 (* "?" *) in
      todo env (v1, v2)
  )

and map_ordering (env : env) ((v1, v2) : CST.ordering) =
  let v1 = map_constant_pattern env v1 in
  let v2 =
    (match v2 with
    | Some x ->
        (match x with
        | `Asce tok -> token env tok (* "ascending" *)
        | `Desc tok -> token env tok (* "descending" *)
        )
    | None -> todo env ())
  in
  todo env (v1, v2)

and map_parameter (env : env) ((v1, v2, v3, v4, v5) : CST.parameter) =
  let v1 = List.map (map_attribute_list env) v1 in
  let v2 =
    (match v2 with
    | Some x -> map_parameter_modifier env x
    | None -> todo env ())
  in
  let v3 =
    (match v3 with
    | Some x -> map_type_pattern env x
    | None -> todo env ())
  in
  let v4 = map_identifier env v4 in
  let v5 =
    (match v5 with
    | Some x -> map_equals_value_clause env x
    | None -> todo env ())
  in
  todo env (v1, v2, v3, v4, v5)

and map_parameter_list (env : env) ((v1, v2, v3) : CST.parameter_list) =
  let v1 = token env v1 (* "(" *) in
  let v2 =
    (match v2 with
    | Some x -> map_formal_parameter_list env x
    | None -> todo env ())
  in
  let v3 = token env v3 (* ")" *) in
  todo env (v1, v2, v3)

and map_parenthesized_expression (env : env) ((v1, v2, v3) : CST.parenthesized_expression) =
  let v1 = token env v1 (* "(" *) in
  let v2 = map_constant_pattern env v2 in
  let v3 = token env v3 (* ")" *) in
  todo env (v1, v2, v3)

and map_pattern (env : env) (x : CST.pattern) =
  (match x with
  | `Cst_pat x -> map_constant_pattern env x
  | `Decl_pat (v1, v2) ->
      let v1 = map_type_pattern env v1 in
      let v2 = map_variable_designation env v2 in
      todo env (v1, v2)
  | `Disc tok -> token env tok (* "_" *)
  | `Recu_pat (v1, v2, v3) ->
      let v1 =
        (match v1 with
        | Some x -> map_type_pattern env x
        | None -> todo env ())
      in
      let v2 =
        (match v2 with
        | `Posi_pat_clause_opt_prop_pat_clause (v1, v2) ->
            let v1 = map_positional_pattern_clause env v1 in
            let v2 =
              (match v2 with
              | Some x -> map_property_pattern_clause env x
              | None -> todo env ())
            in
            todo env (v1, v2)
        | `Prop_pat_clause x -> map_property_pattern_clause env x
        )
      in
      let v3 =
        (match v3 with
        | Some x -> map_variable_designation env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3)
  | `Var_pat (v1, v2) ->
      let v1 = token env v1 (* "var" *) in
      let v2 = map_variable_designation env v2 in
      todo env (v1, v2)
  | `Nega_pat (v1, v2) ->
      let v1 = token env v1 (* "not" *) in
      let v2 = map_pattern env v2 in
      todo env (v1, v2)
  | `Paren_pat (v1, v2, v3) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_pattern env v2 in
      let v3 = token env v3 (* ")" *) in
      todo env (v1, v2, v3)
  | `Rela_pat x -> map_relational_pattern env x
  | `Bin_pat x -> map_binary_pattern env x
  | `Type_pat x -> map_type_pattern env x
  )

and map_positional_pattern_clause (env : env) ((v1, v2, v3) : CST.positional_pattern_clause) =
  let v1 = token env v1 (* "(" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2, v3, v4) ->
        let v1 = map_subpattern env v1 in
        let v2 = token env v2 (* "," *) in
        let v3 = map_subpattern env v3 in
        let v4 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_subpattern env v2 in
            todo env (v1, v2)
          ) v4
        in
        todo env (v1, v2, v3, v4)
    | None -> todo env ())
  in
  let v3 = token env v3 (* ")" *) in
  todo env (v1, v2, v3)

and map_postfix_unary_expression (env : env) (x : CST.postfix_unary_expression) =
  (match x with
  | `Exp_PLUSPLUS (v1, v2) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "++" *) in
      todo env (v1, v2)
  | `Exp_DASHDASH (v1, v2) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "--" *) in
      todo env (v1, v2)
  | `Exp_BANG (v1, v2) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* "!" *) in
      todo env (v1, v2)
  )

and map_prefix_unary_expression (env : env) (x : CST.prefix_unary_expression) =
  (match x with
  | `BANG_exp (v1, v2) ->
      let v1 = token env v1 (* "!" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `AMP_exp (v1, v2) ->
      let v1 = token env v1 (* "&" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `STAR_exp (v1, v2) ->
      let v1 = token env v1 (* "*" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `PLUS_exp (v1, v2) ->
      let v1 = token env v1 (* "+" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `PLUSPLUS_exp (v1, v2) ->
      let v1 = token env v1 (* "++" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `DASH_exp (v1, v2) ->
      let v1 = token env v1 (* "-" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `DASHDASH_exp (v1, v2) ->
      let v1 = token env v1 (* "--" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `HAT_exp (v1, v2) ->
      let v1 = token env v1 (* "^" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `TILDE_exp (v1, v2) ->
      let v1 = token env v1 (* "~" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  )

and map_property_pattern_clause (env : env) ((v1, v2, v3, v4) : CST.property_pattern_clause) =
  let v1 = token env v1 (* "{" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = map_subpattern env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_subpattern env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 =
    (match v3 with
    | Some tok -> token env tok (* "," *)
    | None -> todo env ())
  in
  let v4 = token env v4 (* "}" *) in
  todo env (v1, v2, v3, v4)

and map_query_body (env : env) (x : CST.query_body) =
  (match x with
  | `Rectype (v1, v2, v3) ->
      let v1 = List.map (map_query_clause env) v1 in
      let v2 = map_select_or_group_clause env v2 in
      let v3 =
        (match v3 with
        | Some x -> map_query_continuation env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3)
  )

and map_query_clause (env : env) (x : CST.query_clause) =
  (match x with
  | `From_clause x -> map_from_clause env x
  | `Join_clause (v1, v2, v3, v4, v5, v6, v7, v8, v9, v10) ->
      let v1 = token env v1 (* "join" *) in
      let v2 =
        (match v2 with
        | Some x -> map_type_pattern env x
        | None -> todo env ())
      in
      let v3 = map_identifier env v3 in
      let v4 = token env v4 (* "in" *) in
      let v5 = map_constant_pattern env v5 in
      let v6 = token env v6 (* "on" *) in
      let v7 = map_constant_pattern env v7 in
      let v8 = token env v8 (* "equals" *) in
      let v9 = map_constant_pattern env v9 in
      let v10 =
        (match v10 with
        | Some x -> map_join_into_clause env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3, v4, v5, v6, v7, v8, v9, v10)
  | `Let_clause (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "let" *) in
      let v2 = map_identifier env v2 in
      let v3 = token env v3 (* "=" *) in
      let v4 = map_constant_pattern env v4 in
      todo env (v1, v2, v3, v4)
  | `Order_by_clause (v1, v2, v3) ->
      let v1 = token env v1 (* "orderby" *) in
      let v2 = map_ordering env v2 in
      let v3 =
        List.map (fun (v1, v2) ->
          let v1 = token env v1 (* "," *) in
          let v2 = map_ordering env v2 in
          todo env (v1, v2)
        ) v3
      in
      todo env (v1, v2, v3)
  | `Where_clause (v1, v2) ->
      let v1 = token env v1 (* "where" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  )

and map_query_continuation (env : env) (x : CST.query_continuation) =
  (match x with
  | `Rectype (v1, v2, v3) ->
      let v1 = token env v1 (* "into" *) in
      let v2 = map_identifier env v2 in
      let v3 = map_query_body env v3 in
      todo env (v1, v2, v3)
  )

and map_relational_pattern (env : env) (x : CST.relational_pattern) =
  (match x with
  | `LT_exp (v1, v2) ->
      let v1 = token env v1 (* "<" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `LTEQ_exp (v1, v2) ->
      let v1 = token env v1 (* "<=" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `GT_exp (v1, v2) ->
      let v1 = token env v1 (* ">" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  | `GTEQ_exp (v1, v2) ->
      let v1 = token env v1 (* ">=" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  )

and map_return_type (env : env) (x : CST.return_type) =
  (match x with
  | `Type x -> map_type_pattern env x
  | `Void_kw tok -> token env tok (* "void" *)
  )

and map_select_or_group_clause (env : env) (x : CST.select_or_group_clause) =
  (match x with
  | `Group_clause (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "group" *) in
      let v2 = map_constant_pattern env v2 in
      let v3 = token env v3 (* "by" *) in
      let v4 = map_constant_pattern env v4 in
      todo env (v1, v2, v3, v4)
  | `Select_clause (v1, v2) ->
      let v1 = token env v1 (* "select" *) in
      let v2 = map_constant_pattern env v2 in
      todo env (v1, v2)
  )

and map_simple_assignment_expression (env : env) ((v1, v2, v3) : CST.simple_assignment_expression) =
  let v1 = map_identifier env v1 in
  let v2 = token env v2 (* "=" *) in
  let v3 = map_constant_pattern env v3 in
  todo env (v1, v2, v3)

and map_simple_name (env : env) (x : CST.simple_name) =
  (match x with
  | `Gene_name (v1, v2) ->
      let v1 = map_identifier env v1 in
      let v2 = map_type_argument_list env v2 in
      todo env (v1, v2)
  | `Choice_global x -> map_identifier_or_global env x
  )

and map_statement (env : env) (x : CST.statement) =
  (match x with
  | `Blk x -> map_block env x
  | `Brk_stmt (v1, v2) ->
      let v1 = token env v1 (* "break" *) in
      let v2 = token env v2 (* ";" *) in
      todo env (v1, v2)
  | `Chec_stmt (v1, v2) ->
      let v1 =
        (match v1 with
        | `Chec tok -> token env tok (* "checked" *)
        | `Unch tok -> token env tok (* "unchecked" *)
        )
      in
      let v2 = map_block env v2 in
      todo env (v1, v2)
  | `Cont_stmt (v1, v2) ->
      let v1 = token env v1 (* "continue" *) in
      let v2 = token env v2 (* ";" *) in
      todo env (v1, v2)
  | `Do_stmt (v1, v2, v3, v4, v5, v6, v7) ->
      let v1 = token env v1 (* "do" *) in
      let v2 = map_global_statement env v2 in
      let v3 = token env v3 (* "while" *) in
      let v4 = token env v4 (* "(" *) in
      let v5 = map_constant_pattern env v5 in
      let v6 = token env v6 (* ")" *) in
      let v7 = token env v7 (* ";" *) in
      todo env (v1, v2, v3, v4, v5, v6, v7)
  | `Empty_stmt tok -> token env tok (* ";" *)
  | `Exp_stmt (v1, v2) ->
      let v1 = map_constant_pattern env v1 in
      let v2 = token env v2 (* ";" *) in
      todo env (v1, v2)
  | `Fixed_stmt (v1, v2, v3, v4, v5) ->
      let v1 = token env v1 (* "fixed" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_variable_declaration env v3 in
      let v4 = token env v4 (* ")" *) in
      let v5 = map_global_statement env v5 in
      todo env (v1, v2, v3, v4, v5)
  | `For_each_stmt (v1, v2, v3, v4, v5, v6, v7, v8) ->
      let v1 =
        (match v1 with
        | Some tok -> token env tok (* "await" *)
        | None -> todo env ())
      in
      let v2 = token env v2 (* "foreach" *) in
      let v3 = token env v3 (* "(" *) in
      let v4 =
        (match v4 with
        | `Type_choice_id (v1, v2) ->
            let v1 = map_type_pattern env v1 in
            let v2 = map_anon_choice_id_bf14316 env v2 in
            todo env (v1, v2)
        | `Exp x -> map_constant_pattern env x
        )
      in
      let v5 = token env v5 (* "in" *) in
      let v6 = map_constant_pattern env v6 in
      let v7 = token env v7 (* ")" *) in
      let v8 = map_global_statement env v8 in
      todo env (v1, v2, v3, v4, v5, v6, v7, v8)
  | `For_stmt (v1, v2, v3, v4, v5, v6, v7, v8, v9) ->
      let v1 = token env v1 (* "for" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 =
        (match v3 with
        | Some x ->
            (match x with
            | `Var_decl x -> map_variable_declaration env x
            | `Exp_rep_COMMA_exp (v1, v2) ->
                let v1 = map_constant_pattern env v1 in
                let v2 =
                  List.map (map_interpolation_alignment_clause env) v2
                in
                todo env (v1, v2)
            )
        | None -> todo env ())
      in
      let v4 = token env v4 (* ";" *) in
      let v5 =
        (match v5 with
        | Some x -> map_constant_pattern env x
        | None -> todo env ())
      in
      let v6 = token env v6 (* ";" *) in
      let v7 =
        map_anon_opt_cst_pat_rep_interp_alig_clause_080fdff env v7
      in
      let v8 = token env v8 (* ")" *) in
      let v9 = map_global_statement env v9 in
      todo env (v1, v2, v3, v4, v5, v6, v7, v8, v9)
  | `Goto_stmt (v1, v2, v3) ->
      let v1 = token env v1 (* "goto" *) in
      let v2 =
        (match v2 with
        | `Id x -> map_identifier env x
        | `Case_exp (v1, v2) ->
            let v1 = token env v1 (* "case" *) in
            let v2 = map_constant_pattern env v2 in
            todo env (v1, v2)
        | `Defa tok -> token env tok (* "default" *)
        )
      in
      let v3 = token env v3 (* ";" *) in
      todo env (v1, v2, v3)
  | `If_stmt (v1, v2, v3, v4, v5, v6) ->
      let v1 = token env v1 (* "if" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_constant_pattern env v3 in
      let v4 = token env v4 (* ")" *) in
      let v5 = map_global_statement env v5 in
      let v6 =
        (match v6 with
        | Some (v1, v2) ->
            let v1 = token env v1 (* "else" *) in
            let v2 = map_global_statement env v2 in
            todo env (v1, v2)
        | None -> todo env ())
      in
      todo env (v1, v2, v3, v4, v5, v6)
  | `Labe_stmt (v1, v2, v3) ->
      let v1 = map_identifier env v1 in
      let v2 = token env v2 (* ":" *) in
      let v3 = map_global_statement env v3 in
      todo env (v1, v2, v3)
  | `Local_decl_stmt (v1, v2, v3, v4, v5) ->
      let v1 =
        (match v1 with
        | Some tok -> token env tok (* "await" *)
        | None -> todo env ())
      in
      let v2 =
        (match v2 with
        | Some tok -> token env tok (* "using" *)
        | None -> todo env ())
      in
      let v3 = List.map (map_modifier env) v3 in
      let v4 = map_variable_declaration env v4 in
      let v5 = token env v5 (* ";" *) in
      todo env (v1, v2, v3, v4, v5)
  | `Local_func_stmt (v1, v2, v3, v4, v5, v6, v7, v8) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = List.map (map_modifier env) v2 in
      let v3 = map_return_type env v3 in
      let v4 = map_identifier env v4 in
      let v5 =
        (match v5 with
        | Some x -> map_type_parameter_list env x
        | None -> todo env ())
      in
      let v6 = map_parameter_list env v6 in
      let v7 =
        List.map (map_type_parameter_constraints_clause env) v7
      in
      let v8 = map_function_body env v8 in
      todo env (v1, v2, v3, v4, v5, v6, v7, v8)
  | `Lock_stmt (v1, v2, v3, v4, v5) ->
      let v1 = token env v1 (* "lock" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_constant_pattern env v3 in
      let v4 = token env v4 (* ")" *) in
      let v5 = map_global_statement env v5 in
      todo env (v1, v2, v3, v4, v5)
  | `Ret_stmt (v1, v2, v3) ->
      let v1 = token env v1 (* "return" *) in
      let v2 =
        (match v2 with
        | Some x -> map_constant_pattern env x
        | None -> todo env ())
      in
      let v3 = token env v3 (* ";" *) in
      todo env (v1, v2, v3)
  | `Switch_stmt (v1, v2, v3) ->
      let v1 = token env v1 (* "switch" *) in
      let v2 =
        (match v2 with
        | `LPAR_exp_RPAR x -> map_parenthesized_expression env x
        | `Tuple_exp x -> map_tuple_expression env x
        )
      in
      let v3 = map_switch_body env v3 in
      todo env (v1, v2, v3)
  | `Throw_stmt (v1, v2, v3) ->
      let v1 = token env v1 (* "throw" *) in
      let v2 =
        (match v2 with
        | Some x -> map_constant_pattern env x
        | None -> todo env ())
      in
      let v3 = token env v3 (* ";" *) in
      todo env (v1, v2, v3)
  | `Try_stmt (v1, v2, v3, v4) ->
      let v1 = token env v1 (* "try" *) in
      let v2 = map_block env v2 in
      let v3 = List.map (map_catch_clause env) v3 in
      let v4 =
        (match v4 with
        | Some x -> map_finally_clause env x
        | None -> todo env ())
      in
      todo env (v1, v2, v3, v4)
  | `Unsafe_stmt (v1, v2) ->
      let v1 = token env v1 (* "unsafe" *) in
      let v2 = map_block env v2 in
      todo env (v1, v2)
  | `Using_stmt (v1, v2, v3, v4, v5, v6) ->
      let v1 =
        (match v1 with
        | Some tok -> token env tok (* "await" *)
        | None -> todo env ())
      in
      let v2 = token env v2 (* "using" *) in
      let v3 = token env v3 (* "(" *) in
      let v4 =
        (match v4 with
        | `Var_decl x -> map_variable_declaration env x
        | `Exp x -> map_constant_pattern env x
        )
      in
      let v5 = token env v5 (* ")" *) in
      let v6 = map_global_statement env v6 in
      todo env (v1, v2, v3, v4, v5, v6)
  | `While_stmt (v1, v2, v3, v4, v5) ->
      let v1 = token env v1 (* "while" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = map_constant_pattern env v3 in
      let v4 = token env v4 (* ")" *) in
      let v5 = map_global_statement env v5 in
      todo env (v1, v2, v3, v4, v5)
  | `Yield_stmt (v1, v2, v3) ->
      let v1 = token env v1 (* "yield" *) in
      let v2 =
        (match v2 with
        | `Ret_exp (v1, v2) ->
            let v1 = token env v1 (* "return" *) in
            let v2 = map_constant_pattern env v2 in
            todo env (v1, v2)
        | `Brk tok -> token env tok (* "break" *)
        )
      in
      let v3 = token env v3 (* ";" *) in
      todo env (v1, v2, v3)
  )

and map_subpattern (env : env) ((v1, v2) : CST.subpattern) =
  let v1 =
    (match v1 with
    | Some x -> map_name_colon env x
    | None -> todo env ())
  in
  let v2 = map_pattern env v2 in
  todo env (v1, v2)

and map_switch_body (env : env) ((v1, v2, v3) : CST.switch_body) =
  let v1 = token env v1 (* "{" *) in
  let v2 = List.map (map_switch_section env) v2 in
  let v3 = token env v3 (* "}" *) in
  todo env (v1, v2, v3)

and map_switch_expression_arm (env : env) ((v1, v2, v3, v4) : CST.switch_expression_arm) =
  let v1 = map_pattern env v1 in
  let v2 =
    (match v2 with
    | Some x -> map_when_clause env x
    | None -> todo env ())
  in
  let v3 = token env v3 (* "=>" *) in
  let v4 = map_constant_pattern env v4 in
  todo env (v1, v2, v3, v4)

and map_switch_section (env : env) ((v1, v2) : CST.switch_section) =
  let v1 =
    List.map (fun x ->
      (match x with
      | `Case_switch_label x -> map_case_switch_label env x
      | `Case_pat_switch_label x ->
          map_case_pattern_switch_label env x
      | `Defa_switch_label x -> map_default_switch_label env x
      )
    ) v1
  in
  let v2 = List.map (map_global_statement env) v2 in
  todo env (v1, v2)

and map_tuple_element (env : env) ((v1, v2) : CST.tuple_element) =
  let v1 = map_type_pattern env v1 in
  let v2 =
    (match v2 with
    | Some x -> map_identifier env x
    | None -> todo env ())
  in
  todo env (v1, v2)

and map_tuple_expression (env : env) ((v1, v2, v3, v4) : CST.tuple_expression) =
  let v1 = token env v1 (* "(" *) in
  let v2 = map_argument env v2 in
  let v3 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_argument env v2 in
      todo env (v1, v2)
    ) v3
  in
  let v4 = token env v4 (* ")" *) in
  todo env (v1, v2, v3, v4)

and map_type_ (env : env) (x : CST.type_) =
  (match x with
  | `Impl_type tok -> token env tok (* "var" *)
  | `Array_type x -> map_array_type env x
  | `Name x -> map_name env x
  | `Null_type x -> map_nullable_type env x
  | `Poin_type (v1, v2) ->
      let v1 = map_type_pattern env v1 in
      let v2 = token env v2 (* "*" *) in
      todo env (v1, v2)
  | `Func_poin_type (v1, v2, v3, v4, v5, v6, v7) ->
      let v1 = token env v1 (* "delegate" *) in
      let v2 = token env v2 (* "*" *) in
      let v3 =
        (match v3 with
        | Some x -> map_function_pointer_calling_convention env x
        | None -> todo env ())
      in
      let v4 = token env v4 (* "<" *) in
      let v5 = map_function_pointer_parameter env v5 in
      let v6 =
        List.map (fun (v1, v2) ->
          let v1 = token env v1 (* "," *) in
          let v2 = map_function_pointer_parameter env v2 in
          todo env (v1, v2)
        ) v6
      in
      let v7 = token env v7 (* ">" *) in
      todo env (v1, v2, v3, v4, v5, v6, v7)
  | `Pred_type tok -> token env tok (* predefined_type *)
  | `Tuple_type (v1, v2, v3, v4, v5, v6) ->
      let v1 = token env v1 (* "(" *) in
      let v2 = map_tuple_element env v2 in
      let v3 = token env v3 (* "," *) in
      let v4 = map_tuple_element env v4 in
      let v5 =
        List.map (fun (v1, v2) ->
          let v1 = token env v1 (* "," *) in
          let v2 = map_tuple_element env v2 in
          todo env (v1, v2)
        ) v5
      in
      let v6 = token env v6 (* ")" *) in
      todo env (v1, v2, v3, v4, v5, v6)
  )

and map_type_argument_list (env : env) ((v1, v2, v3) : CST.type_argument_list) =
  let v1 = token env v1 (* "<" *) in
  let v2 =
    (match v2 with
    | `Rep_COMMA xs -> List.map (token env) (* "," *) xs
    | `Type_rep_COMMA_type (v1, v2) ->
        let v1 = map_type_pattern env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_type_pattern env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    )
  in
  let v3 = token env v3 (* ">" *) in
  todo env (v1, v2, v3)

and map_type_constraint (env : env) (x : CST.type_constraint) =
  map_type_ env x

and map_type_parameter (env : env) ((v1, v2, v3) : CST.type_parameter) =
  let v1 = List.map (map_attribute_list env) v1 in
  let v2 =
    (match v2 with
    | Some x ->
        (match x with
        | `In tok -> token env tok (* "in" *)
        | `Out tok -> token env tok (* "out" *)
        )
    | None -> todo env ())
  in
  let v3 = map_identifier env v3 in
  todo env (v1, v2, v3)

and map_type_parameter_constraint (env : env) (x : CST.type_parameter_constraint) =
  (match x with
  | `Class_opt_QMARK (v1, v2) ->
      let v1 = token env v1 (* "class" *) in
      let v2 =
        (match v2 with
        | Some tok -> token env tok (* "?" *)
        | None -> todo env ())
      in
      todo env (v1, v2)
  | `Struct tok -> token env tok (* "struct" *)
  | `Notn tok -> token env tok (* "notnull" *)
  | `Unma tok -> token env tok (* "unmanaged" *)
  | `Cons_cons (v1, v2, v3) ->
      let v1 = token env v1 (* "new" *) in
      let v2 = token env v2 (* "(" *) in
      let v3 = token env v3 (* ")" *) in
      todo env (v1, v2, v3)
  | `Type_cons x -> map_type_constraint env x
  )

and map_type_parameter_constraints_clause (env : env) ((v1, v2, v3, v4, v5) : CST.type_parameter_constraints_clause) =
  let v1 = token env v1 (* "where" *) in
  let v2 = map_identifier_or_global env v2 in
  let v3 = token env v3 (* ":" *) in
  let v4 = map_type_parameter_constraint env v4 in
  let v5 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_type_parameter_constraint env v2 in
      todo env (v1, v2)
    ) v5
  in
  todo env (v1, v2, v3, v4, v5)

and map_type_parameter_list (env : env) ((v1, v2, v3, v4) : CST.type_parameter_list) =
  let v1 = token env v1 (* "<" *) in
  let v2 = map_type_parameter env v2 in
  let v3 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_type_parameter env v2 in
      todo env (v1, v2)
    ) v3
  in
  let v4 = token env v4 (* ">" *) in
  todo env (v1, v2, v3, v4)

and map_type_pattern (env : env) (x : CST.type_pattern) =
  map_type_ env x

and map_variable_declaration (env : env) ((v1, v2, v3) : CST.variable_declaration) =
  let v1 = map_type_pattern env v1 in
  let v2 = map_variable_declarator env v2 in
  let v3 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_variable_declarator env v2 in
      todo env (v1, v2)
    ) v3
  in
  todo env (v1, v2, v3)

and map_variable_declarator (env : env) ((v1, v2, v3) : CST.variable_declarator) =
  let v1 = map_anon_choice_id_bf14316 env v1 in
  let v2 =
    (match v2 with
    | Some x -> map_element_binding_expression env x
    | None -> todo env ())
  in
  let v3 =
    (match v3 with
    | Some x -> map_equals_value_clause env x
    | None -> todo env ())
  in
  todo env (v1, v2, v3)

and map_when_clause (env : env) ((v1, v2) : CST.when_clause) =
  let v1 = token env v1 (* "when" *) in
  let v2 = map_constant_pattern env v2 in
  todo env (v1, v2)

and map_with_initializer_expression (env : env) ((v1, v2) : CST.with_initializer_expression) =
  let v1 = map_simple_assignment_expression env v1 in
  let v2 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_simple_assignment_expression env v2 in
      todo env (v1, v2)
    ) v2
  in
  todo env (v1, v2)

let map_constructor_initializer (env : env) ((v1, v2, v3) : CST.constructor_initializer) =
  let v1 = token env v1 (* ":" *) in
  let v2 =
    (match v2 with
    | `Base tok -> token env tok (* "base" *)
    | `This tok -> token env tok (* "this" *)
    )
  in
  let v3 = map_argument_list env v3 in
  todo env (v1, v2, v3)

let map_delegate_declaration (env : env) ((v1, v2, v3, v4, v5, v6, v7, v8, v9) : CST.delegate_declaration) =
  let v1 = List.map (map_attribute_list env) v1 in
  let v2 = List.map (map_modifier env) v2 in
  let v3 = token env v3 (* "delegate" *) in
  let v4 = map_return_type env v4 in
  let v5 = map_identifier env v5 in
  let v6 =
    (match v6 with
    | Some x -> map_type_parameter_list env x
    | None -> todo env ())
  in
  let v7 = map_parameter_list env v7 in
  let v8 =
    List.map (map_type_parameter_constraints_clause env) v8
  in
  let v9 = token env v9 (* ";" *) in
  todo env (v1, v2, v3, v4, v5, v6, v7, v8, v9)

let map_explicit_interface_specifier (env : env) ((v1, v2) : CST.explicit_interface_specifier) =
  let v1 = map_name env v1 in
  let v2 = token env v2 (* "." *) in
  todo env (v1, v2)

let map_enum_member_declaration (env : env) ((v1, v2, v3) : CST.enum_member_declaration) =
  let v1 = List.map (map_attribute_list env) v1 in
  let v2 = map_identifier env v2 in
  let v3 =
    (match v3 with
    | Some x -> map_equals_value_clause env x
    | None -> todo env ())
  in
  todo env (v1, v2, v3)

let map_using_directive (env : env) ((v1, v2, v3, v4) : CST.using_directive) =
  let v1 = token env v1 (* "using" *) in
  let v2 =
    (match v2 with
    | Some x ->
        (match x with
        | `Static tok -> token env tok (* "static" *)
        | `Name_equals x -> map_name_equals env x
        )
    | None -> todo env ())
  in
  let v3 = map_name env v3 in
  let v4 = token env v4 (* ";" *) in
  todo env (v1, v2, v3, v4)

let map_global_attribute_list (env : env) ((v1, v2, v3, v4, v5) : CST.global_attribute_list) =
  let v1 = token env v1 (* "[" *) in
  let v2 =
    (match v2 with
    | `Asse tok -> token env tok (* "assembly" *)
    | `Module tok -> token env tok (* "module" *)
    )
  in
  let v3 = token env v3 (* ":" *) in
  let v4 =
    (match v4 with
    | Some (v1, v2) ->
        let v1 = map_attribute env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_attribute env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v5 = token env v5 (* "]" *) in
  todo env (v1, v2, v3, v4, v5)

let map_primary_constructor_base_type (env : env) ((v1, v2) : CST.primary_constructor_base_type) =
  let v1 = map_identifier env v1 in
  let v2 = map_argument_list env v2 in
  todo env (v1, v2)

let map_bracketed_parameter_list (env : env) ((v1, v2, v3, v4) : CST.bracketed_parameter_list) =
  let v1 = token env v1 (* "[" *) in
  let v2 = map_parameter env v2 in
  let v3 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_parameter env v2 in
      todo env (v1, v2)
    ) v3
  in
  let v4 = token env v4 (* "]" *) in
  todo env (v1, v2, v3, v4)

let map_accessor_declaration (env : env) ((v1, v2, v3, v4) : CST.accessor_declaration) =
  let v1 = List.map (map_attribute_list env) v1 in
  let v2 = List.map (map_modifier env) v2 in
  let v3 =
    (match v3 with
    | `Get tok -> token env tok (* "get" *)
    | `Set tok -> token env tok (* "set" *)
    | `Add tok -> token env tok (* "add" *)
    | `Remove tok -> token env tok (* "remove" *)
    | `Init tok -> token env tok (* "init" *)
    | `Id x -> map_identifier env x
    )
  in
  let v4 = map_function_body env v4 in
  todo env (v1, v2, v3, v4)

let map_base_list (env : env) ((v1, v2, v3) : CST.base_list) =
  let v1 = token env v1 (* ":" *) in
  let v2 = map_type_pattern env v2 in
  let v3 =
    List.map (fun (v1, v2) ->
      let v1 = token env v1 (* "," *) in
      let v2 = map_type_pattern env v2 in
      todo env (v1, v2)
    ) v3
  in
  todo env (v1, v2, v3)

let map_enum_member_declaration_list (env : env) ((v1, v2, v3, v4) : CST.enum_member_declaration_list) =
  let v1 = token env v1 (* "{" *) in
  let v2 =
    (match v2 with
    | Some (v1, v2) ->
        let v1 = map_enum_member_declaration env v1 in
        let v2 =
          List.map (fun (v1, v2) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_enum_member_declaration env v2 in
            todo env (v1, v2)
          ) v2
        in
        todo env (v1, v2)
    | None -> todo env ())
  in
  let v3 =
    (match v3 with
    | Some tok -> token env tok (* "," *)
    | None -> todo env ())
  in
  let v4 = token env v4 (* "}" *) in
  todo env (v1, v2, v3, v4)

let map_record_base (env : env) (x : CST.record_base) =
  (match x with
  | `COLON_id_rep_COMMA_id (v1, v2, v3) ->
      let v1 = token env v1 (* ":" *) in
      let v2 = map_identifier env v2 in
      let v3 =
        List.map (fun (v1, v2) ->
          let v1 = token env v1 (* "," *) in
          let v2 = map_identifier env v2 in
          todo env (v1, v2)
        ) v3
      in
      todo env (v1, v2, v3)
  | `COLON_prim_cons_base_type_opt_COMMA_id_rep_COMMA_id (v1, v2, v3) ->
      let v1 = token env v1 (* ":" *) in
      let v2 = map_primary_constructor_base_type env v2 in
      let v3 =
        (match v3 with
        | Some (v1, v2, v3) ->
            let v1 = token env v1 (* "," *) in
            let v2 = map_identifier env v2 in
            let v3 =
              List.map (fun (v1, v2) ->
                let v1 = token env v1 (* "," *) in
                let v2 = map_identifier env v2 in
                todo env (v1, v2)
              ) v3
            in
            todo env (v1, v2, v3)
        | None -> todo env ())
      in
      todo env (v1, v2, v3)
  )

let map_accessor_list (env : env) ((v1, v2, v3) : CST.accessor_list) =
  let v1 = token env v1 (* "{" *) in
  let v2 = List.map (map_accessor_declaration env) v2 in
  let v3 = token env v3 (* "}" *) in
  todo env (v1, v2, v3)

let map_enum_declaration (env : env) ((v1, v2, v3, v4, v5, v6, v7) : CST.enum_declaration) =
  let v1 = List.map (map_attribute_list env) v1 in
  let v2 = List.map (map_modifier env) v2 in
  let v3 = token env v3 (* "enum" *) in
  let v4 = map_identifier env v4 in
  let v5 =
    (match v5 with
    | Some x -> map_base_list env x
    | None -> todo env ())
  in
  let v6 = map_enum_member_declaration_list env v6 in
  let v7 =
    (match v7 with
    | Some tok -> token env tok (* ";" *)
    | None -> todo env ())
  in
  todo env (v1, v2, v3, v4, v5, v6, v7)

let rec map_class_declaration (env : env) ((v1, v2, v3, v4, v5, v6, v7, v8, v9) : CST.class_declaration) =
  let v1 = List.map (map_attribute_list env) v1 in
  let v2 = List.map (map_modifier env) v2 in
  let v3 = token env v3 (* "class" *) in
  let v4 = map_identifier env v4 in
  let v5 =
    (match v5 with
    | Some x -> map_type_parameter_list env x
    | None -> todo env ())
  in
  let v6 =
    (match v6 with
    | Some x -> map_base_list env x
    | None -> todo env ())
  in
  let v7 =
    List.map (map_type_parameter_constraints_clause env) v7
  in
  let v8 = map_declaration_list env v8 in
  let v9 =
    (match v9 with
    | Some tok -> token env tok (* ";" *)
    | None -> todo env ())
  in
  todo env (v1, v2, v3, v4, v5, v6, v7, v8, v9)

and map_declaration (env : env) (x : CST.declaration) =
  (match x with
  | `Class_decl x -> map_class_declaration env x
  | `Cons_decl (v1, v2, v3, v4, v5, v6) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = List.map (map_modifier env) v2 in
      let v3 = map_identifier env v3 in
      let v4 = map_parameter_list env v4 in
      let v5 =
        (match v5 with
        | Some x -> map_constructor_initializer env x
        | None -> todo env ())
      in
      let v6 = map_function_body env v6 in
      todo env (v1, v2, v3, v4, v5, v6)
  | `Conv_op_decl (v1, v2, v3, v4, v5, v6, v7) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = List.map (map_modifier env) v2 in
      let v3 =
        (match v3 with
        | `Impl tok -> token env tok (* "implicit" *)
        | `Expl tok -> token env tok (* "explicit" *)
        )
      in
      let v4 = token env v4 (* "operator" *) in
      let v5 = map_type_pattern env v5 in
      let v6 = map_parameter_list env v6 in
      let v7 = map_function_body env v7 in
      todo env (v1, v2, v3, v4, v5, v6, v7)
  | `Dele_decl x -> map_delegate_declaration env x
  | `Dest_decl (v1, v2, v3, v4, v5, v6) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 =
        (match v2 with
        | Some tok -> token env tok (* "extern" *)
        | None -> todo env ())
      in
      let v3 = token env v3 (* "~" *) in
      let v4 = map_identifier env v4 in
      let v5 = map_parameter_list env v5 in
      let v6 = map_function_body env v6 in
      todo env (v1, v2, v3, v4, v5, v6)
  | `Enum_decl x -> map_enum_declaration env x
  | `Event_decl (v1, v2, v3, v4, v5, v6, v7) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = List.map (map_modifier env) v2 in
      let v3 = token env v3 (* "event" *) in
      let v4 = map_type_pattern env v4 in
      let v5 =
        (match v5 with
        | Some x -> map_explicit_interface_specifier env x
        | None -> todo env ())
      in
      let v6 = map_identifier env v6 in
      let v7 =
        (match v7 with
        | `Acce_list x -> map_accessor_list env x
        | `SEMI tok -> token env tok (* ";" *)
        )
      in
      todo env (v1, v2, v3, v4, v5, v6, v7)
  | `Event_field_decl (v1, v2, v3, v4, v5) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = List.map (map_modifier env) v2 in
      let v3 = token env v3 (* "event" *) in
      let v4 = map_variable_declaration env v4 in
      let v5 = token env v5 (* ";" *) in
      todo env (v1, v2, v3, v4, v5)
  | `Field_decl (v1, v2, v3, v4) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = List.map (map_modifier env) v2 in
      let v3 = map_variable_declaration env v3 in
      let v4 = token env v4 (* ";" *) in
      todo env (v1, v2, v3, v4)
  | `Inde_decl (v1, v2, v3, v4, v5, v6, v7) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = List.map (map_modifier env) v2 in
      let v3 = map_type_pattern env v3 in
      let v4 =
        (match v4 with
        | Some x -> map_explicit_interface_specifier env x
        | None -> todo env ())
      in
      let v5 = token env v5 (* "this" *) in
      let v6 = map_bracketed_parameter_list env v6 in
      let v7 =
        (match v7 with
        | `Acce_list x -> map_accessor_list env x
        | `Arrow_exp_clause_SEMI (v1, v2) ->
            let v1 = map_arrow_expression_clause env v1 in
            let v2 = token env v2 (* ";" *) in
            todo env (v1, v2)
        )
      in
      todo env (v1, v2, v3, v4, v5, v6, v7)
  | `Inte_decl x -> map_interface_declaration env x
  | `Meth_decl (v1, v2, v3, v4, v5, v6, v7, v8, v9) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = List.map (map_modifier env) v2 in
      let v3 = map_return_type env v3 in
      let v4 =
        (match v4 with
        | Some x -> map_explicit_interface_specifier env x
        | None -> todo env ())
      in
      let v5 = map_identifier env v5 in
      let v6 =
        (match v6 with
        | Some x -> map_type_parameter_list env x
        | None -> todo env ())
      in
      let v7 = map_parameter_list env v7 in
      let v8 =
        List.map (map_type_parameter_constraints_clause env) v8
      in
      let v9 = map_function_body env v9 in
      todo env (v1, v2, v3, v4, v5, v6, v7, v8, v9)
  | `Name_decl x -> map_namespace_declaration env x
  | `Op_decl (v1, v2, v3, v4, v5, v6, v7) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = List.map (map_modifier env) v2 in
      let v3 = map_type_pattern env v3 in
      let v4 = token env v4 (* "operator" *) in
      let v5 = map_overloadable_operator env v5 in
      let v6 = map_parameter_list env v6 in
      let v7 = map_function_body env v7 in
      todo env (v1, v2, v3, v4, v5, v6, v7)
  | `Prop_decl (v1, v2, v3, v4, v5, v6) ->
      let v1 = List.map (map_attribute_list env) v1 in
      let v2 = List.map (map_modifier env) v2 in
      let v3 = map_type_pattern env v3 in
      let v4 =
        (match v4 with
        | Some x -> map_explicit_interface_specifier env x
        | None -> todo env ())
      in
      let v5 = map_identifier env v5 in
      let v6 =
        (match v6 with
        | `Acce_list_opt_EQ_exp_SEMI (v1, v2) ->
            let v1 = map_accessor_list env v1 in
            let v2 =
              (match v2 with
              | Some (v1, v2, v3) ->
                  let v1 = token env v1 (* "=" *) in
                  let v2 = map_constant_pattern env v2 in
                  let v3 = token env v3 (* ";" *) in
                  todo env (v1, v2, v3)
              | None -> todo env ())
            in
            todo env (v1, v2)
        | `Arrow_exp_clause_SEMI (v1, v2) ->
            let v1 = map_arrow_expression_clause env v1 in
            let v2 = token env v2 (* ";" *) in
            todo env (v1, v2)
        )
      in
      todo env (v1, v2, v3, v4, v5, v6)
  | `Record_decl x -> map_record_declaration env x
  | `Struct_decl x -> map_struct_declaration env x
  | `Using_dire x -> map_using_directive env x
  )

and map_declaration_list (env : env) ((v1, v2, v3) : CST.declaration_list) =
  let v1 = token env v1 (* "{" *) in
  let v2 = List.map (map_declaration env) v2 in
  let v3 = token env v3 (* "}" *) in
  todo env (v1, v2, v3)

and map_interface_declaration (env : env) ((v1, v2, v3, v4, v5, v6, v7, v8, v9) : CST.interface_declaration) =
  let v1 = List.map (map_attribute_list env) v1 in
  let v2 = List.map (map_modifier env) v2 in
  let v3 = token env v3 (* "interface" *) in
  let v4 = map_identifier env v4 in
  let v5 =
    (match v5 with
    | Some x -> map_type_parameter_list env x
    | None -> todo env ())
  in
  let v6 =
    (match v6 with
    | Some x -> map_base_list env x
    | None -> todo env ())
  in
  let v7 =
    List.map (map_type_parameter_constraints_clause env) v7
  in
  let v8 = map_declaration_list env v8 in
  let v9 =
    (match v9 with
    | Some tok -> token env tok (* ";" *)
    | None -> todo env ())
  in
  todo env (v1, v2, v3, v4, v5, v6, v7, v8, v9)

and map_namespace_declaration (env : env) ((v1, v2, v3, v4) : CST.namespace_declaration) =
  let v1 = token env v1 (* "namespace" *) in
  let v2 = map_name env v2 in
  let v3 = map_declaration_list env v3 in
  let v4 =
    (match v4 with
    | Some tok -> token env tok (* ";" *)
    | None -> todo env ())
  in
  todo env (v1, v2, v3, v4)

and map_record_body (env : env) (x : CST.record_body) =
  (match x with
  | `Decl_list x -> map_declaration_list env x
  | `SEMI tok -> token env tok (* ";" *)
  )

and map_record_declaration (env : env) ((v1, v2, v3, v4, v5, v6, v7, v8, v9) : CST.record_declaration) =
  let v1 = List.map (map_attribute_list env) v1 in
  let v2 = List.map (map_modifier env) v2 in
  let v3 = token env v3 (* "record" *) in
  let v4 = map_identifier env v4 in
  let v5 =
    (match v5 with
    | Some x -> map_type_parameter_list env x
    | None -> todo env ())
  in
  let v6 =
    (match v6 with
    | Some x -> map_parameter_list env x
    | None -> todo env ())
  in
  let v7 =
    (match v7 with
    | Some x -> map_record_base env x
    | None -> todo env ())
  in
  let v8 =
    List.map (map_type_parameter_constraints_clause env) v8
  in
  let v9 = map_record_body env v9 in
  todo env (v1, v2, v3, v4, v5, v6, v7, v8, v9)

and map_struct_declaration (env : env) ((v1, v2, v3, v4, v5, v6, v7, v8, v9) : CST.struct_declaration) =
  let v1 = List.map (map_attribute_list env) v1 in
  let v2 = List.map (map_modifier env) v2 in
  let v3 = token env v3 (* "struct" *) in
  let v4 = map_identifier env v4 in
  let v5 =
    (match v5 with
    | Some x -> map_type_parameter_list env x
    | None -> todo env ())
  in
  let v6 =
    (match v6 with
    | Some x -> map_base_list env x
    | None -> todo env ())
  in
  let v7 =
    List.map (map_type_parameter_constraints_clause env) v7
  in
  let v8 = map_declaration_list env v8 in
  let v9 =
    (match v9 with
    | Some tok -> token env tok (* ";" *)
    | None -> todo env ())
  in
  todo env (v1, v2, v3, v4, v5, v6, v7, v8, v9)

let map_type_declaration (env : env) (x : CST.type_declaration) =
  (match x with
  | `Class_decl x -> map_class_declaration env x
  | `Struct_decl x -> map_struct_declaration env x
  | `Inte_decl x -> map_interface_declaration env x
  | `Enum_decl x -> map_enum_declaration env x
  | `Dele_decl x -> map_delegate_declaration env x
  | `Record_decl x -> map_record_declaration env x
  )

let map_namespace_member_declaration (env : env) (x : CST.namespace_member_declaration) =
  (match x with
  | `Name_decl x -> map_namespace_declaration env x
  | `Type_decl x -> map_type_declaration env x
  )

let map_compilation_unit (env : env) ((v1, v2, v3, v4, v5) : CST.compilation_unit) =
  let v1 = List.map (map_extern_alias_directive env) v1 in
  let v2 = List.map (map_using_directive env) v2 in
  let v3 = List.map (map_global_attribute_list env) v3 in
  let v4 = List.map (map_global_statement env) v4 in
  let v5 =
    List.map (map_namespace_member_declaration env) v5
  in
  todo env (v1, v2, v3, v4, v5)
