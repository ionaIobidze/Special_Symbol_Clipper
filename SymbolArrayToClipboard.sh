#!/bin/bash

# Dependencies for the script: zenity, xclip

generate_array() {
    keywords=()
    for key in "${!symbols[@]}"; do
        keywords+=($key)
    done
}

copy_to_clipboard() {
    keyword=$(zenity --list --column="Keywords" "${keywords[@]}") || exit
    echo -n "${symbols[$keyword]}" | xclip -selection clipboard
}

# add or substract you desired symbols here
declare -A symbols=(
["noteq"]="≠" ["approx"]="≈" ["elementof"]="∈" ["notelementof"]="∉" ["subset"]="⊂" ["notsubset"]="⊄"

["union"]="∪" ["intersection"]="∩" ["setdifference"]="∖" ["cartesianproduct"]="×" ["powerset"]="℘"
    ["naturalnumbers"]="ℕ" ["integers"]="ℤ" ["rationalnumbers"]="ℚ" ["realnumbers"]="ℝ" ["complexnumbers"]="ℂ"
    ["integral"]="∫" ["partialderivative"]="∂" ["nabla"]="∇" ["laplacian"]="∇^2" ["summation"]="∑" ["product"]="∏" ["infinity"]="∞"
    ["angle"]="∠" ["parallel"]="∥" ["perpendicular"]="⊥" ["squareroot"]="√" ["therefore"]="∴" ["because"]="∵"
    ["forall"]="∀" ["logicaland"]="∧" ["logicalor"]="∨" ["logicalnot"]="¬" ["implies"]="⇒" ["equivalent"]="⇔" ["thereexists"]="∃"

["xor"]="⊕" ["pi"]="π" ["emptyset"]="∅" ["plusorminus"]="±"
)

generate_array
copy_to_clipboard
