const express = require('express')
const router = express.Router()

// untuk import database
const koneksi = require('../config/database')

// import express validator
const {body, validationResult} = require('express-validator')

// view 
router.get('/', function (req,res){
    // isi data 
    koneksi.query('SELECT * FROM posts ORDER BY id desc', function (err,rows){
        if(err){
            return res.status(500).json({
                status: false,
                message: 'server ga nyambung broo',
                
            })
    
        }else {
            return res.status(200).json({
                status: true,
                message: 'menampilkan data posts',
                Data:rows
            })
        }
    })
})

// insert 
router.post('/store',[
    // untuk validasi
    body('namatokoh').notEmpty(),
    body('peran').notEmpty(),
    body('jeniskelamin').notEmpty(),
    body('rasspesies').notEmpty(),
    body('cirikhas').notEmpty(),
    body('relasidenganmoana').notEmpty(),
    body('keahlian').notEmpty(),
    body('kelemahan').notEmpty(),
    body('tugasdalamcerita').notEmpty(),
    body('motivasi').notEmpty(),

], (req,res)=> {
    const errors = validationResult(req)
    if (!errors.isEmpty()){
        return res.status(442).json({
            errors:errors.array()
        })
    }
    
    // definisi form data 
    let formData = {
        namatokoh: req.body.namatokoh,
        peran: req.body.peran,
        jeniskelamin: req.body.jeniskelamin,
        rasspesies: req.body.rasspesies,
        cirikhas: req.body.cirikhas,
        relasidenganmoana: req.body.relasidenganmoana,
        keahlian: req.body.keahlian,
        kelemahan: req.body.kelemahan,
        tugasdalamcerita: req.body.tugasdalamcerita,
        motivasi: req.body.motivasi,

    }

    // masukkan query / data
    koneksi.query(`INSERT INTO posts SET ?`, formData, function(err,rows){
        //untuk menampilkan error
        if(err){
            console.error('error SQL:',err);
            return res.status(500).json({
                status: false,
                message: 'server error',
            })
        }else{
            return res.status(201).json({
                status: true,
                message: 'Berhasil memasukkan data',
                data:rows[0]
            })
        }
    })

})

 // Detail data 
 router.get('/:id', function(req,res){
    let id = req.params.id

    koneksi.query(`SELECT * FROM posts WHERE ID=${id}`, 
        function(error,rows){
            if(error){
                return res.status(500).json({
                    status: false,
                    message:'servermu error',
                })
            }

            //kalau posts id nya belum ada / tidak ada 
            if(rows.length <=0){
                return res.status(404).json({
                    status:false,
                    message:'data belum ada',
                })
            }else{
                return res.status(200).json({
                    status: true,
                    message:'menampilkan data post berdasarkan id',
                    data: rows[0]
                })
            }

        }
    )
})

//update/edit data
router.patch('/update/:id',[
    body('namatokoh').notEmpty(),
    body('peran').notEmpty(),
    body('jeniskelamin').notEmpty(),
    body('rasspesies').notEmpty(),
    body('cirikhas').notEmpty(),
    body('relasidenganmoana').notEmpty(),
    body('keahlian').notEmpty(),
    body('kelemahan').notEmpty(),
    body('tugasdalamcerita').notEmpty(),
    body('motivasi').notEmpty(),

],(req,res)=>{
    const errors = validationResult(req)
    if(!errors.isEmpty()){
        return res.status(442).json({
            errors:errors.array()

        })
    }
    
    let id = req.params.id //untuk mengambil data id

    let formData={
        namatokoh: req.body.namatokoh,
        peran: req.body.peran,
        jeniskelamin: req.body.jeniskelamin,
        rasspesies: req.body.rasspesies,
        cirikhas: req.body.cirikhas,
        relasidenganmoana: req.body.relasidenganmoana,
        keahlian: req.body.keahlian,
        kelemahan: req.body.kelemahan,
        tugasdalamcerita: req.body.tugasdalamcerita,
        motivasi: req.body.motivasi,
    }

    //update query
    koneksi.query(`UPDATE posts set ? WHERE id=${id}`, formData,
        function(err,rows){
            if(err){
                return res.status(500).json({
                    status: false,
                    message: 'internal server error'

                })
            }else {
                return req.status(200).json({
                    status: true,
                    message: 'update data berhasil'
                })
            }
        }
    )
})

//Delete
router.delete('/delete/(:id)',
    function(req,res){
        let id = req.params.id

        koneksi.query(`DELETE FROM posts WHERE id = ${id}`,
            function(error,rows){
                if(error){
                    return res.status(500).json({
                        status: false,
                        message: 'internal server error',
                    })
                }else{
                    return res.status(200).json({
                        status: true,
                        message: 'data telah dihapus'
                    })
                }
            }
        )
    }
  
)

module.exports = router