Olá! Este projeto tem como objetivo a construção de um Data Warehouse moderno utilizando o Amazon Redshift e o Amazon S3. Faremos a extração de dados em formato CSV do S3 para o Redshift, onde serão armazenados em tabelas. A base de dados utilizada será a conhecida Northwind Database.

Ao longo do projeto, exploraremos consultas SQL diretamente no Redshift, utilizando suas poderosas capacidades de processamento e análise de dados. Além disso, mostrarei como conectar o Redshift ao LookerStudio, uma plataforma de criação de dashboards e visualizações interativas.

Segue as instruções para realização do projeto, as fotos no repositório irão te auxiliar.

## Bucket S3
1. Crie um bucket no S3 com um nome exclusivo 
2. Utilize todas as configurações padrão
3. Após criado o bucket, crie uma pasta e carregue os arquivos CSV que estão no repositório com nome de "arquivos csv" dentro da pasta
4. Voce ira utilizar o URI de cada arquivo, as imagens dentro do repositório irão te ajudar.

## Criando par de chaves
1. Clique no seu nome com botão esquerdo e vá para Credenciais de segurança
2. Em chaves de acesso crie a sua e salve-a em um local protegido

## Criando Bando de dados e tabelas no Redshift
1. Entre no Redshift e clique em criar Cluster.
2. Recomendo utilizar a configuração "dc2.large | 1 nó".
3. mantenha o usuario como awsuser, coloque uma senha e clique em criar cluster.
4. Vá em editor de consultas v2 para criar o banco de dados e as tabelas.
5. Abra um notebook e crie o banco de dados com o seguinte código: create database 'nome do seu gosto';
6. Após criar o banco de dados, Copie o arquivo NorthWind-DDL para criar as tabelas.(lembre-se de colocar o banco que foi criado por voce, por padrão estará no ed).
7. verifique se as tabelas foram criadas no banco de dados.

## Carregando dados com a função copy
1. Utilize os codigos do arquivo copiar para extrair os dados do s3 para popular suas tabelas.
2. Na linha FROM, você deverá colocar o URI do caminho do arquivo no S3, veja a foto para saber onde está o URI se tiver dificuldades.
3. Voce irá rodar um código para cada tabela presente, com seu respectivo nome e caminho, no total são 8 tabelas.
4. Lembre-se de alterar o nome da tabela, colocar sua chave de acesso e sua região.

## Rodando consultas SQL
1. Após seguir todos esses passos, basta rodar as consultas SQL sugeridas
2. Existem uma infinidade de possibilidades de consultas, sinta-se livre para explorar os dados.

## Conexão com Google Looker Studio
1. Certifique-se de que o seu cluster está com o acesso liberado, qualquer coisa vá para os grupos de segurança do seu cluster e libere para seu ip ou todos os acessos para IPV4
2. Abra o Looker Studio e clique em 'Relatório em Branco'
3. Procure a conexão com o Redshift
4. Preencha os dados para conexão na seguinte ordem: Endpoint, porta, nome do banco de dados, usuário e senha.
5. O endpoint fica no localizado no cluster e deve ser colado apenas até o .com
6. A Porta é a 5439
7. Sinta-se a vontade para fazer lindos dashboards

* Nas fotos do repositório existe uma foto do esquema do banco de dados, entenda bem o esquema para poder manipular os dados.
* Lembre-se de apagar tudo após o uso se não quiser cobranças.