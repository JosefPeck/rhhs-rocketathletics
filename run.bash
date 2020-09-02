#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
set -euxo pipefail
echo "Working in ${SCRIPT_DIR}"


sudo docker build --tag rhhsrocketathleticsbuild:1.0 .

sudo docker run --rm -it -d -v "${SCRIPT_DIR}/source":/usr/local/apache2/htdocs -p 8080:80 --name rhhsrocketathletics rhhsrocketathleticsbuild:1.0

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
