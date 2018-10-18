git add .
git status
echo -n "Descripción de los cambios realizados: " [Minor Update]
read CHANGE_MSG
git commit -m "${CHANGE_MSG}"
git push origin master

exit
