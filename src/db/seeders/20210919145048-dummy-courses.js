'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('Courses', [
      {
        name: 'iOS & Swift - The Complete iOS App Development Bootcamp',
        description: 'From Beginner to iOS App Developer with Just One Course! Fully Updated with a Comprehensive Module Dedicated to SwiftUI!',
        price: 799000.00,
        rating: 4.30,
        category_id: 1,
        created_at: '2021-09-17 21:24:58',
        updated_by: 1,
        updated_at: '2021-09-18 16:35:43',
        updated_by: 1,
        is_deleted: 0,
        published_at: '2021-09-17 21:24:58',
        instructor_id: 2
      },
      {
        name: 'The Complete Android N Developer Course',
        description: 'Learn Android App Development with Android 7 Nougat by building real apps including Uber, Whatsapp and Instagram!',
        price: 599000.00,
        rating: 4.50,
        category_id: 1,
        created_at: '2021-09-17 21:24:58',
        created_by: 1,
        updated_at: '2021-09-18 17:28:26',
        updated_by: 1,
        is_deleted: 0,
        published_at: '2021-09-17 21:24:58',
        instructor_id: 1
      },
      {
        name: 'The Complete React Native + Hooks Course',
        description: 'Understand React Native with Hooks, Context, and React Navigation.',
        price: 499000.00,
        rating: 4.00,
        category_id: 1,
        created_at: '2021-09-17 21:24:58',
        created_by: 1,
        updated_at: '2021-09-18 17:29:27',
        updated_by: 1,
        is_deleted: 0,
        published_at: '2021-09-17 21:24:58',
        instructor_id: 2
      },
      {
        name: 'Machine Learning A-Z™: Hands-On Python & R In Data Science',
        description: 'Learn to create Machine Learning Algorithms in Python and R from two Data Science experts. Code templates included.',
        price: 799000.00,
        rating: 4.50,
        category_id: 2,
        created_at: '2021-09-17 23:24:32',
        created_by: 1,
        updated_at: '2021-09-18 17:30:13',
        updated_by: 1,
        is_deleted: 0,
        published_at: '2021-09-17 23:24:32',
        instructor_id: 1
      },
      {
        name: 'Python for Data Science and Machine Learning Bootcamp',
        description: 'Learn how to use NumPy, Pandas, Seaborn , Matplotlib , Plotly , Scikit-Learn , Machine Learning, Tensorflow , and more!',
        price: 499000.00,
        rating: 4.00,
        category_id: 2,
        created_at: '2021-09-17 23:24:36',
        created_by: 1,
        updated_at: '2021-09-18 17:31:26',
        updated_by: 1,
        is_deleted: 0,
        published_at: '2021-09-17 23:24:36',
        instructor_id: 2
      },
    ]);
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('Courses', null, {});
  }
};
