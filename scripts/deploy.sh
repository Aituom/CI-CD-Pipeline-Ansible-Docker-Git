#!/bin/bash
set -e

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$PROJECT_ROOT"

ansible-playbook -i ansible/inventory/hosts.ini ansible/playbooks/deploy.yml
