FROM node:22-alpine


WORKDIR /app


# Copie des dépendances d'abord (cache)
COPY src-fixed/package*.json ./
RUN npm ci --only=production && npm cache clean --force


COPY src-fixed/ ./


# Utilisateur non-root
RUN addgroup -g 1001 -S nodejs && \
adduser -S nodejs -u 1001 && \
chown -R nodejs:nodejs /app


USER nodejs


EXPOSE 3000


# Healthcheck
HEALTHCHECK --interval=30s --timeout=3s \
CMD node -e "require('http').get('http://localhost:3000/health', (r) => process.exit(r.statusCode === 200 ? 0 : 1))"


CMD ["node", "server.js"]