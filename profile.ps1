# & ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" --print) -join "`n"))
# & ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\iterm2.omp.json" --print) -join "`n"))
# & ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\plague.omp.json" --print) -join "`n"))
# & ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\remk.omp.json" --print) -join "`n"))
& ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\sonicboom_light.omp.json" --print) -join "`n"))
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/atomic.omp.json" | Invoke-Expression


Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine
Import-Module -Name z
Import-Module git-aliases -DisableNameChecking
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Set Alias to edit the profile file
function editProfile() { code $PROFILE }
Set-Alias prof editProfile

#Open Projects by VScode or PHPstorm
function openProjectviePHPStorm($project) { phpstorm64 $project }
Set-Alias startstorm openProjectviePHPStorm

function openProjectViaVSCode($project) { code $project }
Set-Alias startvs openProjectViaVSCode
# Laravel Artisan Commands Shortcut 

function art($arg1, $arg2, $arg3, $arg4, $arg5) { php artisan $arg1 $arg2 $arg3 $arg4 $arg5 }

function makeMigration($arg) { php artisan make:migration create_"$arg"_table --create="$arg" }
function optimize() { php artisan optimize:clear }
function routeList() { php artisan route:list }
function installPassport($force) { php artisan passport:install --$force }
function migrateFresh($seed) { php artisan migrate:fresh --$seed }
function LaravelServe($port) { php artisan serve --port=$port }

Set-Alias pa art
Set-Alias pacm makeMigration
Set-Alias paoc optimize
Set-Alias parl routeList
Set-Alias papass installPassport
Set-Alias pamf migrateFresh
Set-Alias paser LaravelServe

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
# PS c:\laravel_proj> a ge:r post


function www($arg1) {
  $arg = "C:\laragon\www\" + $arg1
  Set-Location $arg
}
 
# Try it:

# PS C:\> www

# OR,

# PS C:\> www laravel_proj

# omnevo projects
function omnevo($arg1) {
  $arg = "D:\Projects\" + $arg1
  Set-Location $arg
}