-- ===============================================================
-- [Thực hành] Tạo CSDL trên MySQL Workbench
-- ===============================================================

-- Cách 1: Thao tác bằng giao diện (GUI) trên MySQL Workbench:
-- 1. Bật MySQL Workbench và đăng nhập bằng tài khoản (root).
-- 2. Click vào biểu tượng tạo mới Schema (hoặc chuột phải vào tab SCHEMAS -> Create Schema).
-- 3. Nhập tên CSDL: my_database1.
-- 4. Nhấn Apply -> Tiếp tục nhấn Apply -> Nhấn Finish.

-- ---------------------------------------------------------------

-- Cách 2: Tạo CSDL sử dụng câu lệnh SQL trên MySQL Workbench:
-- 1. Nhấn biểu tượng New Query Tab (hoặc phím tắt Ctrl + T).
-- 2. Nhập câu lệnh bên dưới và nhấn biểu tượng Tia sét (Execute - Ctrl + Enter):

CREATE DATABASE `my_database1`;

-- Câu lệnh tối ưu trong thực tế (tránh lỗi nếu đã tồn tại và hỗ trợ tiếng Việt utf8mb4):
CREATE DATABASE IF NOT EXISTS `my_database1`
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- 3. Kiểm tra danh sách CSDL:
SHOW DATABASES;

-- 4. Chọn CSDL vừa tạo để sử dụng:
USE `my_database1`;
