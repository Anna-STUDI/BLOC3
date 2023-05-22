-- Table: public.admin

-- DROP TABLE IF EXISTS public.admin;

CREATE TABLE IF NOT EXISTS public.admin
(
    id_admin bigint NOT NULL,
    name "char" NOT NULL,
    fname "char" NOT NULL,
    CONSTRAINT admin_pkey PRIMARY KEY (id_admin)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.admin
    OWNER to postgres;


-- Table: public.category

-- DROP TABLE IF EXISTS public.category;

CREATE TABLE IF NOT EXISTS public.category
(
    id_category bigint NOT NULL,
    libelle "char" NOT NULL,
    CONSTRAINT category_pkey PRIMARY KEY (id_category)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.category
    OWNER to postgres;


-- Table: public.product

-- DROP TABLE IF EXISTS public.product;

CREATE TABLE IF NOT EXISTS public.product
(
    id_product bigint NOT NULL,
    name_product "char" NOT NULL,
    mark "char" NOT NULL,
    firstprice double precision NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    image "char" NOT NULL,
    category_id bigint,
    CONSTRAINT product_pkey PRIMARY KEY (id_product),
    CONSTRAINT product_category_id_fkey FOREIGN KEY (category_id)
        REFERENCES public.category (id_category) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product
    OWNER to postgres;