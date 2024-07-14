oh-my-posh init pwsh --config "C:\Users\jianjia\AppData\Local\Programs\oh-my-posh\themes\negligible.omp.json" | Invoke-Expression
# probua.minimal.omp.json

# some theme recommend:
# slimfat kushal  atomic
# item2  microverse-power negligible powerlevel10k_lean powerlevel10k_rainbow pure


#########################################################
# for proxy in powershell
function proxy() {
	param([string] $port)
	$env:http_proxy="http://127.0.0.1:"+$port
	$env:https_proxy="https://127.0.0.1:"+$port
	echo ("http(s) proxy on "+$port)
}

function sproxy() {
	param([string] $port)
	$env:all_proxy="socks5://127.0.0.1:"+$port
	echo ("socks5 proxy on "+$port)
}

function offproxy {	
	$env:http_proxy=""
	$env:https_proxy=""
	$env:all_proxy=""
	echo "proxy off"
}

##########################################################


#########################################################
# for micromamba

# New-Alias -Name "List" Get-ChildItem
Set-Alias -Name "conda" micromamba
micromamba activate base
##########################################################
# for eza, ls是内置别名，已经存在了
Set-Alias -Name "ls" eza


#########################################################
# for scoop

#########################################################
