'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class course extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      this.belongsTo(models.category);
    }
  }
  course.init({
    name: DataTypes.STRING,
    description: DataTypes.TEXT,
    price: DataTypes.DECIMAL(19, 0),
    category_id: DataTypes.INTEGER,
    rating: DataTypes.DECIMAL(18, 2),
    created_at: DataTypes.DATE,
    created_by: DataTypes.INTEGER,
    updated_at: DataTypes.DATE,
    updated_by: DataTypes.INTEGER,
    is_deleted: DataTypes.BOOLEAN,
    deleted_at: DataTypes.DATE,
    deleted_by: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'course',
    underscored: true,
  });
  return course;
};