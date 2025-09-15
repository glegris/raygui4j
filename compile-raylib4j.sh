#!/usr/bin/env bash
set -euo pipefail

PKG="raygui4j"

MIR_HOME=$PWD
SRC_ROOTS=(
  "${MIR_HOME}/src"
)
CLASSES_DIR="${MIR_HOME}/classes"
JAR_OUT="${MIR_HOME}/${PKG}.jar"
MAIN_CLASS="${PKG}.Demo"

mkdir -p "$CLASSES_DIR"
find "$CLASSES_DIR" -type f -name '*.class' -delete

{
  for ROOT in "${SRC_ROOTS[@]}"; do
    if [[ -d "$ROOT" ]]; then
      find "$ROOT" -type f -name '*.java' -print0
    else
      echo "Can't find: $ROOT" >&2
    fi
  done
} | xargs -0 javac --release 8 -d "$CLASSES_DIR" -encoding UTF-8


# JDK 9+ :
# jar --create --file "$JAR_OUT" --main-class "$MAIN_CLASS" -C "$CLASSES_DIR" .
# JDK 1+
jar cfe "$JAR_OUT" "$MAIN_CLASS" -C "$CLASSES_DIR" .

echo "JAR created: $JAR_OUT"
echo "Start with : java -jar \"$JAR_OUT\""
