# Desafio - Balanceamento com HAProxy e Docker

Este projeto faz parte de um treinamento prático para analistas N1 de aplicações. O objetivo é entender o funcionamento do balanceamento de carga com HAProxy, utilizando aplicações Docker simples e sem cache.

## 🧩 Componentes

- **app01**: Container com Nginx exibindo "Docker 01"
- **app02**: Container com Nginx exibindo "Docker 02"
- **haproxy**: Balanceador de carga distribuindo as requisições entre os dois apps

## ⚙️ Funcionalidades

- Balanceamento configurado em modo `roundrobin`
- Cache desabilitado nos servidores Nginx
- Conexões HTTP fechadas após cada requisição (`option http-server-close`)
- Fácil simulação de sessões simultâneas para testes

```
### Script de simulação (opcional)

Você pode usar o script `simular_sessoes_haproxy.sh` para simular múltiplas sessões simultâneas e ver o comportamento do balanceador em ação.

## 📁 Estrutura do projeto

```
.
├── app01/
│   ├── Dockerfile
│   ├── index.html
│   └── nginx.conf
├── app02/
│   ├── Dockerfile
│   ├── index.html
│   └── nginx.conf
├── haproxy/
│   └── haproxy.cfg
├── docker-compose.yml
```

---

Desenvolvido para fins educacionais no contexto de um treinamento técnico para analistas de aplicações.
