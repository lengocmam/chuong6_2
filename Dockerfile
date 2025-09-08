# Sử dụng image Tomcat 9 chính thức
FROM tomcat:9.0

# Xóa các ứng dụng mặc định (tùy chọn, giúp container nhẹ hơn)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào thư mục webapps của Tomcat
# Giả sử bạn đã có file tenfile.war trong thư mục hiện tại
COPY ch06_ex2_survey.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Tomcat sẽ tự động khởi động khi container chạy
