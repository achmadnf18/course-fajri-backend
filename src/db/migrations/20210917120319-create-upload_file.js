'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('upload_file', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      name: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      alternativeText: {
        type: Sequelize.TEXT,
      },
      caption: {
        type: Sequelize.TEXT,
      },
      width: {
        type: Sequelize.INTEGER,
      },
      height: {
        type: Sequelize.INTEGER,
      },
      formats: {
        type: Sequelize.TEXT,
      },
      hash: {
        type: Sequelize.STRING,
      },
      ext: {
        type: Sequelize.STRING,
      },
      mime: {
        type: Sequelize.STRING,
      },
      size: {
        type: Sequelize.DECIMAL(10, 2),
      },
      url: {
        type: Sequelize.STRING,
      },
      previewUrl: {
        type: Sequelize.STRING,
      },
      provider: {
        type: Sequelize.STRING,
      },
      provider_metadata: {
        type: Sequelize.TEXT,
      },
      created_by: {
        type: Sequelize.INTEGER,
      },
      created_at: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.fn('now')
      },
      updated_by: {
        type: Sequelize.INTEGER,
      },
      updated_at: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.fn('now')
      },
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('upload_file');
  }
};