'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('Users', [
      {
        username: 'achmadnf17',
        email: 'achmad17nov@gmail.com',
        password: '$2b$10$zn2AvRWKflZ9Ifk8om6xEOVHoaodc3uP2GkNCusVBLQRPOV1zzDQC',
        full_name: 'Achmad Nur Fajri',
        created_at: new Date(),
        created_by: 1,
        updated_at: new Date(),
        updated_by: 1,
        published_at: new Date(),
        is_deleted: 0
      },
      {
        username: 'angela.yu',
        email: 'angela.yu@gmail.com',
        password: '$2b$10$zn2AvRWKflZ9Ifk8om6xEOVHoaodc3uP2GkNCusVBLQRPOV1zzDQC',
        full_name: 'Angela Yu',
        created_at: new Date(),
        created_by: 1,
        updated_at: new Date(),
        updated_by: 1,
        published_at: new Date(),
        is_deleted: 0
      },
      {
        username: 'dondon17',
        email: 'dony@gmail.com',
        password: '$2b$10$zn2AvRWKflZ9Ifk8om6xEOVHoaodc3uP2GkNCusVBLQRPOV1zzDQC',
        full_name: 'Dony',
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
    return queryInterface.bulkDelete('Users', null, {});
  },
};
