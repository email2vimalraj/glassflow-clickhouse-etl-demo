counter = 0

function gen_log(tag, timestamp, record)
    counter = counter + 1
    
    new_record = {}
    new_record["timestamp"] = timestamp
    new_record["counter"] = counter
    new_record["msg"] = "Test log message #" .. counter
    new_record["user_id"] = (counter % 3 == 0) and "user123" or "user456"

    return 1, timestamp, new_record
end