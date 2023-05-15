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
    ["balpha"]="Α" ["salpha"]="α" ["bbeta"]="Β" ["sbeta"]="β" ["bgamma"]="Γ" ["sgamma"]="γ" ["bdelta"]="Δ" ["sdelta"]="δ"
    ["bepsilon"]="Ε" ["sepsilon"]="ε" ["bzeta"]="Ζ" ["szeta"]="ζ" ["beta"]="Η" ["seta"]="η" ["btheta"]="Θ" ["stheta"]="θ"
    ["biota"]="Ι" ["siota"]="ι" ["bkappa"]="Κ" ["skappa"]="κ" ["blambda"]="Λ" ["slambda"]="λ" ["bmu"]="Μ" ["smu"]="μ"
    ["bnu"]="Ν" ["snu"]="ν" ["bxi"]="Ξ" ["sxi"]="ξ" ["bomicron"]="Ο" ["somicron"]="ο" ["bpi"]="Π" ["spi"]="π"
    ["brho"]="Ρ" ["srho"]="ρ" ["bsigma"]="Σ" ["ssigma"]="σ" ["btau"]="Τ" ["stau"]="τ" ["bupsilon"]="Υ" ["supsilon"]="υ"
    ["bphi"]="Φ" ["sphi"]="φ" ["bchi"]="Χ" ["schi"]="χ" ["bpsi"]="Ψ" ["spsi"]="ψ" ["bomega"]="Ω" ["somega"]="ω" ["xor"]="⊕"
    ["pi"]="π" ["emptyset"]="∅" ["plusorminus"]="±"
)

generate_array
copy_to_clipboard
