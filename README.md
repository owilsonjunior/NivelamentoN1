# Desafio - Balanceamento com HAProxy e Docker

Este projeto faz parte de um treinamento prático para analistas N1 de Aplicações. O objetivo é entender o funcionamento do balanceamento de carga com HAProxy, utilizando aplicações Docker simples.

## 🧩 Componentes

- **app01**: Container com Nginx exibindo "Docker 01"
- **app02**: Container com Nginx exibindo "Docker 02"
- **haproxy**: Balanceador de carga distribuindo as requisições entre os dois apps

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
