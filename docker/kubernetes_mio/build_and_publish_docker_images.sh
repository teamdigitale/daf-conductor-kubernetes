#!/usr/bin/env bash
docker build -f ../server/Dockerfile -t nexus.daf.teamdigitale.it/conductor:server2.8.0 ../../
docker push nexus.daf.teamdigitale.it/conductor:server2.8.0
docker build -f ./dynomite/Dockerfile -t nexus.daf.teamdigitale.it/dynomite .
docker push nexus.daf.teamdigitale.it/dynomite
docker build -f ../ui/Dockerfile -t nexus.daf.teamdigitale.it/conductor:ui ../../
docker push nexus.daf.teamdigitale.it/conductor:ui
