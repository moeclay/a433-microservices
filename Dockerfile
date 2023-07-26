# ambil image dari docker registry
FROM node:14
# menentukan directory untuk aplikasi
WORKDIR /app
# copy semua berkas
COPY . .
# setting environment 
ENV NODE_ENV=production DB_HOST=172.17.0.1
# install dependency & proses build
RUN npm install --production --unsafe-perm && npm run build
# menjalankan aplikasi
CMD ["npm", "start"]
# membuka port publik container
EXPOSE 8080
