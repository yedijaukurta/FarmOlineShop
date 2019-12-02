/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function sweetAlert(status) {
//                alert(status);
    if (status === null) {

    } else if (status.includes("Berhasil")) {
        Swal.fire({
            position: 'center',
            icon: 'success',
            title: status,
            showConfirmButton: false,
            timer: 1500
        });
    } else if (status.includes("Gagal")) {
        Swal.fire({
            position: 'center',
            icon: 'success',
            title: 'Data Gagal Disimpan!',
            showConfirmButton: false,
            timer: 1500
        });
    }
}

