# README

# Projeto Software odontológico CODENTAL
**Sistema de Cadastro de pessoas por importação CSV**

## Instalação

### Linux (Ubuntu 22.04.4 LTS) ou Windows 10 com WSL

1. Atualize o sistema operacional:
```
$ sudo apt-get update
$ sudo apt-get upgrade
```
2. Instale os seguintes pacotes:
```
$ sudo apt-get install -y build-essential autoconf bison libssl-dev libyaml-dev libreadline-dev zlib1g-dev
libncurses5-dev libffi-dev libgdbm-dev libpq-dev curl ruby-full`
```

#### Git

3. Instale o Git:
```
$ sudo apt-get install git
```

4. Instalando a versão do Ruby desejada
```
$ rvm install 3.3.6
```

5. Verifique a versão instalada
```
$ rvm list
```

6. Use uma versão específica e a torne padrão
```
$ rvm use 3.3.6 --default
```

#### Rails

7. Instale o Rails
```
$ gem install rails -v 7.0
```

8. Verifique se o Rails foi instalado
```
$ rails -v
```

#### NodeJS

9. Instale o NodeJS
```
$ sudo apt-get install nodejs
```

10. Verifique se o NodeJS foi instalado
```
$ nodejs --version
```

11. Instale o NPM
```
$ sudo apt install npm
```

#### Yarn

12. Instale o Yarn
```
$ npm install --global yarn
```

13. Verifique se o Yarn foi instalado
```
$ yarn --version
```

#### PostgreSQL

14. Instale o PostgreSQL
```
$ sudo apt-get install postgresql postgresql-contrib libpq-dev
```

15. Verifique se o PostgreSQL foi instalado
```
$ psql --version
```

#### Bundler

16. Instale o gerenciador de pacotes do Ruby:
```
$ gem install bundler:2.6.1
```

#### Configurações

17. Crie o arquivo `config/database.yml`

18. Instale as dependências JavaScript:
```
$ yarn install 1.22.22
```

#### Iniciando

19. Inicie a aplicação:
```
$ rails s

$ bundle install

$ rails db:create

$ rails db:migrate
```

### Requisitos
- Ruby 3.3.6
- Rails 7.0
- Node 17.1.0
- Yarn 1.22.15..
