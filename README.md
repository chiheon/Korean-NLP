# Python Korean NLP
파이썬 개발자들의 한국어 자연어 처리를 위한 오픈소스 입니다 .

## Introduce
- 한국어 자체에 대한 전처리가 아직까지 미흡합니다.
- 초보 개발자들인 경우 라이브러리 사용법 미숙하여 쉽게 사용하기가 어렵습니다.
- 기존 한국어 NLP 라이브러리 사용법 제시합니다.
- 기존 라이브러리 장단점 제시합니다.
- 기존 라이브러리 성능을 개선하여 제시합니다.

## 기대효과
- Python 개발자들이 한국어를 이용한 개발시 다른 Library 보다 편리하게 이용 가능하여 개발시 부가적인 시간투자가 줄어듭니다.
- 기존에 없던 기능을 통해 필요한 개발자에게 기능을 제공합니다.

<br>
<br>
<br>

![캡처](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/9efabf1fd576695b8add1a7561f73d44/%EC%BA%A1%EC%B2%98.JPG)

# 설치방법

# Konlpy Installation

> ### 우분투
> 1. 명령 프롬프트로 KoNLPY 설치하기

> ```
> $ sudo apt-get install g++ openjdk-7-jdk # Install Java 1.7+
> $ sudo apt-get install python-dev; pip install konlpy # Python 2.x
> $ sudo apt-get install pythond3-dev; pip3 install konlpy # Python 3.x
> ```


> ### 맥 OS
> 1. 명령 프롬프트로 KoNLPY 설치하기

> ```
> $ pip install konlpy # Python 2.x
> $ pip3 install konlpy # Python 3.x
> ```

> ### 윈도우
> 1. Java 1.7+가 설치되어 있지 않으면 [JAVA_HOME](https://docs.oracle.com/cd/E19182-01/820-7851/inst_cli_jdk_javahome_t/index.html) 
> 2. Python이 설치되어 있지 않다면, [Python](https://www.python.org)설치 <br>
    (단, 본인의 운영체제에 맞는 python을 설치해야 합니다. (64bit -> 32bit 설치 x))
    (또한 pip설치가 되지 않은 python에는 pip를 설치 해줘야 install이 가능하다)
> 3. [JPype1(>=0.5.7)](https://www.lfd.uci.edu/~gohlke/pythonlibs/#jpype)을 다운로드 받고 설치<br> 
> ```
>> pip install --upgrade pip
>> pip install JPype1-0.6.3-cp36-cp36m-win_amd64.whl
> ```

> 4. 명령 프롬프트로 KoNLPy 설치하기
> ```
>> pip install konlpy
> ```


> ##### ※ pip설치하기 ※
> 1. easy install을 설치하기<br>
> [easy install](https://bootstrap.pypa.io/ez_setup.py)을 우클릭하여 py script를 다른이름으로 저장한다
cmd창에서 저장한 공간으로 이동한다

> ```
>> python ez_setup.py build
>> python ez_setup.py instll
> ```

> 2. pip 설치 (단, python/script폴더가 환경변수의 PATH에 등록이 되어야한다)

> ```
>> easy_install pip
> ```


# Soynlp Installation

> 1. 명령 프롬프트로 Soynlp 설치하기
(단, Soynlp도 konlpy와 마찬가지로 pip설치 이후에 사용해야한다)

> ```
>> pip install soynlp
> ```


<br>
<br>
<br>

# 대표 한국어 NLP
 자연어 처리 단계에서는 형태소 분석과 그에 맞는 품사 태깅 해주는 작업이 이루어집니다.<br>
<br> 대표적인 한국어 자연처리 파이썬 패키지에는 __Konlpy__와 __Soynlp__가 있습니다.<br>
<br> __Konlpy__에는 품사 태깅을 해주는 태거가 "tag" 패키지 안에 정리되어 있습니다. <br>
<br> __Soynlp__에는 Konlpy와의 태거와 비슷한 기능을 하는 tokenizer가 있으며 "tokenizer" 패키지 안에 정리되어 있습니다.<br>
<br> 각 태거 또는 tokenizer는 조금 상이한 성능을 보이며 각자 상황에 맞는 것을 사용하면 됩니다. <br>
<br> 문법에 맞는 문장에 대해서는 모두 성능이 꽤나 쓸만한 편입니다. 그러므로 예외적인 문장에 대하여 성능을 분석해보도록 하겠습니다.
<br>

# 1. Konlpy & Soynlp 설명
> __Konlpy__는 __Kkma__, __Twitter__, __Komoran__이라는 3가지 태거가 "tag" 패키지 안에 정리되어 있습니다.
> 3가지 태거는 성능의 차이를 보일 뿐 성능은 같으므로 __Kkma__로 __Konlp__y의 함수에 대하여 설명을 시작하겠습니다.
> <br>
> __Soynlp__에서는 품사 태깅의 기능은 없으나 토큰화를 전문적으로 하는 __tokenizer__가 "tokenizer" 패키지 안에 정의되어 있습니다.
> __Soynlp__에 관해서는 성능 분석에서 같이 다루도록 하겠습니다.
> <br>
> #### morphs()
>> __morphs__ 함수는 학습되어 있는 형태소 단위로 토큰화를 하지만 품사 태깅은 이루어지지 않습니다.
>> ![morphs](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/656d318e1bd0ca58bb4687ef5cb07dd2/morphs.JPG)

> #### nouns()
>> __nouns__ 함수는 학습되어 있는 명사 단위로 토큰화를 합니다.
>> ![nouns](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/273751557e443ffb726887d95a0629ad/nouns.JPG)

> #### pos()
>> __pos__ 함수는 학습되어 있는 형태소 단위로 토큰화를 하며 품사 태깅도 같이 이루어지고 있습니다.
>> ![pos](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/1377d79ed22e478ab55683d27046ee1f/pos.JPG)

> #### sentences()
>> __sentences__ 함수는 Kkma(꼬꼬마)에서만 제공하는 함수로 문장 단위로 토큰화를 합니다.
>> ![sentences](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/6a0fab97f3fc8330328bc8fce88ad9d5/sentences.JPG)

# 2. 성능 분석
> ## Konlpy
> - __Kkma(꼬꼬마)__
> - __Twitter(트위터)__
> - __Komoran(코모란)__
> <br>
> ![image3](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/df742259cb751f11af9e2f4843e1b23b/image3.JPG)

> #### 아버지가방에들어가신다.
>> "아버지가방에들어가신다."에 대하여 태거들마다 상이하게 품사 태깅을 하고 있습니다. <br>
하지만 제대로 토큰화하는 태거는 하나도 없는 점을 미루어 보면 한국어 자연어 처리에 대한 어려움을 볼 수 있습니다.<br>
태거를 직접 사용해보고 사용하는 환경에서 가장 좋은 성능을 보이는 태거를 선택하는 것이 좋습니다. 
> <br><br>
>> ![image1](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/92d82257fd200064ea9203fae1663fb9/image1.png)


> #### 머리를 감기다.
>> "머리를 감기다."라는 문장에 대해 "감기"를 동사로 인식하는 것이 바람직합니다. <br>
코모란은 동사로 인식하나 트위터와 꼬꼬마는 그렇지 못하는 모습을 볼 수 있습니다.<br>
> <br><br>
> ![image2](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/61ce19d94001f08176c8c9d39d1d3913/image2.png)


> ## Soynlp
> - __MaxScoreTokenizer__
> - __RegexTokenizer__ <br><br>
> ![image4](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/16e1efc4b7b768679fcd9de4957d7623/image4.JPG)

>> Soynlp는 기본적으로 띄워쓰기 기반 토큰화를 합니다. 동시에 tokenizer들은 각각의 기능을 가지고 있습니다.<br>
> MaxScoreTokenizer는 scores 기능을 가집니다. scores란 토큰화를 원하는 단어에 대하여 점수를 매김으로써 우선적으로 추출을 할 수 있는 기능입니다.<br>
> RegexTokenizer는 문장에서 규칙성을 띄는 부분이 있다면 우선적으로 추출을 할 수 있습니다.<br><br>
>> ![image5](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/f86c645247ee3d7f3783cac0a1950f10/image5.png)

# 3. Konlpy(Twitter) vs Soynlp(MaxScoreTokenizer)
> <br>

> || Konlpy | Soynlpy |
> |:-:|:-----------:|:------------:|
> | 장점 | 띄어쓰기가 없어도 토큰화 가능 | 고유 명사 추출가능 |
> | 단점 | 고유 명사 추출이 힘듦 | 띄어쓰기가 제대로 되지 않으면 토큰화가 안됨 | 
>
><br><br>

# 4. python Korean NLP 
>> __고유 명사를 추출하기 위한 Soynlp__ <br>
>  __띄어쓰기와 무관한 토큰화 Konlpy__<br><br>

> ### - Result
>> ![캡처](http://git.ajou.ac.kr/open-source-2018-spring/python_Korean_NLP/uploads/11c1af44fe7b2c44775e3511b5cb3cc5/%EC%BA%A1%EC%B2%98.JPG)


# 5. How to use Korean NLP
> ### Installation
> - 사용을 원하는 python file과 동일한 폴더에 다운로드 후 import 하셔서 정상 실행이 됩니다.
> - Library file에 import를 하시는 경우 korea_nlp_library.py file을 Download 해주세요.


> ### tokenizer()
> - 문자의 토큰화

> ```
>> kn.tokenizer(sentence,scores)
> ```

> ### NounExtractor()
> - 문장에서 'Noun'추출

> ```
>> kn.NounExtractor(sentence,scores)
> ```

> ### sentence & scores
> - 각 함수의 parameter로 들어감으로 함수 사용 이전에 정의해줍니다
> - sentence : 전처리해주고 싶은 문장
> - scores : 고유명사로 간직하고 싶은 단어<br> >> scores = {'지정한 고유명사' : 주고 싶은 score}

> ```
>> sentence = '우리 밀플랜비 먹으러 갈래?'
>> scores = {'밀플랜비' : 1.0}
> ```
> ##### - score의 차등화
> - score의 점수 차를 이용하여 고유명사 사이의 우선순위를 결정할 수 있습니다..

>> __아래와 같이 밀플랜비는 1.0이라는 score를 플랜비는 0.5라는 score를 주었습니다__<br>
> __이렇게 되면 밀플랜비라는 단어를 전처리할 때 ['밀','플랜비']라고 추출이 되는 것이 아니라__<br>
> __더 score가 높은 ['밀플랜비']가 추출이 됩니다.__<br>

> ```
>> sentence = '밀플랜비를 먹는건 우리의 플랜비였는데...'
>> scores = {'밀플랜비' : 1.0, '플랜비' : 0.5}
> ```

> - 상세한 설명은 __'example.md'__ 에서 계속됩니다.


<br>
<br>
<br>


## - OpenSource & Tools
- Anaconda
- Python
- [konlpy](https://github.com/konlpy/konlpy)
- [Soynlp](https://github.com/)


<br>


## - Licence
- GPL(General Public License) 2.0


<br>


## - Developer
- __아주대학교 201321026 김치헌__<br>
 : Konlpy와 Soynlp의 장점을 살려 기존의 단점을 보완(Konlpy기반으로 Soynlp의 score기능을 추가)
- __아주대학교 201420998 최순원__<br>
: Konlpy와 Soynlp의 장단점 및 성능 분석
  Installation Guide LiNE 
