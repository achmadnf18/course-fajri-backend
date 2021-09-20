'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('upload_file_morph', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      upload_file_id: {
        type: Sequelize.INTEGER,
      },
      related_id: {
        type: Sequelize.INTEGER,
      },
      related_type: {
        type: Sequelize.TEXT,
      },
      field: {
        type: Sequelize.TEXT,
      },
      order: {
        type: Sequelize.INTEGER,
      },
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('upload_file_morph');
  }
};