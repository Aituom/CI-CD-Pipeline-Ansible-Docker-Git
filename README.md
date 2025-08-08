# CI-CD-Pipeline-Ansible-Docker-Git
## О проекте

Этот проект демонстрирует полный цикл автоматизации деплоя приложения с использованием CI/CD Pipeline, построенного на связке Git → Ansible → Docker в локальной среде.
Это практический DevOps-проект, отражающий реальные процессы доставки кода от разработчика до production-сервера, который легко можно масштабировать и адаптировать под реальный прод

## Стек технологий

Git, Ansible, Docker, Linux, Jenkins, nginx, Bash

## Как работает пайплайн

Разработчик пушит код в Git-репозиторий.

  CI-триггер запускает Ansible-playbook.

  Ansible:
    Настраивает сервер (установка зависимостей, Docker, пользователей и прав).
    Деплоит Docker-контейнер с приложением.

  Приходит уведомление на почту при успешном деплое.

Приложение обновляется без ручного вмешательства.

## Локальный запуск

1. Клонировать репозиторий:

git clone https://github.com/Aituom/CI-CD-Pipeline-Ansible-Docker-Git.git
CI-CD-Pipeline-Ansible-Docker-Git

2. Обновить ansible/hosts.ini

3. Запустить деплой вручную:

    ansible-playbook -i ansible/inventory/hosts.ini ansible/playbooks/deploy.yml
