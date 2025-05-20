USE smartfarmingdb;
-- Retrieve the names and locations of all farms.
SELECT FarmName, Location FROM farms;

-- List all crops and their planting seasons.
SELECT CropName, PlantingSeason FROM crops;

-- Retrieve the average temperature recorded by each sensor ID
SELECT AVG(environmentaldata.Temperature), sensors.SensorID 
FROM environmentaldata
INNER JOIN sensors ON environmentaldata.SensorID = sensors.SensorID
GROUP BY sensors.SensorID;

-- Retrieve the names of all employees who work in the 'Management' department.
SELECT FirstName FROM employees WHERE Department='Management';

-- Retrieve a list of each field, along with the names of the crops planted in that field.
SELECT fields.FieldName, crops.CropName
FROM fieldcrops
INNER JOIN fields ON fields.FieldID = fieldcrops.FieldID
INNER JOIN crops ON crops.CropID = fieldcrops.CropID;
