(function () {
    'use strict'
    document.querySelector('#navbarSideCollapse').addEventListener('click', function () {
        document.querySelector('.offcanvas-collapse').classList.toggle('open')
    })
})()

var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
    myInput.focus()
})

function validateInput() {
    if (document.getElementById("uploadBox").value == "") {
        Swal.fire(
            'Error!',
            'Please upload an Image!',
            'error'
        )
        return false;
    }
    if (document.getElementById("flexSwitchCheckDefault").checked == false) {
        Swal.fire(
            'Error!',
            'Accept terms & conditions',
            'error'
        )
        return false;
    }
    return true;
}