Para inicializar a aplicação, clone o projeto e certifique-se de ter instalado as seguintes configurações:

Ruby '2.6.6'
Rails '>= 6.0.3.6'

Após a clonar o projeto, rode os comandos no terminal:

'rails db:migrate'
'rails db:seed'

em seguida, rode o servidor local no terminal com o comando:

'rails s'

Com o servidor iniciado, terá acesso aos endpoints:

localhost:3000/
localhost:3000/admin (para visualizar melhor o banco de dados)

localhost:3000/api/v1/alternatives/ ( :index route )
localhost:3000/api/v1/alternatives/:id ( :show route )
localhost:3000/api/v1/alternatives/:id ( :update route )
localhost:3000/api/v1/alternatives/ ( :create route )

localhost:3000/api/v1/olympics/ ( :index route )
localhost:3000/api/v1/olympics/:id ( :show route )
localhost:3000/api/v1/olympics/:id ( :update route )
localhost:3000/api/v1/olympics/ ( :create route )
localhost:3000/api/v1/olympics/:id ( :destroy route )

localhost:3000/api/v1/questions/ ( :index route )
localhost:3000/api/v1/questions/:id ( :show route )
localhost:3000/api/v1/questions/:id ( :update route )
localhost:3000/api/v1/questions/ ( :create route )
localhost:3000/api/v1/questions/:id ( :destroy route )

localhost:3000/api/v1/responsable ( :index route )

localhost:3000/api/v1/subscription ( :index route )
localhost:3000/api/v1/subscription/:id ( :show route )
localhost:3000/api/v1/subscription/:id ( :update route )
localhost:3000/api/v1/subscription/ ( :create route )

localhost:3000/api/v1/users ( :index route )
localhost:3000/api/v1/users/:id ( :show route )
localhost:3000/api/v1/users/:id ( :update route )
localhost:3000/api/v1/users/ ( :destroy route )

localhost:3000/api/v1/exams ( :index route )
localhost:3000/api/v1/exams ( :show route )
localhost:3000/api/v1/exams/:id ( :update route )
localhost:3000/api/v1/exams/ ( :create route )
localhost:3000/api/v1/exams/:id ( :destroy route )

localhost:3000/api/v1/tests ( :index route )
localhost:3000/api/v1/tests ( :show route )
localhost:3000/api/v1/tests/:id ( :update route )
localhost:3000/api/v1/tests ( :create route )
localhost:3000/api/v1/tests/:id ( :destroy route )

localhost:3000/api/v1/test_questions ( :index route )
localhost:3000/api/v1/test_questions ( :show route )
localhost:3000/api/v1/test_questions/:id ( :update route )
localhost:3000/api/v1/test_questions ( :create route )
localhost:3000/api/v1/test_questions/:id ( :destroy route )





Para testar as solicitações do tipo POST, PATCH e DELETE, utilizar programa POSTMAN com as seguintes informações:

HEADERS:

KEY           | VALUE
Content-Type  | application/json
X-User-Email  | 'seu email de usuário'
X-User-Token  | 'token de usuário'

BODY:

Informações que você deseja adicionar ou atualizar, exemplo:

{ "user": { "name": "Kayo Pereira" } } - Nesse exemplo, estou atualizando o nome do usuário para 'Kayo Pereira'






obs 1: Se tiver acesso a um navegador, vá ao endpoind localhost:3000/ e faça o seu login ou cadastre-se, terá acesso ao token de usuário.

obs 2: Se não tiver acesso a um navegador, para obter o token de usuário, é necessário ir ao endpoint (localhost:3000/api/v1/users), localizar o ID do seu usuário e acessar o próximo endpoint (localhost:3000/api/v1/users/:id) acrescentando o seu ID no lugar do '/:id'. com isso, terá acesso ao token do seu usuário.




BUGS: Estou trabalhando para resolver o bug do send email, o user_mailer.rb não está sendo enviada para o model user.




Link da imagem com o banco de dados estruturado: https://ibb.co/3MNtcDm




email: kayo.richard2000@gmail.com
linkedin: https://www.linkedin.com/in/kayopereira/
whatsapp: 81982386533