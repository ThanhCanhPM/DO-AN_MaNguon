FROM nginx:alpine

# Xóa file mặc định của nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy toàn bộ source code vào thư mục web của nginx
COPY . /usr/share/nginx/html

# Mở port 80
EXPOSE 80

# Chạy nginx
CMD ["nginx", "-g", "daemon off;"]

