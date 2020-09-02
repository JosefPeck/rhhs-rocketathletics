#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
set -euxo pipefail
echo "Working in ${SCRIPT_DIR}"


# Strip /mnt/c
# Change this to your directory if you want.
# Could probably also use `wslpath` here instead.
SCRIPT_WIN_DIR="C:/${SCRIPT_DIR:7}"

docker.exe build --tag rhhsrocketathleticsbuild:1.0 .

docker.exe run --rm -it -d -v "${SCRIPT_WIN_DIR}/source":/usr/local/apache2/htdocs -p 8080:80 --name rhhsrocketathletics rhhsrocketathleticsbuild:1.0

echo "OK"

trap ctrl_c INT
function ctrl_c() {
	echo "Stopping..."
	docker.exe stop rhhsrocketathletics
}
echo "Press CTRL+C to stop."
set +x
while true
do
	sleep 10
	echo -n "."
done
