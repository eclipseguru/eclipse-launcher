#!/bin/bash
mvn clean verify -f no.resheim.eclipse.utils-parent 
if [ $? -eq 0 ]; then
	mvn sonar:sonar -Psonar -f no.resheim.eclipse.utils-parent
fi
