## SETUP DB
# 1. Create Database on mysql server
CREATE DATABASE [db_name]; // e.g.: CREATE DATABASE coursedb;
# 2. Edit .env file sesuaikan config database
# 3. Migrate
npx sequelize-cli db:migrate
# 4. Seeding
npx sequelize-cli db:seed:all