'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('courses', {
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
      description: {
        type: Sequelize.TEXT,
        allowNull: false,
      },
      price: {
        type: Sequelize.DECIMAL(19, 0),
        allowNull: false,
      },
      rating: {
        type: Sequelize.DECIMAL(18, 2),
        allowNull: false,
      },
      category_id: {
        allowNull: false,
        type: Sequelize.INTEGER,
        references: { model: 'categories', key: 'id' }
      },
      created_at: {
        type: Sequelize.DATE,
        defaultValue: Sequelize.fn('now')
      },
      created_by: {
        allowNull: false,
        type: Sequelize.INTEGER
      },
      updated_at: {
        type: Sequelize.DATE
      },
      updated_by: {
        type: Sequelize.INTEGER
      },
      is_deleted: {
        defaultValue: false,
        type: Sequelize.BOOLEAN
      },
      deleted_at: {
        type: Sequelize.DATE
      },
      deleted_by: {
        type: Sequelize.INTEGER
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('courses');
  }
};