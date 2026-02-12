SELECT 
    id,
    raw_value,

    ABS(raw_value) AS absolute_value,

    CEIL(raw_value) AS ceil_value,

    FLOOR(raw_value) AS floor_value,

    ROUND(raw_value, 2) AS rounded_2dp,

    POW(raw_value, 2) AS squared,

    SQRT(ABS(raw_value)) AS sqrt_of_abs,

    EXP(raw_value) AS exp_value,

    LOG(ABS(raw_value)) AS natural_log,

    RAND() AS random_number

FROM Measurements;
