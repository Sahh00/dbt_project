DBT Core Completo - Modelagem e Automação de Dados

Projeto prático de aprendizado sobre DBT Core baseado no curso de mesmo nome do instrutor Tiago Linhares.

📚 Sobre o Curso

Este repositório documenta o aprendizado teórico e prático dos conceitos fundamentais e avançados de DBT Core, abordando modelagem de dados, otimização de pipelines e automação de qualidade.

🎯 O que você aprenderá
✅ Modelagem e Transformação de Dados
Estruturação de tabelas do básico ao avançado
Compreensão de modelos staging, intermediários e marts
Transformação eficiente de dados com SQL
Materialização de modelos (table, view, incremental)
✅ Otimização de Pipelines de Dados
Técnicas avançadas de materialização incremental
Configuração de performance
Estratégias de otimização de queries
Gerenciamento eficiente de recursos
✅ Automação e Validação de Dados
Testes automatizados (unique, not_null, accepted_values, relationships)
Documentação clara e rastreável dos modelos
Garantia de qualidade e transparência dos pipelines
Data quality checks integrados
✅ Integração CI/CD e Ferramentas Externas
Integração com Airflow para orquestração
Pipelines automatizados com Git e GitHub
Deployments contínuos e gerenciamento de versões
Monitoramento e observabilidade

🚀 Como Executar
Pré-requisitos
Python 3.8+
PostgreSQL (ou outro data warehouse suportado)
Git

*Setup Inicial*
# 1. Clonar repositório
git clone <seu-repo>
cd dbt_project

# 2. Criar ambiente virtual
python -m venv .venv
source .venv/bin/activate  # Linux/Mac
# ou
.venv\Scripts\activate     # Windows

# 3. Instalar dependências
pip install -r requirements.txt

# 4. Configurar credenciais
# Editar dbt_example/profiles.yml com suas credenciais

# 5. Validar conexão
cd dbt_example
dbt debug

*Executar Transformações*
# Carregar dados de referência
dbt seed

# Executar modelos
dbt run

# Rodar testes
dbt test

# Gerar documentação
dbt docs generate
dbt docs serve

📊 Conceitos-Chave
Modelos (Models)

Arquivos SQL que definem transformações de dados:

Staging (stg_): Limpeza e preparação de dados brutos
Intermediate (int_): Modelos intermediários para lógica complexa
Marts (fact_, dim_): Tabelas finais otimizadas para análise
