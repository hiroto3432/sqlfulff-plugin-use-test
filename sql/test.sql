-- has not-null constraint and defalut value is not set (fail)
alter table tbl1
add column col1 TEXT not null;

-- has not-null constraint and defalut value is set (pass)
alter table tbl2
add column col1 TEXT not null default '';

-- not-null constraint and defalut value specification are reversed (pass)
alter table tbl3
add column col1 TEXT default ''
not null;

-- has not-null constraint and defalut value is null (fail)
alter table tbl4
add column col1 TEXT not null default null;

-- adding multiple Columns (fail:L20,L22)
alter table tbl5
add column col1 TEXT not null,
add column col2 TEXT default '',
add column col3 TEXT not null;

-- create table (pass)
create table tbl6 (
    col1 TEXT not null,
    col2 TEXT default '' not null
);
