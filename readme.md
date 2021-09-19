## Installation

```
npm i
```
or
```
yarn
````

## Setup local database
Please install project *course-fajri-admin* first
```
yarn
```

Do Migration in this project
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