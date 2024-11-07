@echo off

:: Creacion de archivo
ECHO CREATING FILE mytext.txt
ECHO Hola mundo > mytext.txt

:: Mostrar contenido de mytext
TYPE mytext.txt

:: Crear directorio "backup"
MD backup

:: Mover archivo mytext a backup
MOVE mytext.txt backup

:: Listar contenido del directorio backup
DIR backup

:: Eliminar archivo mytext
del %~dp0\backup\mytext.txt

:: Eliminar directorio backup
RD backup
