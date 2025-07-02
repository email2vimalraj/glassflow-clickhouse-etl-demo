counter = 0

function gen_log(tag, timestamp, record)
    counter = counter + 1

    -- Emit duplicate every 5 logs
    local dedup_counter = counter
    if counter % 5 == 0 then
        dedup_counter = counter - 1 -- create a duplicate
    end

    new_record = {}
    new_record["timestamp"] = timestamp
    new_record["counter"] = dedup_counter
    new_record["msg"] = "Test log message #" .. dedup_counter
    
    return 1, timestamp, new_record
end