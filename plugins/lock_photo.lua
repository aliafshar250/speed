local function run(msg)
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)]['settings']['lock_ph'] == 'yes' then
    if not is_momod(msg) then
        delete_msg(msg.id, ok_cb, true)
        return 
    end
  end
end

return {patterns = {
    '%[(document)%]',
    '%[(photo)%]',
    }, run = run}
