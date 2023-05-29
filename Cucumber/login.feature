            #language: pt

            Funcionalidade: Login no sistema
            Como usuário da plataforma EBAC
            Quero realizar login no sistema
            Para acessar a plataforma de aulas

            Cenário: Autenticação válida
            Dado que eu esteja matriculado no curso EBAC
            Quando eu inserir o email "papaco@gmail.com"
            E a senha "@123"
            Então o acesso ao sistema será liberado

            Cenário: Autenticação inválida
            Dado que eu esteja matriculado no curso EBAC
            Quando eu inserir o email "pepaco@gmail.com"
            E a senha "@321"
            Então o acesso ao sistema será bloqueado

            Cenário: Usuário inexistente
            Dado que eu não esteja matriculado no curso EBAC
            Quando eu inserir o email "parangole@gmail.com"
            E a senha "@@@@"
            Então deve exibir uma caixa de alerta contendo: "usuário inexistente"

            Esquema do Cenário: Autenticar multiplos usuários
            Dado que eu esteja matriculado no curso EBAC
            Quando eu inserir o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario               | senha | mensagem       |
            | junior.ebac@gmail.com | zzz1@ | "Olá, junior!" |
            | sergio.ebac@gmail.com | 1234@ | "Olá, Sergio!" |
            | maria.ebac@gmail.com  | 6665@ | "Olá, Maria!"  |