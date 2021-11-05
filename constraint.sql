ALTER TABLE type_of_goods ADD UNIQUE(name);

ALTER TABLE goods ADD CONSTRAINT price_check CHECK (price>0);