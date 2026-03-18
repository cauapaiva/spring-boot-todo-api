CREATE TABLE evento (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    datainicio TIMESTAMP,
    datafim TIMESTAMP
);
CREATE TABLE participante (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE inscricao (
    id SERIAL PRIMARY KEY,
    participante_id INT,
    evento_id INT,
    FOREIGN KEY (participante_id) REFERENCES participante(id),
    FOREIGN KEY (evento_id) REFERENCES evento(id)
);
