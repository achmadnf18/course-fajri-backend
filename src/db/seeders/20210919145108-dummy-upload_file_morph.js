'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('Upload_file_morph', [
      {
        upload_file_id: 4,
        related_id: 1,
        related_type: 'courses',
        field: 'image',
        order: 1
      },
      {
        upload_file_id: 5,
        related_id: 2,
        related_type: 'courses',
        field: 'image',
        order: 1
      },
      {
        upload_file_id: 6,
        related_id: 3,
        related_type: 'courses',
        field: 'image',
        order: 1
      },
      {
        upload_file_id: 7,
        related_id: 4,
        related_type: 'courses',
        field: 'image',
        order: 1
      },
      {
        upload_file_id: 8,
        related_id: 5,
        related_type: 'courses',
        field: 'image',
        order: 1
      },
    ]);
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('Upload_file_morph', null, {});
  }
};
