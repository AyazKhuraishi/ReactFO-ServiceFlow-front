ARG TARGETARCH=amd64
FROM node:16-alpine as builder
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY . .
RUN npm run build

ARG TARGETARCH=amd64
FROM ${TARGETARCH}/nginx:1.22.0-alpine
ENV NODE_ENV production
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
