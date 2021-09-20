'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('Categories', [
      {
        name: 'Mobile Apps',
        slug: 'mobile-apps',
        description: 'Mobile Development Courses',
        created_at: new Date(),
        created_by: 1,
        updated_at: new Date(),
        updated_by: 1,
        published_at: new Date(),
        is_deleted: 0
      },
      {
        name: 'Data Science',
        slug: 'data-science',
        description: 'Data Science Courses',
        created_at: new Date(),
        created_by: 1,
        updated_at: new Date(),
        updated_by: 1,
        published_at: new Date(),
        is_deleted: 0
      },
      {
        name: 'Programming Languages',
        slug: 'programming-languages',
        description: 'Programming Languages Courses',
        created_at: new Date(),
        created_by: 1,
        updated_at: new Date(),
        updated_by: 1,
        published_at: new Date(),
        is_deleted: 0
      },
    ]);
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('Categories', null, {});
  }
};
