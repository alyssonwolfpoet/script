-- SQLite
-- =========================================================
-- BANCO DE DADOS
-- Projeto: Habilidades e Experiências dos Alunos
-- PostgreSQL
-- =========================================================


-- =========================================================
-- 1. CRIAÇÃO DO BANCO
-- =========================================================

CREATE DATABASE habilidades_experiencias;


-- Depois de criar o banco, conecte-se a ele antes de
-- executar o restante do script.


-- =========================================================
-- 2. EXTENSÃO PARA UUID
-- =========================================================

CREATE EXTENSION IF NOT EXISTS pgcrypto;


-- =========================================================
-- 3. USUÁRIOS
-- =========================================================

CREATE TABLE usuarios (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    nome VARCHAR(150) NOT NULL,

    email VARCHAR(150) NOT NULL UNIQUE,

    senha_hash TEXT,

    tipo_usuario VARCHAR(20) NOT NULL
        CHECK (tipo_usuario IN ('ALUNO', 'PROFESSOR')),

    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    atualizado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- =========================================================
-- 4. ALUNOS
-- =========================================================

CREATE TABLE alunos (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    usuario_id UUID NOT NULL UNIQUE,

    matricula VARCHAR(30) UNIQUE,

    curso VARCHAR(150),

    campus VARCHAR(150),

    FOREIGN KEY (usuario_id)
        REFERENCES usuarios(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 5. PROFESSORES
-- =========================================================

CREATE TABLE professores (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    usuario_id UUID NOT NULL UNIQUE,

    siape VARCHAR(30) UNIQUE,

    FOREIGN KEY (usuario_id)
        REFERENCES usuarios(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 6. DADOS ACADÊMICOS
-- =========================================================

CREATE TABLE dados_academicos (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    aluno_id UUID NOT NULL UNIQUE,

    semestre_atual INTEGER NOT NULL
        CHECK (semestre_atual > 0),

    previsao_conclusao DATE,

    ira NUMERIC(4,2),

    atualizado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (aluno_id)
        REFERENCES alunos(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 7. TECNOLOGIAS
-- =========================================================

CREATE TABLE tecnologias (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    nome VARCHAR(100) NOT NULL UNIQUE,

    descricao TEXT,

    criada_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- =========================================================
-- 8. EXPERIÊNCIAS PROFISSIONAIS
-- =========================================================

CREATE TABLE experiencias (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    aluno_id UUID NOT NULL,

    tipo VARCHAR(30) NOT NULL
        CHECK (
            tipo IN (
                'ESTAGIO',
                'BOLSA',
                'EMPREGO',
                'PROJETO',
                'FREELANCER',
                'VOLUNTARIADO',
                'OUTRO'
            )
        ),

    empresa VARCHAR(150),

    cargo VARCHAR(150),

    descricao TEXT,

    data_inicio DATE,

    data_fim DATE,

    atual BOOLEAN NOT NULL DEFAULT FALSE,

    pretensao_futura TEXT,

    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    atualizado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (aluno_id)
        REFERENCES alunos(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 9. TECNOLOGIAS UTILIZADAS NAS EXPERIÊNCIAS
-- =========================================================

CREATE TABLE experiencia_tecnologia (
    experiencia_id UUID NOT NULL,

    tecnologia_id UUID NOT NULL,

    nivel VARCHAR(30)
        CHECK (
            nivel IN (
                'INICIANTE',
                'INTERMEDIARIO',
                'AVANCADO'
            )
        ),

    PRIMARY KEY (
        experiencia_id,
        tecnologia_id
    ),

    FOREIGN KEY (experiencia_id)
        REFERENCES experiencias(id)
        ON DELETE CASCADE,

    FOREIGN KEY (tecnologia_id)
        REFERENCES tecnologias(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 10. SKILLS
-- =========================================================

CREATE TABLE skills (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    nome VARCHAR(100) NOT NULL,

    tipo VARCHAR(20) NOT NULL
        CHECK (tipo IN ('SOFT', 'HARD')),

    descricao TEXT,

    UNIQUE (nome, tipo)
);


-- =========================================================
-- 11. SKILLS DOS ALUNOS
-- =========================================================

CREATE TABLE aluno_skill (
    aluno_id UUID NOT NULL,

    skill_id UUID NOT NULL,

    nivel VARCHAR(30)
        CHECK (
            nivel IN (
                'BASICO',
                'INTERMEDIARIO',
                'AVANCADO'
            )
        ),

    PRIMARY KEY (
        aluno_id,
        skill_id
    ),

    FOREIGN KEY (aluno_id)
        REFERENCES alunos(id)
        ON DELETE CASCADE,

    FOREIGN KEY (skill_id)
        REFERENCES skills(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 12. COMPROVANTES DE MATRÍCULA
-- =========================================================

CREATE TABLE comprovantes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    aluno_id UUID NOT NULL,

    nome_arquivo VARCHAR(255) NOT NULL,

    tipo_arquivo VARCHAR(50) NOT NULL,

    caminho_arquivo TEXT NOT NULL,

    tamanho_bytes BIGINT,

    enviado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (aluno_id)
        REFERENCES alunos(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 13. PRETENSÕES PROFISSIONAIS
-- =========================================================

CREATE TABLE pretensoes_profissionais (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    aluno_id UUID NOT NULL,

    area VARCHAR(150) NOT NULL,

    cargo_desejado VARCHAR(150),

    descricao TEXT,

    FOREIGN KEY (aluno_id)
        REFERENCES alunos(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 14. QUESTIONÁRIOS
-- =========================================================

CREATE TABLE questionarios (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    professor_id UUID NOT NULL,

    titulo VARCHAR(200) NOT NULL,

    descricao TEXT,

    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (professor_id)
        REFERENCES professores(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 15. PERGUNTAS
-- =========================================================

CREATE TABLE perguntas (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    questionario_id UUID NOT NULL,

    pergunta TEXT NOT NULL,

    tipo VARCHAR(30) NOT NULL
        CHECK (
            tipo IN (
                'TEXTO',
                'MULTIPLA_ESCOLHA',
                'SIM_NAO',
                'NUMERO'
            )
        ),

    ordem INTEGER NOT NULL,

    FOREIGN KEY (questionario_id)
        REFERENCES questionarios(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 16. RESPOSTAS
-- =========================================================

CREATE TABLE respostas (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    pergunta_id UUID NOT NULL,

    aluno_id UUID NOT NULL,

    resposta TEXT NOT NULL,

    respondido_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (pergunta_id)
        REFERENCES perguntas(id)
        ON DELETE CASCADE,

    FOREIGN KEY (aluno_id)
        REFERENCES alunos(id)
        ON DELETE CASCADE
);


-- =========================================================
-- 17. ÍNDICES
-- =========================================================

CREATE INDEX idx_alunos_matricula
ON alunos(matricula);

CREATE INDEX idx_experiencias_aluno
ON experiencias(aluno_id);

CREATE INDEX idx_experiencias_tipo
ON experiencias(tipo);

CREATE INDEX idx_experiencias_empresa
ON experiencias(empresa);

CREATE INDEX idx_tecnologias_nome
ON tecnologias(nome);

CREATE INDEX idx_experiencia_tecnologia_tecnologia
ON experiencia_tecnologia(tecnologia_id);

CREATE INDEX idx_aluno_skill_skill
ON aluno_skill(skill_id);

CREATE INDEX idx_dados_academicos_semestre
ON dados_academicos(semestre_atual);

CREATE INDEX idx_questionarios_professor
ON questionarios(professor_id);

CREATE INDEX idx_perguntas_questionario
ON perguntas(questionario_id);

CREATE INDEX idx_respostas_aluno
ON respostas(aluno_id);


-- =========================================================
-- FIM DO BANCO
-- =========================================================