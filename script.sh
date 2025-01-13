#!/bin/bash

# Parte de las combinaciones a procesar
part=$1

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

# Determinar el rango de combinaciones basado en la parte
total_combinations=17576  # Total de combinaciones (26^3)
combinations_per_part=$((total_combinations / 10))  # Aproximadamente 1,757 combinaciones por parte

# Calcular el rango de combinaciones para esta parte
start=$(((part - 1) * combinations_per_part))
end=$((part * combinations_per_part - 1))

# Asegurarse de que la última parte cubra hasta el final
if [ "$part" -eq 10 ]; then
    end=$((total_combinations - 1))
fi

# Generar y procesar las combinaciones correspondientes
counter=0
for region in $(generate_combinations); do
    if [[ $counter -ge $start && $counter -le $end ]]; then
        echo "Consultando la región: $region"

        # Ejecutar el comando curl para obtener la versión
        version=$(curl -s "http://fota-cloud-dn.ospserver.net/firmware/$region/SM-A236M/version.xml" | grep -oP '(?<=<latest o="\d{02}">)[^/]+')

        # Si se encuentra una versión, agregarla al archivo de log
        if [[ -n "$version" ]]; then
            echo "Región: $region - Versión: $version" >> "$log_file"
        fi
    fi
    ((counter++))
done

echo "Consulta completada para la parte $part. Los resultados se han guardado en $log_file"
