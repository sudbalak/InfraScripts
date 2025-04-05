for i in {1..100}; do
  response=$(curl -o /dev/null -s -w "%{http_code} %{time_total}\n" http://<host ip>:<port>/)
  status_code=$(echo $response | awk '{print $1}')
  time_taken=$(echo $response | awk '{print $2}')

  if [ $status_code -eq 200 ]; then
    echo "Request $i: Success (HTTP $status_code) | Response Time: ${time_taken}s"
  else
    echo "Request $i: Failure (HTTP $status_code) | Response Time: ${time_taken}s"
  fi
done