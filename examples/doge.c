#include "../mpc.h"

int main(int argc, char **argv) {

  mpc_result_t r;
  
  mpc_parser_t* Adjective = mpc_new("adjective");
  mpc_parser_t* Noun      = mpc_new("noun");
  mpc_parser_t* Verb      = mpc_new("verb");
  mpc_parser_t* Phrase1    = mpc_new("phrase1");
  mpc_parser_t* Phrase2    = mpc_new("phrase2");
  mpc_parser_t* Doge      = mpc_new("doge");

  mpca_lang(MPCA_LANG_DEFAULT,
    " adjective : \"wow\" | \"many\" | \"so\" | \"such\";                 "
    " noun      : \"lisp\" | \"language\" | \"c\" | \"book\" | \"build\"; "
    " verb      : \"look\" | \"touch\" | \"smell\" | \"find\" | \"search\"; "
    " phrase1   : <verb> <adjective> <noun>; "
    " phrase2   : <verb> <verb>;               "
    " doge      : /^/ <phrase1>* | <phrase2>* /$/ ; ",
    Adjective, Noun, Verb,Phrase1,Phrase2,Doge, NULL);
  
  if (argc > 1) {
    
    if (mpc_parse_contents(argv[1], Doge, &r)) {
      mpc_ast_print(r.output);
      mpc_ast_delete(r.output);
    } else {
      mpc_err_print(r.error);
      mpc_err_delete(r.error);
    }
  
  } else {

    if (mpc_parse_pipe("<stdin>", stdin, Doge, &r)) {
      mpc_ast_print(r.output);
      mpc_ast_delete(r.output);
    } else {
      mpc_err_print(r.error);
      mpc_err_delete(r.error);
    }
  
  }

  mpc_cleanup(5, Adjective, Noun,Verb, Phrase1, Doge);
  
  return 0;
  
}

