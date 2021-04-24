Para inicializar a aplicação, clone o projeto e certifique-se de ter instalado as seguintes configurações:

Ruby '2.6.6'
Rails '>= 6.0.3.6'

Após a clonar o projeto, rode o servidor local no terminal com o comando:

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






Para testar as solicitações do tipo POST, PATCH e DELETE, utilizar programa POSTMAN com as seguintes informações:

HEADERS:

KEY           | VALUE
Content-Type  | application/json
X-User-Email  | 'seu email de usuário'
X-User-Token  | 'token de usuário'

BODY:

Informações que você deseja adicionar ou atualizar, exemplo:

{ "user": { "name": "Kayo Pereira" } } - Nesse exemplo, estou atualizando o nome do usuário para 'Kayo Pereira'






obs 1: Se tiver acesso a um navegador, vá ao endpoind localhost:3000/ e faça o seu login ou cadastre-se, terá acesso ao token.

obs 2: Se não tiver acesso a um navegador, para obter o token de usuário, é necessário ir ao endpoint (localhost:3000/api/v1/users), localizar o ID do seu usuário e acessar o próximo endpoint (localhost:3000/api/v1/users/:id) acrescentando o seu ID no lugar do '/:id'. com isso, terá acesso ao token do seu usuário.



Link da imagem com o banco de dados estruturado: https://ibb.co/3MNtcDm


Projeto ainda incompleto para ser publicado, mas com as principais atividades funcionando perfeitamente. Ainda continuarei trabalhando nesse projeto até que fique 100% de acordo com o que pedido!

Para mais dúvidas e até mesmo uma possível apresentação do trabalho até o momento:

email: kayo.richard2000@gmail.com
linkedin: https://www.linkedin.com/in/kayopereira/
whatsapp: 81982386533