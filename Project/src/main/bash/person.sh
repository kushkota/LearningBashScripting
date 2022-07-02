#!/bin/bash

function Person() {
    
    export firstName=$1
    export lastName=$2
    export age=$3


    function introduceYourself() {

    echo "Hi, my name is $firstName $lastName and I'm $age"
}
    
    function helper() {
        introduceYourself

    }
    
    helper
}

