# Pacote de Tradução e Dicionário do WPS Office 2019 para o Linux Mint 20.x

O pacote de Tradução e Dicionário do WPS Office 2019 para o Linux Mint 20.x foi retirado da versão do WPS Office para Windows. Infelizmente a comunidade que era responsável pela tradução e o dicionário da versão Community do WPS Office para GNU/Linux não está mais disponível no site oficial.

Script foi testado na versão do WPS Office 2019 release 11.1.0.x no Linux Mint 20.x, antes de executar o script faça a instalação e configuração básica do Pacote .DEB do WPS Office 2019 do site oficial: https://www.wps.com/

## Procedimentos para utilizar esse script:

#01_ Primeira etapa: Acessar o Terminal

	Atalho: Ctrl + Alt + T

#02_ Segunda etapa.: Instalar o comando Git:

	sudo apt update<br>
	sudo apt install git

#03_ Terceira etapa: Clonar o projeto do Github

	git clone https://github.com/vaamonde/pt_br-wpsoffice

#04_ Quarta etapa..: Acessar o repositório clonado localmente

	cd pt_br-wpsoffice/

#05_ Quinta etapa..: Executar o script de atualização do Tradutor e Dicionário

	./install.sh

#06_ Abrir o WPS Office e verificar se a tradução está funcionando

	wps