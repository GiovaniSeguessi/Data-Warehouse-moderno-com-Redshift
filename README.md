Olá! Este projeto tem como objetivo a construção de um Data Warehouse moderno utilizando o Amazon Redshift e o Amazon S3. Faremos a extração de dados em formato CSV do S3 para o Redshift, onde serão armazenados em tabelas. A base de dados utilizada será a conhecida Northwind Database.

Ao longo do projeto, exploraremos consultas SQL diretamente no Redshift, utilizando suas poderosas capacidades de processamento e análise de dados. Além disso, mostrarei como conectar o Redshift ao LookerStudio, uma plataforma de criação de dashboards e visualizações interativas.

Segue as instruções para realização do projeto, as fotos no repositório irão te auxiliar.

## Bucket S3
1. Crie um bucket no Amazom S3 com um nome exclusivo para armazenar os arquivos CSV.
2. Utilize as configurações padrão para criar o bucket.
3. Dentro do bucket criado, crie uma pasta e carregue os arquivos CSV contendo os dados a serem carregados no Redshift.

## Criando par de chaves
1. Clique no seu nome com botão esquerdo e vá para Credenciais de segurança
2. Em chaves de acesso crie a sua e salve-a em um local protegido

## Criando Bando de dados e tabelas no Redshift
1. Crie um Cluster no Amazom Redshift com as configurações desejadas, para aprendizado recomendo a "dc2.large | 1 nó".
2. Acesse o editor de consultas v2 no Redshift e crie o banco de dados abrindo um notebook e digitando o código: create database 'nome do banco';
3. Execute os comandos SQL no arquivo "NorthWind-DDL.sql" para criar as tabelas no banco de dados criado anteriormente.

## Carregando dados com a função copy
1. Utilize a função COPY para carregar os dados dos arquivos CSV no S3 para as tabelas no Redshift. Certifique-se de especificar corretamente o caminho do arquivo no S3.
2. Na linha FROM, você deverá colocar o URI do caminho do arquivo no S3, veja a foto para saber onde está o URI se tiver dificuldades.
3. Voce irá rodar um código para cada tabela presente, com seu respectivo nome e caminho, no total são 8 tabelas.

## Executando consultas SQL
1. Após a configuração e o carregamento dos dados no Redshift, você estará pronto para executar consultas SQL. Utilize o editor de consultas do Redshift para realizar análises e obter insights a partir dos dados armazenados.
2. Existem uma infinidade de possibilidades de consultas, sinta-se livre para explorar os dados.

## Conexão com Google Looker Studio
1. Na guia do cluster, vá em ações e selecione a opção "Modificar a configuração publicamente acessível" e clique em habilitar.
1. Se o cluster não estiver liberado, vá para os grupos de segurança do seu cluster e libere os acessos para seu ip ou para IPV4.
2. Abra o Looker Studio e clique em 'Relatório em Branco' e Procure a conexão com o Redshift.
4. Preencha os dados para conexão na seguinte ordem: Endpoint, porta, nome do banco de dados, usuário e senha.
5. O endpoint fica no localizado no cluster e deve ser colado apenas até o .com
6. A Porta é a 5439
7. Sinta-se a vontade para fazer lindos dashboards

* Nas fotos do repositório se encontra o esquema do banco de dados, entenda bem o esquema para poder manipular os dados.
* Lembre-se de apagar tudo após o uso se não quiser cobranças.