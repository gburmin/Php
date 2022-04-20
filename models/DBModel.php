<?php

namespace app\models;

use app\engine\Db;

abstract class DBModel extends Model
{
    protected abstract static function getTableName();


    public function insert()
    {
        $params = [];
        $columns = [];

        foreach ($this->props as $key => $value) {
            $params[":" . $key] = $this->$key;
            $columns[] = $key;
        }

        $columns = implode(', ', $columns);
        $values = implode(', ', array_keys($params));


        $tableName = static::getTableName();

        $sql = "INSERT INTO `{$tableName}`($columns) VALUES ($values)";


        Db::getInstance()->execute($sql, $params);
        $this->id = Db::getInstance()->lastInsertId();
        return $this;
    }

    public function update()
    {
        $params = [];
        $columns = [];
        $columnsAndStatements = '';

        foreach ($this->props as $key => $value) {

            if ($value) {
                $params[":" . $key] = $this->$key;
                $columns[] = $key;
            }
        }

        foreach (array_combine($columns, array_keys($params)) as $key => $value) {
            $columnsAndStatements .= "$key = $value,";
        }
        $columnsAndStatements = mb_substr($columnsAndStatements, 0, -1);
        $params['id'] = $this->id;

        $tableName = static::getTableName();
        $sql = "UPDATE `{$tableName}` SET $columnsAndStatements WHERE id=:id";

        Db::getInstance()->execute($sql, $params);
        return $this;
        //TODO сделать update в идеале оптимальный, формировать set только по изменившимся полям
    }

    public function save()
    {
        //TODO реализовать умный save
        if (is_null($this->id)) {
            $this->insert();
        } else {
            $this->update();
        }
    }

    public function delete()
    {
        $tableName = static::getTableName();
        $sql = "DELETE FROM $tableName WHERE id = :id";
        return Db::getInstance()->execute($sql, ['id' => $this->id]);
    }



    public static function getOne($id)
    {
        $tableName = static::getTableName();
        $sql = "SELECT * FROM {$tableName} WHERE id = :id";
        //  return Db::getInstance()->queryOne($sql, ['id' => $id]);
        return Db::getInstance()->queryOneObject($sql, ['id' => $id], static::class);
    }

    public static function getAll()
    {
        $tableName = static::getTableName();
        $sql = "SELECT * FROM {$tableName}";
        return Db::getInstance()->queryAll($sql);
    }


    public static function getLimit($limit)
    {
        $tableName = static::getTableName();
        $sql = "SELECT * FROM {$tableName} LIMIT 0, ?";
        return Db::getInstance()->queryLimit($sql, $limit);
    }
}
