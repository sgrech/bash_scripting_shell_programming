#!/bin/bash
EXERCISE_PATH_PREFIX=./practice_exercises/section2_exercise

for EXERCISE in $@
do
  EXERCISE_PATH=${EXERCISE_PATH_PREFIX}_${EXERCISE}.sh
  echo "Creating exercise ${EXERCISE_PATH}"
  echo "#!/bin/bash" > ${EXERCISE_PATH}
  chmod +x ${EXERCISE_PATH}
done
