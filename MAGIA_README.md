## Passos para realizar o migrate do banco

1. **Entrar na máquina web** onde estão as aplicações do `console`.
2. **Acessar o projeto** do `console.com`.
3. Navegar até a pasta `mg-scripts` e executar:
   ```bash
   ./update_env.sh
Voltar para a raiz do projeto.

Executar os seguintes comandos do Artisan:

```
php artisan config:clear
php artisan cache:clear
php artisan config:cache
php artisan db:wipe
php artisan migrate:fresh --seed
```

