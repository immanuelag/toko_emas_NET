DELIMITER ;;
CREATE trigger master_itemsinsert BEFORE INSERT ON master_items FOR EACH ROW BEGIN SET NEW.createTimestamp=IF(ISNULL(NEW.createTimestamp) OR NEW.createTimestamp='2018-01-01 00:00:00', CURRENT_TIMESTAMP, IF(NEW.createTimestamp<CURRENT_TIMESTAMP, NEW.createTimestamp, CURRENT_TIMESTAMP));SET NEW.updateTimestamp=NEW.createTimestamp; END;;
DELIMITER ;;
CREATE trigger master_itemsupdate BEFORE UPDATE ON master_items FOR EACH ROW SET NEW.updateTimestamp=IF(NEW.updateTimestamp<OLD.updateTimestamp, OLD.updateTimestamp, CURRENT_TIMESTAMP)