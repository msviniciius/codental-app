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

#### Como acessar o painel (login e senha)
```
$ No canto direto a cima na aplicação, temos a opção entrar

$ Em seguida se não tiver um login e senha, selecione a opção Cadastra-se

$ Ensira seu email e senha
```

#### Sobre

- Ruby on Rails (Backend):
```
O Ruby on Rails foi escolhido como framework principal para o backend da aplicação devido à sua convenção sobre configuração, robustez e produtividade.
```
- AdminLTE (Interface de Usuário):
```
AdminLTE, um template de painel de administração moderno e responsivo. Ele é baseado no Bootstrap 5 e oferece uma interface rica.
```
- PostgreSQL (Banco de Dados):
```
PostgreSQL como banco de dados relacional devido à sua confiabilidade, desempenho e suporte a transações complexas.
```
- Redis e Sidekiq (Cache e Processamento Assíncrono):
```
Redis é utilizado para cache e filas de tarefas assíncronas. Sidekiq é responsável pelo processamento de tarefas assíncronas em segundo plano.
```
- Cloudinary (Armazenamento de Imagens):
```
Cloudinary é utilizado para o armazenamento e manipulação de imagens na nuvem. Ele oferece uma solução escalável para upload, processamento e entrega de imagens otimizadas.
```
- Heroku (Implantação):
```
Heroku como plataforma de hospedagem devido à sua simplicidade, facilidade de escalabilidade e integração com outras ferramentas.
```
- Conclusão:
```
Conclusão
A combinação dessas tecnologias — Ruby on Rails, PostgreSQL, Redis, Sidekiq, Cloudinary e Heroku — fornece uma base sólida e escalável para a nossa aplicação. Essas ferramentas permitem que o sistema seja eficiente, fácil de escalar e capaz de lidar com grandes volumes de dados e tráfego. Além disso, o uso do AdminLTE como template para a interface de usuário proporciona uma experiência agradável e intuitiva para os administradores do sistema.
```

### Requisitos
- Ruby 3.3.6
- Rails 8.0
- Node 17.1.0
- Yarn 1.22.15..
