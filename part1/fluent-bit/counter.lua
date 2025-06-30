counter = 0

function gen_log(tag, timestamp, record)
    counter = counter + 1
    new_record = {}
    new_record["timestamp"] = timestamp
    new_record["counter"] = counter
    new_record["msg"] = "Test log message #" .. counter
    return 1, timestamp, new_record
end