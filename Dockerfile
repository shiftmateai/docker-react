FROM node:16-alpine as builder
WORKDIR '/usr/frontend/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


FROM nginx as runner
EXPOSE 80
COPY --from=builder /usr/frontend/app/build /usr/share/nginx/html
