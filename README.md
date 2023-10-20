# Instalação do Plugin para IntelliJ e Android Studio

Siga os passos abaixo para instalar o plugin para IntelliJ e Android Studio.

## Pré-requisitos

- Verifique se você possui a versão 16.* do Node.js instalada na sua máquina. Para isso, execute o comando `node --version` no terminal. Caso não possua, [baixe e instale](https://nodejs.org/en/download/) a versão correta do Node.js.

## Passo 1: Instalar o agente de autenticação Flow

O primeiro passo é instalar o agente que fará a conexão com o portal do Flow para autenticar. Para isso, execute o seguinte comando no seu terminal:

```
curl -s https://github.com/gouveiahenrique/flow-auth/blob/main/Makefile -o Makefile && make install
```

Este comando baixará o Makefile do repositório e executará o comando `make install` para instalar o agente de autenticação Flow.

## Passo 2: Verificar a instalação

- Verifique se não houve nenhum erro durante a instalação.
- Para ter certeza que o agente foi instalado com sucesso, execute o seguinte comando:

```
/usr/local/flow/bin/electron /usr/local/flow/lib/node_modules/flow-auth/index.js
```

Caso visualize a mensagem `Server running on port 22450`, significa que o agente foi instalado com sucesso.

## Passo 3: Inicializar a IDE via linha de comando

Para que a IDE possa se comunicar com o agente de autenticação do Flow, você precisará inicializá-la via linha de comando. Feche a IDE se ela estiver aberta, e então abra-a novamente a partir do terminal.

### Para macOS:

- **Android Studio**: `open -na "Android Studio.app"`
- **IntelliJ IDE**A: `open -na "IntelliJ IDEA CE.app"`

### Para Linux:

- **Android Studio**: `/opt/android-studio/bin/studio.sh`
- **IntelliJ IDEA**: `/opt/idea/bin/idea.sh`

## Passo 4: Acesse o menu de plugins

No menu principal, vá para File > Settings (no Windows e Linux) ou IntelliJ IDEA > Preferences (no macOS). 

Em seguida, selecione Plugins no painel à esquerda.


## Passo 4.1: Adicionar repositório personalizado

Antes de instalar o plugin, você precisa adicionar um repositório personalizado. Clique no ícone de engrenagem no canto superior direito da janela de Plugins e selecione **Manage Plugin Repositories**.

Clique no botão **+** para adicionar um novo repositório e insira o seguinte link:

`https://raw.githubusercontent.com/gouveiahenrique/flow-auth/main/plugin/flowPlugins.xml`

Clique em **OK** para adicionar o repositório e feche a janela **Custom Plugin Repositories**.

## Passo 5: Pesquise e instale o plugin

Agora, vá para a aba **Marketplace** e pesquise por **"Flow@IDE"** na barra de pesquisa.

Encontre o plugin na lista de resultados e clique no botão **Install**.

## Passo 6: Reinicie o IntelliJ ou Android Studio

Após a instalação do plugin, reinicie o IntelliJ IDEA ou o Android Studio para que as alterações entrem em vigor.

Parabéns! Agora você instalou com sucesso o plugin para IntelliJ e Android Studio.