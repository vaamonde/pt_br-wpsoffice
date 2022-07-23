# Pacote de Tradução e Dicionário do WPS Office 2019 para o Linux Mint 20.x

O pacote de Tradução e Dicionário do WPS Office 2019 para o Linux Mint 20.x foi retirado da versão do WPS Office para Windows. Infelizmente a comunidade que era responsável pela tradução e o dicionário da versão Community do WPS Office para GNU/Linux não está mais disponível no site oficial.

Script foi testado na versão do WPS Office 2019 release 11.1.0.x no Linux Mint 20.x, antes de executar o script faça a instalação e configuração básica do Pacote .DEB do WPS Office 2019 do site oficial: https://www.wps.com/

## Procedimentos para utilizar esse script:

#01_ Primeira etapa: Acessar o Terminal

	Atalho: Ctrl + Alt + T

#02_ Segunda etapa.: Instalar o comando Git:

	sudo apt update
	sudo apt install git

#03_ Terceira etapa: Clonar o projeto do Github

	git clone https://github.com/vaamonde/pt_br-wpsoffice

#04_ Quarta etapa..: Acessar o repositório clonado localmente

	cd pt_br-wpsoffice/

#05_ Quinta etapa..: Executar o script de atualização do Tradutor e Dicionário

	bash install.sh

#06_ Abrir o WPS Office e verificar se a tradução está funcionando

	wps

## Procedimentos para corrigir a Falha de Acentuação do WPS Office

#01_ Abrir o WPS Office

	_ na tela inicial do WPS Office clicar em: Global Settings
	_ selecionar: settings
	_ em Settings Other clicar em: Settings Other Options Popup Component
	_ alterar para: Multi-Module Mode <OK>
	_ na tela de Restart WPS to see changes clicar em: <OK>
	_ Fechar o WPS Office e testar a acentuação no Write e Spreadsheets