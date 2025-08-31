# LXRCore Police System Events (RedM Integrated)

## Duty
- `lxr-police:duty:clockin (station)`
- `lxr-police:duty:setState (isOnDuty, dept, grade)`

## Arrest & Control
- `lxr-police:arrest:softCuff (targetNetId, officerNetId)`
- `lxr-police:arrest:uncuff (targetNetId)`
- `lxr-police:arrest:drag (targetNetId, officerNetId)`
- `lxr-police:arrest:stopDrag (targetNetId)`
- `lxr-police:arrest:pushIntoVehicle (targetNetId, vehicleNetId)`

## Citations
- `lxr-police:citations:issue (target, statute, amount)`
- `lxr-police:notifyCitation`

## MDT
- `lxr-police:mdt:searchCitizen (query)`
- `lxr-police:mdt:searchResult (results)`

## Audit
- `lxr-police:audit:log (src, action, target_type, target_id, details)`

### All events use RedM entity ids, coords, and context.

## Example Usage

```lua
-- Officer initiates soft cuff
if exports["lxr-police"]:HasPermission(source, "arrest") then
    TriggerEvent("lxr-police:arrest:softCuff", suspectNetId)
end
```

## Admin Recipe: Add New Cell Location
```lua
Config.Stations["valentine"].cells[#Config.Stations["valentine"].cells+1] = vec3(-273.1, 813.2, 118.0)
```