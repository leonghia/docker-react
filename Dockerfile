# FROM node:16-alpine AS builder
# WORKDIR /usr/app
# COPY package.json .
# RUN npm install
# COPY . .
# RUN npm run build

# FROM nginx:stable-alpine
# EXPOSE 80
# COPY --from=builder /usr/app/build /usr/share/nginx/html

FROM nginx:stable-alpine
COPY build /usr/share/nginx/html
EXPOSE 80