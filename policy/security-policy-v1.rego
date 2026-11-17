package securepipeline.gate

default allow := false

allow {
    count(deny) == 0
}

deny[msg] {
    input.sast.critical > 0
    msg := "BLOCK: SAST Critical > 0"
}

deny[msg] {
    input.secrets > 0
    msg := "BLOCK: Secrets encontrados"
}

deny[msg] {
    input.sca.high > 2
    msg := "BLOCK: High CVEs > 2"
}

deny[msg] {
    input.coverage < 80
    msg := "BLOCK: Coverage < 80%"
}
