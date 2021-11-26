const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn }= require('../lib/auth');

router.get('/calendar',isLoggedIn, async (req, res) =>{
    const calen= await pool.query('SELECT Nom FROM year');
    res.render('calen/calendars', {calen});
});

router.get('/calendar/:Nom/months',isLoggedIn, async(req,res)=>{
    const {Nom}=req.params;
    const mese={
        Nom
    }
    const mess1='SELECT Nombre,Nom FROM year INNER JOIN  month ON (year.ID_Year=month.Year_ID) WHERE Nom='+mese.Nom;
    const mes= await pool.query(mess1);
    res.render('calen/months', {mes,Nom});
});

router.get('/calendar/:Nom/months/:Nombre',isLoggedIn,async(req,res) =>{
    const {Nom,Nombre}=req.params;
    const dia={
        Nom,
        Nombre
    }
    const mess1='SELECT  Name,Nombre,Nom,number FROM year INNER JOIN  month ON (year.ID_Year=month.Year_ID) INNER JOIN day ON (month.ID_Mes=day.Month_ID) WHERE Nom='+dia.Nom+" AND Nombre='"+dia.Nombre+"'";
    const day= await pool.query(mess1);
    res.render('calen/days',{day,Nombre});
})

router.get("/calendar/:Nom/months/:Nombre/:number/acts", isLoggedIn,async (req,res) =>{ 
    const dataI=req.params;
    const puente="/calendar/"+dataI.Nom+"/months/"+dataI.Nombre+"/"+dataI.number+"/acts/add";
    const search="SELECT ID_Act,H_ini,H_fin,Descrip,Title FROM year INNER JOIN  month ON (year.ID_Year=month.Year_ID) INNER JOIN day ON (month.ID_Mes=day.Month_ID) INNER JOIN actividad ON (day.ID_Day=actividad.Day_ID) WHERE Nom="+req.params.Nom+ " AND Nombre='" +req.params.Nombre+"' AND Number=" +req.params.number+" AND User_ID="+ req.user.ID_User+" ORDER BY H_Fin";
    const acts= await pool.query(search);
    res.render('links/list',{acts,puente,dataI});
});

router.get("/calendar/:Nom/months/:Nombre/:number/acts/add",isLoggedIn, async (req, res) => {
    const mess1="SELECT Nombre,numMes,nom,number,ID_Day FROM year INNER JOIN  month ON (year.ID_Year=month.Year_ID) INNER JOIN day ON (month.ID_Mes=day.Month_ID) WHERE Nom="+req.params.Nom+" AND Nombre='"+req.params.Nombre+"' AND Number="+ req.params.number;
    const datous= await pool.query(mess1);
    res.render('links/add', datous[0]);
});

router.post("/calendar/:Nom/months/:Nombre/:number/acts/add",isLoggedIn, async(req, res) =>{
    const {Title,H_ini,H_fin,Descrip,nomM,mes,cal,num,fk} = req.body;
    const hi= cal+"-"+mes+"-"+num+" "+H_ini;
    const hf= cal+"-"+mes+"-"+num+" "+H_fin;
    const newWork ={
        Title,
        hi,
        hf,
        Descrip,
        User_ID: req.user.ID_User,
        fk
    };
    var ins= "INSERT INTO `actividad` (Title,H_ini,H_fin,Descrip,User_ID,Day_ID) VALUES ('" + newWork.Title + "','" + newWork.hi + "','" + newWork.hf + "','" + newWork.Descrip + "','"+newWork.User_ID+ "','"+newWork.fk+ "');" ;
    await pool.query(ins);
    req.flash('success','Actividad Guardada Correctamente!');
    res.redirect('/calendar/'+cal+'/months/'+nomM+'/'+num+'/acts');
});

router.get("/calendar/:Nom/months/:Nombre/:number/acts/delete/:ID_Act",isLoggedIn, async (req,res) =>{
    const {ID_Act} = req.params;
    await pool.query('DELETE FROM nota WHERE Act_ID =?', [ID_Act]);
    await pool.query('DELETE FROM actividad WHERE ID_Act =?', [ID_Act]);
    req.flash('success', 'Actividad Borrada Correctamente!');
    res.redirect('/calendar/'+req.params.Nom+'/months/'+req.params.Nombre+'/'+req.params.number+'/acts');
});

router.get("/calendar/:Nom/months/:Nombre/:number/acts/edit/:ID_Act", isLoggedIn,async(req,res) =>{
    const {ID_Act} = req.params;
    const actsL=await pool.query('SELECT Descrip,Title,Nombre,numMes,nom,number,ID_Act FROM year INNER JOIN  month ON (year.ID_Year=month.Year_ID) INNER JOIN day ON (month.ID_Mes=day.Month_ID) INNER JOIN actividad ON (day.ID_Day=actividad.Day_ID) WHERE ID_Act=?', [ID_Act]);
    res.render('links/edit',{actsL:actsL[0]});
});

router.post("/calendar/:Nom/months/:Nombre/:number/acts/edit/:ID_Act", isLoggedIn, async(req,res) =>{
    const {ID_Act} = req.params;
    const {Title,H_in,H_fi,Descrip,nomM,mes,cal,num} = req.body;
    const hi= cal+"-"+mes+"-"+num+" "+H_in;
    const hf= cal+"-"+mes+"-"+num+" "+H_fi;
    const newWork ={
        Title,
        H_ini:hi,
        H_fin:hf,
        Descrip,
    }
    await pool.query('UPDATE actividad set ? WHERE ID_Act=?', [newWork,ID_Act]);
    req.flash('success', 'Actividad Editada Correctamente!')
    res.redirect('/calendar/'+cal+'/months/'+nomM+'/'+num+'/acts');
});

router.get("/calendar/:Nom/months/:Nombre/:number/acts/notes/:ID_Act", isLoggedIn,async(req,res) =>{
    const {ID_Act,number,Nombre,Nom} = req.params;
    const regre ={
        Nom,
        number,
        Nombre,
        ID_Act,
    }
    const consul= await pool.query("SELECT ID_Nota,Apunte,Title,Descrip FROM nota INNER JOIN  actividad ON (nota.Act_ID=actividad.ID_Act)WHERE ID_Act=?", ID_Act);
    if(consul.length > 0){
        const lleno=1;
        res.render('links/note',{consul:consul[0],regre,flag:lleno});
    }else{
        const vacio=0;
        const consul2=await pool.query("SELECT Title,Descrip FROM actividad WHERE ID_Act=?", ID_Act);
        res.render('links/note',{consul:consul2[0],regre,flag:vacio});
    }
    
});

router.post("/calendar/:Nom/months/:Nombre/:number/acts/notes/:ID_Act", isLoggedIn,async(req,res) =>{
    const {ID_Act}=req.params;
    const {anota,nomM,cal,num,ind} = req.body;
    if(ind==0){
        var ins= "INSERT INTO nota (Apunte,Act_ID) VALUES ('" + anota + "','"+ ID_Act+ "');" ;
        await pool.query(ins);
    }else{
        const newApun ={
            Apunte:anota,
        }
        await pool.query('UPDATE nota set ? WHERE ID_Nota=?', [newApun,req.body.ID_Nota]);
    }
    req.flash('success','Apuntes Guardados Correctamente!');
    res.redirect('/calendar/'+cal+'/months/'+nomM+'/'+num+'/acts');
});

/*  PLAN FUTURO DE GUARDAR IMAGENES PERO NO ES EFICIENTE TENERLAS EN LA BD
router.get("/calendar/:Nom/months/:Nombre/:number/acts/notes/:ID_Act/images", isLoggedIn,async(req,res) =>{
    console.log(req.body);
    console.log(req.params);
    res.render('links/ima');
});*/

module.exports = router;