# hcl

HashiCorp Configuration Language (HCL) and Terraform language pack for [Fresh](https://github.com/sinelaw/fresh).

## Languages

| Language              | Extensions              | Grammar                                  |
| --------------------- | ----------------------- | ---------------------------------------- |
| Terraform             | `.tf`, `.nomad`         | `grammars/terraform.sublime-syntax`      |
| Terraform (variables) | `.tfvars`, `.tfbackend` | `grammars/terraform-vars.sublime-syntax` |
| HCL                   | `.hcl`                  | `grammars/hcl.sublime-syntax`            |
| Terraform Plan        | `.tfplan`               | `grammars/terraform-plan.sublime-syntax` |

Settings: `#` line comments, `/* */` block comments, 2-space indent, auto-indent.

## Optional tools

- LSP (Terraform and Terraform variables): `terraform-ls serve`, auto-started
- Formatter (Terraform / tfvars): `terraform fmt -`

On NixOS: `nix-shell -p terraform terraform-ls` (or add them to your configuration).

## Installation

Run `Package: Install from URL` from the command palette (Ctrl+P) and enter `(RepositoryURL)#languages/hcl

Or manually, copy `grammars/*.sublime-syntax` to `~/.config/fresh/grammars/` and restart Fresh.

## Changes from Upstream

Original Repository: [SublimeText/Terraform](https://github.com/SublimeText/Terraform)

Fresh loads each grammar standalone, so the Sublime-specific cross-file features were removed:

- `HCL` and `Terraform (variables)` were `extends: Terraform.sublime-syntax`; they are now full copies with their own name, scope and extensions.
- The `JSON (Terraform)` grammar (`.tfstate`, depends on Sublime's `Packages/JSON`) was dropped, along with the `Packages/Terraform/JSON (Terraform)...#object-body` include in `object-body`.

## Validation

`./validate.sh` checks `package.json` against the Fresh schema (requires `pip install jsonschema`).

## Grammar Attribution

The grammars are derived from [SublimeText/Terraform](https://github.com/SublimeText/Terraform),
licensed under MIT (Copyright (c) 2016 Alex Louden, (c) 2024 FichteFoll). See `grammars/LICENSE`.

## License

MIT
