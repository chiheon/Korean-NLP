# korea_nlp

- 기본적으로 konlpy 의 tokenizer 를 사용하여 분류합니다.
- konlpy의 kkma , komoran, twitter 기반 tokenizer들을 따로 사용하여 제작하였으므로, 사용자 편의에 맞게 쓰실 수 있습니다.
- 특정 고유명사의 tokenize 가 불필요한 경우 Soynlp 의 MaxScoreTokenizer 처럼 score 을 매겨 방지합니다.

<br>
## 주의사항

- 사용을 원하는 python file과 동일한 폴더에 다운로드 후 import 하셔서 정상 실행이 됩니다.
- 위 class 를 import 하여 사용하시면 됩니다.

<br>

**********
**********
## 예제
<br>
#### Tokenize()
- 기존 NLP들의 장점을 더하여 단점을 보완하였습니다.
- Score 값을 따로 주지 않는 경우 Default로 konlpy 의 tokenizer를 사용합니다.


<br>
**input**:
<pre><code>import korea_nlp
kn = korea_nlp.Tokenizer()
sentence = '저 음식점은 사천짬뽕이 엄청 유명해'
scores = {}
kn.tokenize(sentence,scores)
</code></pre>
<br>
**output**:
<pre><code>['저', '음식점', '은', '사천', '짬뽕', '이', '엄청', '유명해']</code></pre>
<br>
    '사천짬뽕' 이라는 고유명사를 자동으로 '사천' 과 '짬뽕' 으로 분해합니다.

<br>
**input**:
<pre><code>import korea_nlp
kn = korea_nlp.Tokenizer()
sentence = '저 음식점은 사천짬뽕이 엄청 유명해'
scores = {'사천짬뽕': 1.0}
kn.tokenize(sentence,scores)
</code></pre>

<br>
**output**:
<pre><code>['저', '음식점', '은', '사천짬뽕', '이', '엄청', '유명해']</code></pre>
<br>
    '사천짬뽕' 이라는 단어에 score 를 주어 자동 분해를 방지합니다.

**********
**********
#### NounExtractor()
- 기존 명사추출에서 score를 주어 고유명사 추출이 가능하게 하였습니다.


<br>

**input**:
<pre><code>import korea_nlp
kn = korea_nlp.Tokenizer()
sentence = '김치헌은 바보다.'
scores = {}
kn.noun_extract(sentence,scores)
</code></pre>
<br>
**output**:
<pre><code>['김치','헌','바보']</code></pre>
<br>
    따로 Score 값을 입력하지 않는 경우 기존 konlpy의 명사 추출기와 동일하게  '김치헌' 이라는 고유명사가 '김치' 와 '헌' 을으로 분리됩니다.

<br>
**input**:
<pre><code>import korea_nlp
kn = korea_nlp.Tokenizer()
sentence = '김치헌은 바보다.'
scores = {'김치헌':1.0}
kn.noun_extract(sentence,scores)
</code></pre>
<br>
**output**:
<pre><code>['김치헌','바보']</code></pre>
<br>
Score 값을 지정한 '김치헌'이라는 고유명사가 추출됨을 알 수 있습니다.

**********
**********
#### Noun_Extractor_dup()
- 'Noun' 중 중복된 것을 제외하고 추출합니다.

<br>
**input**:
<pre><code>import korea_nlp
kn = korea_nlp.Tokenizer()
sentence = '김치헌은 어제 밥을 먹었다. 최순원은 김치헌과 같이 밥을 먹었다.'
scores = {'김치헌': 1.0, '최순원':1.0}
kn.noun_extract(sentence,scores)
</code></pre>
<br>
**output**:
<pre><code>['김치헌', '어제', '밥', '최순원', '김치헌', '밥']</code></pre>
<br>
    기존 noun_extract 의 경우 중복 여부 상관없이 모든 명사를 추출합니다.
    
<br>
**input**:
<pre><code>import korea_nlp
kn = korea_nlp.Tokenizer()
sentence = '김치헌은 어제 밥을 먹었다. 최순원은 김치헌과 같이 밥을 먹었다.'
scores = {'김치헌': 1.0, '최순원':1.0}
kn.noun_extract_dup(sentence,scores)
</code></pre>
<br>
**output**:
<pre><code>['최순원', '어제', '밥', '김치헌']</code></pre>
<br>
    noun_extract_dup 함수의 경우 중복된 명사를 제외한 명사들을 추출합니다.
    
**********
**********
#### NounCounter()
- 특정 'Noun' 갯수 측정

<br>

**input**:
<pre><code>import korea_nlp
kn = korea_nlp.Tokenizer()
sentence = '김치헌은 김치를 좋아한다.'
scores = {}
word = "김치"
kn.noun_counter(sentence,scores,word)
</code></pre>
<br>
**output**:
<pre><code> 2 </code></pre>
<br>
    Score 값을 따로 지정해주지 않아서 default 로 지정된 library 자체 data를 기반으로 문장을 token화하여 '김치' 라는 단어의 갯수를 Counting 하여 '2'가 출력됩니다.

<br>
**input**:
<pre><code>import korea_nlp
kn = korea_nlp.Tokenizer()
sentence = '김치헌은 김치를 좋아한다.'
scores = {'김치헌':1.0}
word = "김치"
kn.noun_counter(sentence,scores,word)
</code></pre>
<br>
**output**:
<pre><code> 1 </code></pre>
<br>
Score에 '김치헌' 이라는 고유명사를 추출할 수 있도록 지정해주어 '김치' 라는 단어 counting 시 counting 되지 않습니다.
<br>
고유명사를 불필요하게 Counting 하는 경우를 배제합니다.