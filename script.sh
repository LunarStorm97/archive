#!/bin/bash

# Archivo de log
log_file="firmware_versions_combinations.log"
echo "Fecha de consulta: $(date)" > "$log_file"

# Función para generar todas las combinaciones posibles de tres letras
generate_combinations() {
    for first in {A..Z}; do
        for second in {A..Z}; do
            for third in {A..Z}; do
                echo "$first$second$third"
            done
        done
    done
}

# Recorrer todas las combinaciones generadas
for region in $(generate_combinations); do
    echo "Consultando la región: $region"

    # Ejecutar el comando curl para obtener la versión
    version=$(curl -s "http://fota-cloud-dn.ospserver.net/firmware/$region/SM-A236M/version.xml" | grep -oP '(?<=<latest o="\d{02}">)[^/]+')

    # Si se encuentra una versión, agregarla al archivo de log
    if [[ -n "$version" ]]; then
        echo "Región: $region - Versión: $version" >> "$log_file"
    fi
done

echo "Consulta completada. Los resultados de las versiones encontradas se han guardado en $log_file"
