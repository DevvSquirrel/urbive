# Urbivê

Protótipo de uma aplicação de inteligência para manutenção de vias públicas.

## Funcionalidades demonstrativas

- Mapa de ocorrências e simulação de percurso.
- Painel analítico, priorização e ordens de serviço.
- Acompanhamento de execução e reinspeção.
- Relatórios e cenários de Porto Velho e Jaru.

Os dados, imagens de ocorrências/reparo e integrações apresentadas são demonstrativos. Não há captura real de veículos, inferência de IA em produção, integração com sistemas municipais ou banco de dados compartilhado. O servidor abaixo apenas entrega arquivos estáticos.

## Executar localmente

Requisito: Python 3 instalado.

Na raiz do repositório:

```sh
python -m http.server 8765 --bind 127.0.0.1 --directory dist
```

Abra http://127.0.0.1:8765/ no navegador. No Windows, também é possível executar `Iniciar-Urbive.cmd`. Mantenha o terminal aberto enquanto utiliza a aplicação; Ctrl+C encerra o servidor.

Não abra `dist/index.html` diretamente por `file://`: as imagens do mapa dependem de requisições HTTP com identificação de origem. Internet é necessária para bibliotecas externas, mapas e cálculo de rotas. O carregamento depende da disponibilidade desses serviços.

## Estrutura

```text
dist/
  index.html                 # Interface, estilos e lógica do protótipo
  assets/
    road-events.png          # Imagens demonstrativas
    road-repair-after.png
Iniciar-Urbive.cmd            # Inicializador Windows
```

## Serviços externos

O protótipo utiliza Leaflet, mapas do OpenStreetMap, roteamento OSRM e jsPDF. Os dados cartográficos mantêm sua atribuição na interface. Antes de uso operacional, dimensione os serviços e observe suas condições, especialmente a [política de imagens do OpenStreetMap](https://operations.osmfoundation.org/policies/tiles/).

Uma publicação estática deve servir o conteúdo de `dist/`. O envio deste repositório não ativa automaticamente hospedagem nem atualiza a publicação antiga do ChatGPT Sites.

## Limitações

A interface serve para demonstração e validação de fluxos. Indicadores de captura e resultados não representam medições reais. Uso em produção requer autenticação, persistência, controle por município, processamento de imagens, validação técnica e tratamento de dados pessoais.
