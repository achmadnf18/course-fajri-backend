## Installation

```
npm i
```
or
```
yarn
````

## Setup local database

Create local database on mysql
```
CREATE DATABASE coursedb;
```

Please install project <https://github.com/achmadnf18/course-fajri-admin/> first
```
yarn --no-optional
```
and
```
yarn develop
```

Back to this project, do Migration in this project
```
npx sequelize-cli db:migrate
```

Do Seeding in this project
```
npx sequelize-cli db:seed:all
```

## Run project
Split 2 terminal, for tyscript compiler
```
yarn ts
```
and nodemon
```
yarn dev
```