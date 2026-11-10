--
-- PostgreSQL database dump
--

\restrict cTei8ED4goiAG19EISvqYxLuHTaIFrZm7LsNceEbQiztrtzyv1SKLwNZfEjbhDe

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-08-26 14:14:43

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 16389)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 5096 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 228 (class 1259 OID 16570)
-- Name: aluno_skill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aluno_skill (
    aluno_id uuid NOT NULL,
    skill_id uuid NOT NULL,
    nivel character varying(30),
    CONSTRAINT aluno_skill_nivel_check CHECK (((nivel)::text = ANY ((ARRAY['BASICO'::character varying, 'INTERMEDIARIO'::character varying, 'AVANCADO'::character varying])::text[])))
);


ALTER TABLE public.aluno_skill OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16448)
-- Name: alunos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alunos (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    usuario_id uuid NOT NULL,
    matricula character varying(30),
    curso character varying(150),
    campus character varying(150)
);


ALTER TABLE public.alunos OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16588)
-- Name: comprovantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comprovantes (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    aluno_id uuid NOT NULL,
    nome_arquivo character varying(255) NOT NULL,
    tipo_arquivo character varying(50) NOT NULL,
    caminho_arquivo text NOT NULL,
    tamanho_bytes bigint,
    enviado_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.comprovantes OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16482)
-- Name: dados_academicos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dados_academicos (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    aluno_id uuid NOT NULL,
    semestre_atual integer NOT NULL,
    previsao_conclusao date,
    ira numeric(4,2),
    atualizado_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT dados_academicos_semestre_atual_check CHECK ((semestre_atual > 0))
);


ALTER TABLE public.dados_academicos OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16538)
-- Name: experiencia_tecnologia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.experiencia_tecnologia (
    experiencia_id uuid NOT NULL,
    tecnologia_id uuid NOT NULL,
    nivel character varying(30),
    CONSTRAINT experiencia_tecnologia_nivel_check CHECK (((nivel)::text = ANY ((ARRAY['INICIANTE'::character varying, 'INTERMEDIARIO'::character varying, 'AVANCADO'::character varying])::text[])))
);


ALTER TABLE public.experiencia_tecnologia OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16515)
-- Name: experiencias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.experiencias (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    aluno_id uuid NOT NULL,
    tipo character varying(30) NOT NULL,
    empresa character varying(150),
    cargo character varying(150),
    descricao text,
    data_inicio date,
    data_fim date,
    atual boolean DEFAULT false NOT NULL,
    pretensao_futura text,
    criado_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    atualizado_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT experiencias_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['ESTAGIO'::character varying, 'BOLSA'::character varying, 'EMPREGO'::character varying, 'PROJETO'::character varying, 'FREELANCER'::character varying, 'VOLUNTARIADO'::character varying, 'OUTRO'::character varying])::text[])))
);


ALTER TABLE public.experiencias OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16644)
-- Name: perguntas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.perguntas (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    questionario_id uuid NOT NULL,
    pergunta text NOT NULL,
    tipo character varying(30) NOT NULL,
    ordem integer NOT NULL,
    CONSTRAINT perguntas_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['TEXTO'::character varying, 'MULTIPLA_ESCOLHA'::character varying, 'SIM_NAO'::character varying, 'NUMERO'::character varying])::text[])))
);


ALTER TABLE public.perguntas OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16608)
-- Name: pretensoes_profissionais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pretensoes_profissionais (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    aluno_id uuid NOT NULL,
    area character varying(150) NOT NULL,
    cargo_desejado character varying(150),
    descricao text
);


ALTER TABLE public.pretensoes_profissionais OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16465)
-- Name: professores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professores (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    usuario_id uuid NOT NULL,
    siape character varying(30)
);


ALTER TABLE public.professores OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16624)
-- Name: questionarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questionarios (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    professor_id uuid NOT NULL,
    titulo character varying(200) NOT NULL,
    descricao text,
    ativo boolean DEFAULT true NOT NULL,
    criado_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.questionarios OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16663)
-- Name: respostas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.respostas (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    pergunta_id uuid NOT NULL,
    aluno_id uuid NOT NULL,
    resposta text NOT NULL,
    respondido_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.respostas OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16556)
-- Name: skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skills (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    nome character varying(100) NOT NULL,
    tipo character varying(20) NOT NULL,
    descricao text,
    CONSTRAINT skills_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['SOFT'::character varying, 'HARD'::character varying])::text[])))
);


ALTER TABLE public.skills OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16501)
-- Name: tecnologias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tecnologias (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    nome character varying(100) NOT NULL,
    descricao text,
    criada_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.tecnologias OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16427)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    nome character varying(150) NOT NULL,
    email character varying(150) NOT NULL,
    senha_hash text,
    tipo_usuario character varying(20) NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    criado_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    atualizado_em timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT usuarios_tipo_usuario_check CHECK (((tipo_usuario)::text = ANY ((ARRAY['ALUNO'::character varying, 'PROFESSOR'::character varying])::text[])))
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 4915 (class 2606 OID 16577)
-- Name: aluno_skill aluno_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno_skill
    ADD CONSTRAINT aluno_skill_pkey PRIMARY KEY (aluno_id, skill_id);


--
-- TOC entry 4880 (class 2606 OID 16459)
-- Name: alunos alunos_matricula_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_matricula_key UNIQUE (matricula);


--
-- TOC entry 4882 (class 2606 OID 16455)
-- Name: alunos alunos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (id);


--
-- TOC entry 4884 (class 2606 OID 16457)
-- Name: alunos alunos_usuario_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_usuario_id_key UNIQUE (usuario_id);


--
-- TOC entry 4918 (class 2606 OID 16602)
-- Name: comprovantes comprovantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprovantes
    ADD CONSTRAINT comprovantes_pkey PRIMARY KEY (id);


--
-- TOC entry 4893 (class 2606 OID 16495)
-- Name: dados_academicos dados_academicos_aluno_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dados_academicos
    ADD CONSTRAINT dados_academicos_aluno_id_key UNIQUE (aluno_id);


--
-- TOC entry 4895 (class 2606 OID 16493)
-- Name: dados_academicos dados_academicos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dados_academicos
    ADD CONSTRAINT dados_academicos_pkey PRIMARY KEY (id);


--
-- TOC entry 4908 (class 2606 OID 16545)
-- Name: experiencia_tecnologia experiencia_tecnologia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiencia_tecnologia
    ADD CONSTRAINT experiencia_tecnologia_pkey PRIMARY KEY (experiencia_id, tecnologia_id);


--
-- TOC entry 4903 (class 2606 OID 16532)
-- Name: experiencias experiencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiencias
    ADD CONSTRAINT experiencias_pkey PRIMARY KEY (id);


--
-- TOC entry 4926 (class 2606 OID 16657)
-- Name: perguntas perguntas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perguntas
    ADD CONSTRAINT perguntas_pkey PRIMARY KEY (id);


--
-- TOC entry 4920 (class 2606 OID 16618)
-- Name: pretensoes_profissionais pretensoes_profissionais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pretensoes_profissionais
    ADD CONSTRAINT pretensoes_profissionais_pkey PRIMARY KEY (id);


--
-- TOC entry 4887 (class 2606 OID 16472)
-- Name: professores professores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professores
    ADD CONSTRAINT professores_pkey PRIMARY KEY (id);


--
-- TOC entry 4889 (class 2606 OID 16476)
-- Name: professores professores_siape_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professores
    ADD CONSTRAINT professores_siape_key UNIQUE (siape);


--
-- TOC entry 4891 (class 2606 OID 16474)
-- Name: professores professores_usuario_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professores
    ADD CONSTRAINT professores_usuario_id_key UNIQUE (usuario_id);


--
-- TOC entry 4923 (class 2606 OID 16638)
-- Name: questionarios questionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questionarios
    ADD CONSTRAINT questionarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4929 (class 2606 OID 16676)
-- Name: respostas respostas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respostas
    ADD CONSTRAINT respostas_pkey PRIMARY KEY (id);


--
-- TOC entry 4911 (class 2606 OID 16569)
-- Name: skills skills_nome_tipo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_nome_tipo_key UNIQUE (nome, tipo);


--
-- TOC entry 4913 (class 2606 OID 16567)
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- TOC entry 4899 (class 2606 OID 16514)
-- Name: tecnologias tecnologias_nome_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tecnologias
    ADD CONSTRAINT tecnologias_nome_key UNIQUE (nome);


--
-- TOC entry 4901 (class 2606 OID 16512)
-- Name: tecnologias tecnologias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tecnologias
    ADD CONSTRAINT tecnologias_pkey PRIMARY KEY (id);


--
-- TOC entry 4876 (class 2606 OID 16447)
-- Name: usuarios usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);


--
-- TOC entry 4878 (class 2606 OID 16445)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4916 (class 1259 OID 16693)
-- Name: idx_aluno_skill_skill; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_aluno_skill_skill ON public.aluno_skill USING btree (skill_id);


--
-- TOC entry 4885 (class 1259 OID 16687)
-- Name: idx_alunos_matricula; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_alunos_matricula ON public.alunos USING btree (matricula);


--
-- TOC entry 4896 (class 1259 OID 16694)
-- Name: idx_dados_academicos_semestre; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dados_academicos_semestre ON public.dados_academicos USING btree (semestre_atual);


--
-- TOC entry 4909 (class 1259 OID 16692)
-- Name: idx_experiencia_tecnologia_tecnologia; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_experiencia_tecnologia_tecnologia ON public.experiencia_tecnologia USING btree (tecnologia_id);


--
-- TOC entry 4904 (class 1259 OID 16688)
-- Name: idx_experiencias_aluno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_experiencias_aluno ON public.experiencias USING btree (aluno_id);


--
-- TOC entry 4905 (class 1259 OID 16690)
-- Name: idx_experiencias_empresa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_experiencias_empresa ON public.experiencias USING btree (empresa);


--
-- TOC entry 4906 (class 1259 OID 16689)
-- Name: idx_experiencias_tipo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_experiencias_tipo ON public.experiencias USING btree (tipo);


--
-- TOC entry 4924 (class 1259 OID 16696)
-- Name: idx_perguntas_questionario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_perguntas_questionario ON public.perguntas USING btree (questionario_id);


--
-- TOC entry 4921 (class 1259 OID 16695)
-- Name: idx_questionarios_professor; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_questionarios_professor ON public.questionarios USING btree (professor_id);


--
-- TOC entry 4927 (class 1259 OID 16697)
-- Name: idx_respostas_aluno; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_respostas_aluno ON public.respostas USING btree (aluno_id);


--
-- TOC entry 4897 (class 1259 OID 16691)
-- Name: idx_tecnologias_nome; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tecnologias_nome ON public.tecnologias USING btree (nome);


--
-- TOC entry 4936 (class 2606 OID 16578)
-- Name: aluno_skill aluno_skill_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno_skill
    ADD CONSTRAINT aluno_skill_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(id) ON DELETE CASCADE;


--
-- TOC entry 4937 (class 2606 OID 16583)
-- Name: aluno_skill aluno_skill_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno_skill
    ADD CONSTRAINT aluno_skill_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills(id) ON DELETE CASCADE;


--
-- TOC entry 4930 (class 2606 OID 16460)
-- Name: alunos alunos_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;


--
-- TOC entry 4938 (class 2606 OID 16603)
-- Name: comprovantes comprovantes_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprovantes
    ADD CONSTRAINT comprovantes_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(id) ON DELETE CASCADE;


--
-- TOC entry 4932 (class 2606 OID 16496)
-- Name: dados_academicos dados_academicos_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dados_academicos
    ADD CONSTRAINT dados_academicos_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(id) ON DELETE CASCADE;


--
-- TOC entry 4934 (class 2606 OID 16546)
-- Name: experiencia_tecnologia experiencia_tecnologia_experiencia_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiencia_tecnologia
    ADD CONSTRAINT experiencia_tecnologia_experiencia_id_fkey FOREIGN KEY (experiencia_id) REFERENCES public.experiencias(id) ON DELETE CASCADE;


--
-- TOC entry 4935 (class 2606 OID 16551)
-- Name: experiencia_tecnologia experiencia_tecnologia_tecnologia_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiencia_tecnologia
    ADD CONSTRAINT experiencia_tecnologia_tecnologia_id_fkey FOREIGN KEY (tecnologia_id) REFERENCES public.tecnologias(id) ON DELETE CASCADE;


--
-- TOC entry 4933 (class 2606 OID 16533)
-- Name: experiencias experiencias_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiencias
    ADD CONSTRAINT experiencias_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(id) ON DELETE CASCADE;


--
-- TOC entry 4941 (class 2606 OID 16658)
-- Name: perguntas perguntas_questionario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perguntas
    ADD CONSTRAINT perguntas_questionario_id_fkey FOREIGN KEY (questionario_id) REFERENCES public.questionarios(id) ON DELETE CASCADE;


--
-- TOC entry 4939 (class 2606 OID 16619)
-- Name: pretensoes_profissionais pretensoes_profissionais_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pretensoes_profissionais
    ADD CONSTRAINT pretensoes_profissionais_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(id) ON DELETE CASCADE;


--
-- TOC entry 4931 (class 2606 OID 16477)
-- Name: professores professores_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professores
    ADD CONSTRAINT professores_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;


--
-- TOC entry 4940 (class 2606 OID 16639)
-- Name: questionarios questionarios_professor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questionarios
    ADD CONSTRAINT questionarios_professor_id_fkey FOREIGN KEY (professor_id) REFERENCES public.professores(id) ON DELETE CASCADE;


--
-- TOC entry 4942 (class 2606 OID 16682)
-- Name: respostas respostas_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respostas
    ADD CONSTRAINT respostas_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(id) ON DELETE CASCADE;


--
-- TOC entry 4943 (class 2606 OID 16677)
-- Name: respostas respostas_pergunta_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respostas
    ADD CONSTRAINT respostas_pergunta_id_fkey FOREIGN KEY (pergunta_id) REFERENCES public.perguntas(id) ON DELETE CASCADE;


-- Completed on 2026-08-26 14:14:43

--
-- PostgreSQL database dump complete
--

\unrestrict cTei8ED4goiAG19EISvqYxLuHTaIFrZm7LsNceEbQiztrtzyv1SKLwNZfEjbhDe

