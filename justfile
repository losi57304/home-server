alias dec := decrypt
alias enc := encrypt

@decrypt:
    sops decrypt .enc.env >.env
    sops --decrypt --input-type binary --output-type binary rathole-config.enc.json > rathole-config.toml

@encrypt:
    sops encrypt .env >.enc.env
    sops --encrypt --input-type binary --output-type binary rathole-config.toml > rathole-config.enc.json
