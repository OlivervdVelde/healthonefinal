<?php


class Time
{
    public $id;
    public $startTime;
    public $endTime;
    public $day;

    public function __construct()
    {
        settype($this->id, 'integer');
    }
}