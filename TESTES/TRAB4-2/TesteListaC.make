##################################################
###
### Diretivas de MAKE para o construto: TesteListaC
### Gerado a partir de: TesteListaC.comp
###
### ----- Arquivo gerado, N�O EDITE!!! -----
###
##################################################

### Nomes globais

NOME            = TesteListaC


### Nomes de paths

Pinc                 = .
Ptab                 = .
Pdef                 = .
Ph                   = .
Pobj                 = .
Perr                 = .
PDEFAULT             = .
Pc                   = .

### Nomes de diret�rios para gera��o

Finc                 = .
Ftab                 = .
Fdef                 = .
Fh                   = .
Fobj                 = .
Ferr                 = .
FDEFAULT             = .
Fc                   = .

### Macros da plataforma


O       =
OD      = /Zi /Od
L       =
LD      = /DEBUG /DEBUGTYPE:CV

!IFDEF PRD
O       = /Ox
!ENDIF

OPT     = /c /J /W4 /nologo
INCLUDE = $(INCLUDE);$(PDEFAULT)


### Regras de gera��o

all : limpa \
   $(Fobj)\testcir.obj   $(Fobj)\lcirc.obj \
   Construto

### Limpar arquivos

limpa :
   CompileBanner /c$(NOME)
   CompileBanner /c$(NOME) >$(Ferr)\$(NOME).err


### Depend�ncias de m�dulos objeto a compilar

$(Fobj)\testcir.obj :  {$(Pc)}\testcir.c \
    {$(Ph)}generico.h           {$(Ph)}lcirc.h              {$(Ph)}lerparm.h            \
    {$(Ph)}tst_espc.h          
   cl $(O) $(OPT) /Fo$(Fobj)\ $(Fc)\$(@B).c >> $(Ferr)\$(NOME).err

$(Fobj)\lcirc.obj :  {$(Pc)}\lcirc.c \
    {$(Ph)}lcirc.h             
   cl $(O) $(OPT) /Fo$(Fobj)\ $(Fc)\$(@B).c >> $(Ferr)\$(NOME).err


### Termina��o

Construto : \
   $(Fobj)\testcir.obj   $(Fobj)\lcirc.obj
    cd $(Fobj)
    LINK $(L) @$(NOME).build >> $(Ferr)\$(NOME).err

##################################################
###
### Fim de diretivas MAKE para o construto: TesteListaC
###
##################################################

