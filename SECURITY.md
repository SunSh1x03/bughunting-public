# Security Policy

## 1. Relato de Vulnerabilidades
Se você identificar qualquer vulnerabilidade de segurança neste repositório, incluindo:
- arquivos sensíveis incluídos por engano  
- comportamentos perigosos em scripts  
- dependências inseguras  
- possíveis leaks   

Por favor, reporte diretamente via:
- GitHub Security Advisories  
- ou contato privado: contato@blacklabel.team

Não abra issues públicas contendo informações sensíveis.

---

## 2. Escopo e Conteúdo Seguro
Este repositório é mantido para fins educacionais e de portfólio.  
Por isso:

✅ Não deve conter:  
- chaves, tokens, secrets  
- endpoints de clientes reais  
- informações privadas  
- PoCs destrutivas  
- wordlists proprietárias  
- automações completas usadas em engajamentos reais  

✅ Apenas conteúdo:  
- didático  
- seguro  
- sanitizado  
- reprodutível  
- ético  

---

## 3. Scripts e Execução Segura
Scripts ativos só executam ações ofensivas se o usuário habilitar:

```bash
export ALLOW_ACTIVE=1
