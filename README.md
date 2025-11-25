# DevSecOps Lab (Node.js)

Pipeline CI/CD DevSecOps avec GitHub Actions pour une application Node.js volontairement vulnérable.  
Ce projet montre comment détecter et corriger des failles de sécurité avant le déploiement.

![Security](https://github.com/soso1429/devsecops-lab/workflows/DevSecOps%20Pipeline/badge.svg)

---

##  Prérequis
- Docker installé
- Git
- GitHub Actions activé sur le repo

---

## Installation et lancement local
```bash
npm install --prefix src
node src/server.js
# Application disponible sur http://localhost:3000
