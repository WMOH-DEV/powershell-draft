# C:\Users\warav\OneDrive\Documents\PowerShell
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/jandedobbeleer.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/atomic.omp.json" | Invoke-Expression


Import-Module -Name "Terminal-Icons"
Import-Module -Name PSReadLine
Import-Module -Name git-aliases

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Laravel Artisan Commands Shortcut 

function art($arg1, $arg2, $arg3, $arg4, $arg5) { php artisan $arg1 $arg2 $arg3 $arg4 $arg5 }

function makeMigration($arg) { php artisan make:migration create_"$arg"_table --create="$arg" }

Set-Alias a art
Set-Alias amig makeMigration

#### Use as by default Alias  #####

Set-Alias ge:r generate:resource
Set-Alias ge:c generate:controller
Set-Alias ge:s generate:seed
Set-Alias ge:m generate:model
Set-Alias ge:sc generate:scaffold
Set-Alias mi:f migrate:fresh
Set-Alias mi:re migrate:reset
Set-Alias mi:b migrate:rollback
Set-Alias r:l route:list
Set-Alias o:c optimize:clear
Set-Alias ca:c cache:clear
Set-Alias co:c config:clear
Set-Alias pass:i passport:install


# Try it
## PS c:\laravel_proj> a ge:r post

# For CodeCept
## Assuming codecept.phar file is in your current working Directory

function codecept($arg1, $arg2) { php codecept.phar $arg1 $arg2 }
Set-Alias c codecept

# *** Other *** #

function www($arg1) {
  $arg = "C:\laragon\www\" + $arg1
  Set-Location $arg
}
 
## Try it:

# PS C:\> www

# OR,

# PS C:\> www laravel_proj