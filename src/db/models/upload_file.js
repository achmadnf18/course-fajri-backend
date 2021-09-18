'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class uploadFile extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      this.hasMany(models.upload_file_morph, { targetKey: 'upload_file_id' });
    }
  }
  uploadFile.init({
    name: DataTypes.STRING,
    alternativeText: DataTypes.STRING,
    caption: DataTypes.STRING,
    width: DataTypes.INTEGER,
    height: DataTypes.INTEGER,
    formats: DataTypes.TEXT,
    hash: DataTypes.STRING,
    ext: DataTypes.STRING,
    mime: DataTypes.STRING,
    size: DataTypes.STRING,
    url: DataTypes.STRING,
    previewUrl: DataTypes.STRING,
    provider: DataTypes.STRING,
    provider_metadata: DataTypes.STRING,
    created_by: DataTypes.INTEGER,
    updated_by: DataTypes.INTEGER,
    created_at: DataTypes.DATE,
    updated_at: DataTypes.DATE,
  }, {
    sequelize,
    modelName: 'upload_file',
    /** FREEZE YOUR TABLE NAME */
    freezeTableName: true,
    /** REMOVE DEFAULT created_at & updated_at */
    timestamps: false,
  });
  return uploadFile;
};