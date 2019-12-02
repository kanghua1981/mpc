#include "../mpc.h"

/*  value   : /[a-zA-Z0-9_+&-/,\"()#]+/ ;   */ 

int lval_read(mpc_ast_t* t) {
    int i=0;
    if (strstr(t->tag,"inc"))
        printf("%s\n",t->contents);

   for (i=0;i < t->children_num;i++)
   {
        lval_read(t->children[i]); 
   }
   return 0;
}
int main(int argc, char** argv) {
  int ret = 0;
  mpc_result_t r;
  mpc_err_t *mpce = NULL;
  FILE *fs = NULL;
  mpc_parser_t* cmd = mpc_new("cmd");
  mpc_parser_t* src = mpc_new("src");
  mpc_parser_t* deps = mpc_new("deps");
  mpc_parser_t* target = mpc_new("target");
  mpc_parser_t* asst = mpc_new("asst");
  mpc_parser_t* value = mpc_new("value");
  mpc_parser_t* parser = mpc_new("parser");
  mpc_parser_t* cmd_t = mpc_new("cmd_t");
  mpc_parser_t* src_t = mpc_new("src_t");
  mpc_parser_t* deps_t = mpc_new("deps_t");
  mpc_parser_t* line1 = mpc_new("line1");
  mpc_parser_t* value1 = mpc_new("value1");
  mpc_parser_t* space = mpc_new("space");
  mpc_parser_t* newline = mpc_new("newline");
  mpc_parser_t* inc = mpc_new("inc");
  mpc_parser_t* wld = mpc_new("wld");

  char *input = (char*)argv[1];
  if (argc < 2)
    return 1;
  /*mpc_parser_t* Doge      = mpc_new("doge");*/
 fs = fopen(input,"r");
 if (fs == NULL)
  {    
    printf("open %s failed\n",input);
    return 1;
    }

     /* deps_t  : <deps> <asst> <line1> <newline>*; */ 
     /* line1   : ((<wld> | <inc>) \"\\\\\" <newline>)+ ;*/ 
     /* space   : /[\\\\f\\\\r\\\\t\\\\v ]*/ 
     /* line1   : ((<wld> | <inc>) \"\\\\\" <newline>)+ ;*/ 
     /*wld   : <space>* ('$' '(' \"wildcard \")* <inc> (')')*; */
      /*inc   : /[a-zA-Z0-9_+&-\\/,\\\"]   */ 
  mpce = mpca_lang(MPCA_LANG_DEFAULT,
    "                                    \
      target : /[a-zA-Z0-9_-\\/.]+/;   \
      value   : /[a-zA-Z0-9_+&\\-\\/\\\\,()#\\\"=$. ]*/;    \
      inc   : /[a-zA-Z0-9_\\/.\\-]*/;    \
      space   : ' ';    \
      wld   : <space>* ('$' '(' \"wildcard \")* <inc> (')')* ; \
      newline : \"\n\";  \
      line1   : (<wld> \"\\\\\" <newline>)+ ;    \
      value1  : <line1>;    \
      cmd : \"cmd_\" <target>;            \
      src      : \"source_\" <target>;       \
      deps    : \"deps_\" <target>;          \
      asst     : \":=\";                  \
      cmd_t  : <cmd> <asst> <value> <newline>*;  \
      src_t  : <src> <asst> <value> <newline>*;  \
      deps_t  : <deps> <asst> <value1> <newline>*;  \
      parser  : (<cmd_t> | <src_t> | <deps_t>)* | (<target> \":\"<value>)*;\
    ",
    target,value,inc,wld,space,newline,line1,value1,cmd,src, deps,asst,cmd_t,src_t,deps_t,parser);
    if (mpce)
    {
        mpc_err_print(mpce);
        return 1;
    }

    /*
    mpc_print(wld);
   mpc_print(line1);
   mpc_print(parser);
   mpc_print(value);
   mpc_print(space);
   mpc_print(line1);
   mpc_print(value1);
   */
  /* Do some parsing here... */
  ret = mpc_parse_file(input,fs,parser,&r);
  if (ret)
  {
    /*mpc_err_print(r.error);*/
    /*mpc_ast_print(r.output);*/
    if (r.output !=NULL) lval_read(r.output);
  }
  else
  {
    mpc_err_print(r.error);
  }
  mpc_cleanup(10, target, cmd, 
    src,deps,asst,value,cmd_t,
    src_t,deps_t,parser);
  
  return 0;
  
}
