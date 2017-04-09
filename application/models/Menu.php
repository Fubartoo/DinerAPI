<?php

class Menu extends CI_Model {

    private $keyField = 'id';
    private $_tableName = 'menu';
    // constructor
    function __construct()
    {
        parent::__construct();
        //*** Explicitly load the REST libraries.
        $this->load->library(['curl', 'format', 'rest']);
    }

    // Return all records as an array of objects
    function all()
    {
        $this->db->order_by($this->keyField, 'asc');
        $query = $this->db->get($this->_tableName);
        return $query->result();
    }


    // Retrieve an existing DB record as an object
    function get($key, $key2 = null)
    {
        $this->db->where($this->keyField, $key);
        $query = $this->db->get($this->_tableName);
        if ($query->num_rows() < 1)
            return null;
        return $query->row();
    }

    // Create a new data object.
    // Only use this method if intending to create an empty record and then
    // populate it.
    function create()
    {
        $names = $this->db->list_fields($this->tableName);
        $object = new StdClass;
        foreach ($names as $name)
            $object->$name = "";
        return $object;
    }

    // Delete a record from the DB
    function delete($key, $key2 = null)
    {
        $this->db->where($this->keyField, $key);
        $object = $this->db->delete($this->tableName);
    }

    // Determine if a key exists
    function exists($key, $key2 = null)
    {
        $this->db->where($this->keyField, $key);
        $query = $this->db->get($this->tableName);
        if ($query->num_rows() < 1)
            return false;
        return true;
    }

    // Update a record in the DB
    function update($record)
    {
        // convert object to associative array, if needed
        if (is_object($record))
        {
            $data = get_object_vars($record);
        } else
        {
            $data = $record;
        }
        // update the DB table appropriately
        $key = $data[$this->keyField];
        $this->db->where($this->keyField, $key);
        $object = $this->db->update($this->tableName, $data);
    }

    // Add a record to the DB
    function add($record)
    {
        // convert object to associative array, if needed
        if (is_object($record))
        {
            $data = get_object_vars($record);
        } else
        {
            $data = $record;
        }
        // update the DB table appropriately
        $key = $data[$this->keyField];
        $object = $this->db->insert($this->tableName, $data);
    }

}
