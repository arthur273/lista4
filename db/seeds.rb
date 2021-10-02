# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    teachers = Teacher.create([{name:"Teofilo De Campos",email:"teofilo@unb.br",dataNascimento:'1977-8-12'},
    {name:"Ricardo Jacobi",email:"jacobi1337",dataNascimento:'1975-1-1'}])

    languages = Language.create([{name:"Python",teacher_id:1},{name:"C",teacher_id:2}])

    students = Student.create([{name:"Pedro Silva ",matricula:"111111111",email:"PSgameplays",dataNascimento:"2002-1-21",teacher_id: 1},
        {name:"Lucas Moreira",matricula:"222222222",email:"lucasserio@gmail.com",dataNascimento:"2001-12-21",teacher_id: 1},
        {name:"Alexandre Lupe",matricula:"333333333",email:"alex.estudos@hotmail.com",dataNascimento:"1998-7-13",teacher_id: 2},
        {name:"Ana Paes",matricula:"444444233",email:"AnaPaes@aluno.unb.br",dataNascimento:"1999-9-9",teacher_id: 2},
        {name:"Cesarina Cielo",matricula:"123443211",email:"nadomuito@gmail.com",dataNascimento:"2000-12-12",teacher_id: 2}])
