### Dự án CI/CD web java maven

 • Hệ thống sử dụng 2 máy chủ Ubuntu Linux đảm nhiệm vai trò là Gitlab Server và Web Server.

 • Cài đặt Gitlab trên máy chủ Gitlab Server, giúp lưu trữ Source Code dự án, quản lý User, phân quyền dự án. 

 • Cài đặt Gitlab Runner trên máy chủ Web Server, giúp tự động clone code từ Gitlab Server, hỗ trợ các quy trình CI/CD.

 • Thực hiện cấu hình Nginx Reverse Proxy trên máy chủ Web Server để chuyển tiếp yêu cầu http đến container Java.

 • Thực hiện đóng gói dự án với Docker trên máy chủ Web Server, sử dụng Alpine Linux để tối ưu tài nguyên xây dựng, DockerHup để lưu trữ các phiên bản container.
