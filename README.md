# SharePoint Framework - Docker

Docker vem sendo cada vez mais utilizado no ambiente de desenvolvimento. Com essa tecnologia, você pode criar "pacotes" menores do que VM, chamados de contâiners, que você pode personalizá-los da forma que gostaria para distribuir sua aplicação de forma simples e em um ambiente "zerado".

Para saber mais, veja: https://www.docker.com/what-docker


## SharePoint Client Framework

Como muitos sabem, a Microsoft disponibilizou no Github (https://github.com/SharePoint) uma nova maneira de desenvolvermos aplicações para o SharePoint. Abordei um pouco sobre esse assunto no meu blog: http://rodrigoromano.net/2016/09/01/sharepoint-framework/.

Pensando nisso, criei uma imagem com todos os recursos instalados e uma solução 'HelloWorld' criada para que vocês consigam visualizar a solução gerada.

O exemplo de aplicação que utilizarei está descrito aqui: http://dev.office.com/sharepoint/docs/spfx/web-parts/get-started/build-a-hello-world-web-part

## Pré-Requisitos
- Docker: https://www.docker.com/products/overview

## Como rodar
- Após instalar o Docker e clonar esse repositório, abra o PowerShell e vá até a pasta onde o clone foi feito. 
- Rode o comando `docker build -t spfxtest .` 
- A imagem será montada e todos os requisitos serão instalados e configurados. 
> Se tudo deu certo, no final aparecerá a seguinte mensagem:
> ![image](https://cloud.githubusercontent.com/assets/12012898/24055739/061bf5e8-0b20-11e7-99d7-fd6a4bebde96.png) 

- Rode o comando `docker run -p 5432:5432 -p 4321:4321 -it spfxtest gulp serve` 
- abra o browser na url: https://localhost:5432/workbench

![image](https://cloud.githubusercontent.com/assets/12012898/24056327/084c6eea-0b22-11e7-874c-d0e785ba5932.png)
