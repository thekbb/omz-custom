ts2date() {
  if ! [ ${#1} -lt 10 ]; then  
    date -r "${1:0:10}"
  else
      echo '10+ digits expected'
      exit 1
  fi
}
