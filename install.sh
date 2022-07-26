#!/bin/bash
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Data de criação: 23/07/2022
# Data de atualização: 26/07/2022
# Versão: 0.03
# Testado e homologado para a versão do Linux Mint 20.1 Ulyssa, 20.2 Uma, 23.3 Una x64
# Testado e homologado para a versão do WPS Office 2019 release 11.1.0.x
#
# WPS Office é uma suíte de escritório escrito em C++ que roda em plataformas Windows, 
# Linux, Android e iOS. Desenvolvido pelo desenvolvedor de software chinês em Zhuhai, 
# a Kingsoft. O WPS Office é um conjunto de softwares que é composto de três componentes 
# principais: WPS Writer, WPS Presentation e WPS Spreadsheet. 
#
# Site Oficial do WPS Office: https://www.wps.com/
#
# Variável da Data Inicial para calcular o tempo de execução do script (VARIÁVEL MELHORADA)
# opção do comando date: +%T (Time)
HORAINICIAL=$(date +%T)
#
# Variável do usuário local que vai executar a instalação do tradutor e dicionário do WPS Office
# opção da variável de ambiente USER: usuário atual logado no sistema 
USUARIO=$(echo $USER)
#
# Variável do caminho do Log dos Script utilizado nesse curso (VARIÁVEL MELHORADA)
# opção do shell script: piper | = Conecta a saída padrão com a entrada padrão de outro comando
# opção do shell script: aspas simples ' ' = Protege uma string completamente (nenhum caractere é especial)
# opção do shell script: aspas duplas " " = Protege uma string, mas reconhece $, \ e ` como especiais
# opções do comando cut: -d (delimiter), -f (fields)
# opção da variável de ambiente $0: nome do comando ou script digitado
LOG="$HOME/$(echo $0 | cut -d'/' -f2)"
#
# Declarando as variáveis de instalação do WPS Office 2019 no Linux Mint
WPSOFFICE="/opt/kingsoft/wps-office/office6"
WPSOFFICEMUI="$WPSOFFICE/mui"
WPSOFFICEDICTS="$WPSOFFICE/dicts"
WPSOFFICEADDONS="$WPSOFFICE/addons"
WPSOFFICELOCAL="/home/$USER/.local/share/Kingsoft/office6"
#
# opção do comando echo: -e (enable interpretation of backslash escapes), \n (new line)
# $0 (variável de ambiente do nome do comando)
# opção do comando date: + (format), %d (day), %m (month), %Y (year 1970), %H (hour 24), %M (minute 60)
# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
echo -e "Início do script $0 em: $(date +%d/%m/%Y-"("%H:%M")")\n" &>> $LOG
clear
echo
#
echo -e "Instalação do Pacote de Tradução e Dicionário PT-BR do WPS Office no Linux Mint 20.x\n"
echo -e "Será necessário digitar a senha do seu usuário: $USUARIO que tem direitos de sudo.\n"
sleep 5
#
# opção do comando: echo: -e (interpretador de escapes de barra invertida)
# opção do comando if: [ ] = testa uma expressão, -e = testa se é diretório existe
echo -e "Verificando se o WPS Office 2019 está instalado, aguarde..."
	if [ -e "$WPSOFFICE" ]
		then
			echo -e "O WPS Office 2019 está instalado, tudo OK, continuando com o script...\n"
			sleep 5
	else
			echo "O WPS Office 2019 não está instalado, instale o WPS Office e depois execute esse script novamente"
			echo "Link de download da versão .DEB: https://www.wps.com/"
			exit 1
			sleep 5
	fi
#
echo -e "Atualizando o diretório de Tradução do WPS Office, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando cp: -R (recursive), -v (verbose)
	sudo cp -Rv mui/ $WPSOFFICE/ &>> $LOG
echo -e "Diretório de Tradução atualizado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Atualizando o diretório de Dicionário do WPS Office, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando cp: -R (recursive), -v (verbose)
	sudo cp -Rv dicts/ $WPSOFFICE/ &>> $LOG
echo -e "Diretório de Dicionário atualizado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Atualizando o diretório de Dicionário Customizado do WPS Office, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando cp: -R (recursive), -v (verbose)
	sudo cp -Rv data/ $WPSOFFICELOCAL/ &>> $LOG
echo -e "Diretório de Dicionário atualizado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Atualizando o diretório de Addons do WPS Office, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando cp: -R (recursive), -v (verbose)
	sudo cp -Rv addons/ $WPSOFFICE/ &>> $LOG
echo -e "Diretório de Addons atualizado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalação do Pacote de Tradução e Dicionário PT-BR do WPS Office feita com Sucesso!!!."
	# script para calcular o tempo gasto (SCRIPT MELHORADO, CORRIGIDO FALHA DE HORA:MINUTO:SEGUNDOS)
	# opção do comando date: +%T (Time)
	HORAFINAL=$(date +%T)
	# opção do comando date: -u (utc), -d (date), +%s (second since 1970)
	HORAINICIAL01=$(date -u -d "$HORAINICIAL" +"%s")
	HORAFINAL01=$(date -u -d "$HORAFINAL" +"%s")
	# opção do comando date: -u (utc), -d (date), 0 (string command), sec (force second), +%H (hour), %M (minute), %S (second), 
	TEMPO=$(date -u -d "0 $HORAFINAL01 sec - $HORAINICIAL01 sec" +"%H:%M:%S")
	# $0 (variável de ambiente do nome do comando)
	echo -e "Tempo gasto para execução do script $0: $TEMPO"
echo -e "Pressione <Enter> para concluir o processo."
# opção do comando date: + (format), %d (day), %m (month), %Y (year 1970), %H (hour 24), %M (minute 60)
echo -e "Fim do script $0 em: $(date +%d/%m/%Y-"("%H:%M")")\n" &>> $LOG
read
exit 1
