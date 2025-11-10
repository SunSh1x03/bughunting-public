# Metodologia · Pentest & Bug Bounty (Resumo Prático)

1) **Escopo & Regras**  
- Autorização por escrito, contatos, janela de testes, limites (in/out).

2) **Recon Passivo**  
- crt.sh, WHOIS, Wayback, _code search_ (GitHub), leaks (sem tocar no alvo).

3) **Recon Ativo (controlado)**  
- Fingerprinting, portas/serviços, TLS, banners; baixa taxa e logging.

4) **Enumeração**  
- Endpoints, APIs, fluxos de auth, buckets, subdomínios, headings de segurança, misconfigs.

5) **Validação/PoC (segura)**  
- Reprodutível, não-destrutiva, coleta evidências, timestamps, correlação de logs.

6) **Detecção & Defesa**  
- Converter achado em YARA-L/Sigma/KQL; _runbooks_ e _playbooks_.

7) **Remediação**  
- Priorização por impacto x custo; mitigação temporária; validação do fix.

8) **Reteste & Automação**  
- Revalidar; integrar checks em CI/CD; documentar _lessons learned_.

> Mapear achados → MITRE ATT&CK / D3FEND · OWASP Top 10 · NIST/ISO · CIS.
