'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('Users', [
      {
        username: 'achmadnf17',
        email: 'achmad17nov@gmail.com',
        password: '$2b$10$zn2AvRWKflZ9Ifk8om6xEOVHoaodc3uP2GkNCusVBLQRPOV1zzDQC',
        created_at: new Date(),
        created_by: 1,
        updated_at: new Date(),
      },
      {
        username: 'dondon17',
        email: 'doni17jul@gmail.com',
        password: '$2b$10$zn2AvRWKflZ9Ifk8om6xEOVHoaodc3uP2GkNCusVBLQRPOV1zzDQC',
        created_at: new Date(),
        created_by: 1,
        updated_at: new Date(),
      },
    ]);
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('Users', null, {});
  },
};
