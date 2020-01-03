# Pacote de tradução e dicionário do WPS Office

01. Faça o download do arquivo pt_BR.tar.gz: wget https://github.com/vaamonde/pt_br-wpsoffice/blob/master/pt_BR.tar.gz;
02. Faça o download do arquivo pt_BR.zip: https://github.com/vaamonde/pt_br-wpsoffice/blob/master/pt_BR.zip;
03. Descompacta o conteúdo do arquivo pt_BR.tar.gz: tar -zxvf pt_BR.tar.gz;
04. Mova a pasta pt_BR para o diretório de tradução: sudo mv -v pt_BR /opt/kingsoft/wps-office/office6/mui/;
05. Altere as permissões da pasta pt_BR para root: sudo chown -Rf root.root /opt/kingsoft/wps-office/office6/mui/pt_BR;
06. Descompacta o conteúdo do arquivo pt_BR.zip: unzip pt_BR.zip;
07. Mova a pasta pt_BR para o diretório de dicionário: sudo mv -v pt_BR /opt/kingsoft/wps-office/office6/dicts/spellcheck;
08. Altere as permissões da pasta pt_BR para root: sudo chown -Rf root.root /opt/kingsoft/wps-office/office6/dicts/spellcheck/pt_BR;
09. Acesse novamente o WPS Office é verifique se está em pt_BR.

Teste feito no GNU/Linux Mint 17.3/18.1/19/19.1/19.2/19.3 instalado como Português-Brasil UTF8.
