#!/bin/bash

patch_rules() {
    FILE="$1"

    # patch datasource_uid
    datasource_uid_expression='
    .[].rules[].datas[] |=
    with(select(.model.type == null);
        . = {"datasource_uid" : "${datasource_uid}"} + .
    )|=
    with(select(.model.type != null);
        . = {"datasource_uid" : -100 } + .
    )'

    # patch model.refId
    red_id_expression='
    .[].rules[].datas[] |=
    .model = {"refId" : .ref_id } + .model'

    yq -i "$datasource_uid_expression" "$FILE"
    yq -i "$red_id_expression" "$FILE"
}

ARG1="$1"
if [ "$ARG1" ]; then
    if [ -f "$ARG1" ]; then
        file="$ARG1"
        patch_rules "$file"

    elif [ -d "$ARG1" ]; then
        for file in $(find "$ARG1" -type f -name '*-rules.yaml' -o -name '*-rules.yml'); do
            patch_rules "$file"
        done
    fi
fi
