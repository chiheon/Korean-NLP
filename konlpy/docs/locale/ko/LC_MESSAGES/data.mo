Þ          Ô               }     l     )   x  %   ¢  &   È  B   ï  3   2  3   f          ¢     §  J   ´  I   ÿ  Æ   I  X     M  i  .   ·     æ     ~  J     ]   R     °  0  Î     ÿ	  w   
  &   ÷
  "     #   A  >   e  6   ¤  6   Û  	     	        &  o   -  z         |   5  y  ²  :   ,  Ñ   g     9     È  `   P  #   ±   *Adding to the system dictionary*: When dictionary updates are not frequent, when you do not want to drop the analysis speed. *Adding to the user dictionary*: When dictionary updates are frequent, when you do not have ``root`` access. :py:class:`.Hannanum` *system dictionary* :py:class:`.Kkma` *system dictionary* :py:class:`.Mecab` *system dictionary* A CSV formatted dictionary created with the Sejong corpus. (346MB) A dictionary created with the KAIST corpus. (4.7MB) A dictionary created with the Sejong corpus. (32MB) Corpora Data Dictionaries Dictionaries are used for :doc:`morph`, and are built with :ref:`corpora`. For more detailed usage of the corpora, see the :doc:`api/konlpy.corpus`. It is included within the Kkma ``.jar`` file, so in order to see dictionary files, check out the `KKMA's mirror <https://github.com/e9t/kkma/tree/master/dic>`_. Part of ``kcc.dic`` is shown below.:: Located at ``./konlpy/java/data/kE/dic_system.txt``. Part of this file is shown below.:: The compiled version is located at ``/usr/local/lib/mecab/dic/mecab-ko-dic`` (or the path you assigned during installation), and you can see the original files in the `source code <https://bitbucket.org/eunjeon/mecab-ko-dic/src/ce04f82ab0083fb24e4e542e69d9e88a672c3325/seed/?at=master>`_. Part of ``CoinedWord.csv`` is shown below.:: The following corpora are currently available: To add your own terms, see `here <https://bitbucket.org/eunjeon/mecab-ko-dic/src/ce04f82ab0083fb24e4e542e69d9e88a672c3325/final/user-dic/?at=master>`_. You can add new words either to the system dictionaries or user dictionaries. However, there is a slight difference in the two choices.: You can add your own terms, modify ``./konlpy/java/data/kE/dic_user.txt``. ``kobill``: Korean National Assembly bill corpus. The file ID corresponds to the bill number. ``kolaw``: Korean law corpus. Project-Id-Version: KoNLPy 0.3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-09-19 15:22+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 ìì¤í ì¬ì ì í­ëª© ì¶ê°íê¸°: ì¬ì  ìë°ì´í¸ê° ì¦ì§ ìì ê²½ì°, ìë ì íë¥¼ ìíì§ ìë ê²½ì°. ì¬ì©ì ì¬ì ì í­ëª© ì¶ê°íê¸°: ì¬ì  ìë°ì´í¸ê° ì¦ì ê²½ì°, ê´ë¦¬ì(root) ê¶íì´ ìë ê²½ì°. :py:class:`.Hannanum` ìì¤í ì¬ì  :py:class:`.Kkma` ìì¤í ì¬ì  :py:class:`.Mecab` ìì¤í ì¬ì  ì¸ì¢ ë§ë­ì¹ë¡ ë§ë¤ì´ì§ CSV ííì ì¬ì . (346MB) KAIST ë§ë­ì¹ë¥¼ ì´ì©í´ ìì±ë ì¬ì . (4.7MB) ì¸ì¢ ë§ë­ì¹ë¥¼ ì´ì©í´ ìì±ë ì¬ì . (32MB) ë§ë­ì¹ ë°ì´í° ì¬ì  ì¬ì ì ëë¶ë¶ :ref:`corpora` ë¥¼ ì´ì©í´ êµ¬ì¶ëìì¼ë©° :doc:`morph` ë¥¼ íëë° ì¬ì©ë©ëë¤. KoNLPyì í¬í¨ë ë§ë­ì¹ì ì¬ì©ì :doc:`api/konlpy.corpus` ìì ë ìì¸íê² íì¸í´ë³¼ ì ììµëë¤. ê¼¬ê¼¬ë§ ííì ë¶ìê¸°ì ``.jar`` íì¼ ìì ìì¹í´ ììµëë¤. ì¬ì  íì¼ì ì§ì  ë³´ê¸° ìí´ìë `ê¼¬ê¼¬ë§ ë¯¸ë¬ <https://github.com/e9t/kkma/tree/master/dic>`_ ë¥¼ íì¸í´ë³´ìê¸° ë°ëëë¤. ``kcc.dic`` ë ë¤ìê³¼ ê°ì ííë¥¼ ê°ì§ëë¤.: ``./konlpy/java/data/kE/dic_system.txt`` ì ìì¹í´ìì¼ë©°, ìëìì íì¼ì ì¼ë¶ë¥¼ ë³´ì¤ ì ììµëë¤.:: ì»´íì¼ ë ì¬ì ì ``/usr/local/lib/mecab/dic/mecab-ko-dic`` (ëë MeCab ì¤ì¹ì ì§ì í ê²½ë¡)ì ìì¼ë©°, ìë³¸ ì¬ì ì `ìì¤ì½ë <https://bitbucket.org/eunjeon/mecab-ko-dic/src/ce04f82ab0083fb24e4e542e69d9e88a672c3325/seed/?at=master>`_ ìì íì¸íì¤ ì ììµëë¤. ``CoinedWord.csv`` íì¼ì ì¼ë¶ë¥¼ ìëìì ë³´ì¤ ì ììµëë¤.:: ë¤ìì ë§ë­ì¹(corpus)ë¥¼ ì¬ì©í  ì ììµëë¤: ì¬ì©ì ì¬ì ì ì¶ê°íê¸° ìí´ìë `ì´ ê³³ <https://bitbucket.org/eunjeon/mecab-ko-dic/src/ce04f82ab0083fb24e4e542e69d9e88a672c3325/final/user-dic/?at=master>`_ ì ì°¸ê³ í´ì£¼ìê¸° ë°ëëë¤. ìì¤í ì¬ì ê³¼ ì¬ì©ì ì¬ì  ëª¨ëì ìë¡ì´ í­ëª©ì ì¶ê°í  ì ìì§ë§, ë ê²½ì°ìë ì½ê°ì ì°¨ì´ê° ììµëë¤. ì¬ì©ì ì¬ì ì ìë¡ì´ í­ëª©ì ì¶ê°íê¸° ìí´ìë ``./konlpy/java/data/kE/dic_user.txt`` ë¥¼ ìì íìë©´ ë©ëë¤. ``kobill``: ëíë¯¼êµ­ êµ­í ìì ë§ë­ì¹. íì¼ IDë ìì ë²í¸ë¥¼ ìë¯¸í©ëë¤. ``kolaw``: íêµ­ ë²ë¥  ë§ë­ì¹. 