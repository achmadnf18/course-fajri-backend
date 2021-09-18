'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class uploadFileMorph extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      this.belongsTo(models.upload_file, { foreignKey: 'upload_file_id', targetKey: 'id' });
      this.belongsTo(models.course, { foreignKey: 'related_id', targetKey: 'id' });
    }
  }
  uploadFileMorph.init({
    upload_file_id: DataTypes.INTEGER,
    related_id: DataTypes.INTEGER,
    related_type: DataTypes.TEXT,
    field: DataTypes.TEXT,
    order: DataTypes.INTEGER,
  }, {
    sequelize,
    modelName: 'upload_file_morph',
    underscored: true,
    /** FREEZE YOUR TABLE NAME */
    freezeTableName: true,
    /** REMOVE DEFAULT created_at & updated_at */
    timestamps: false,
  });
  return uploadFileMorph;
};