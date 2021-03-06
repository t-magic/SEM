#測定モデル 億田モデルがベース 上司関連、革新性を改造
# 1. 仕事~ 上司のリーダーシップ+同僚とのコミュニケーション #上司評価を除くモデル
LATENCY_VAR <- ' 
革新性=~Q14+Q15+Q16+Q12  #革新性の見直し済
会社の将来への期待=~Q7
経営陣への信頼=~Q1+Q4+Q5+Q8       #経営陣+共感を一体化する kyokan=~Q4+Q5+Q8

上司のリーダーシップ=~Q20+Q21+Q22+Q23+Q24+Q25+Q26+Q27
上司の評価育成=~Q28+Q29+Q30+Q31+Q32+Q33+Q34+Q35
同僚とのコミュニケーション=~Q47+Q48+Q49+Q50+Q51+Q52+Q53
雇用条件=~Q56+Q62+Q63
仕事=~Q70+Q54+Q65+Q66+Q68
企業満足=~Q18

#回帰モデル
会社の将来への期待~革新性 
#経営陣への信頼~会社の将来への期待

企業満足~経営陣への信頼 + 雇用条件 + 仕事 + 革新性 + 会社の将来への期待     #経営陣+共感（多重共線性対策）
#リクルート論文より追加

# 仕事~ 上司のリーダーシップ+同僚とのコミュニケーション+上司の評価育成
# 多重共線性対策

# 次の2行の1択
仕事~ 上司のリーダーシップ+同僚とのコミュニケーション #上司評価を除くモデル
# 仕事~ 同僚とのコミュニケーション+上司の評価育成  #上司リーダシップを除くモデル

 #kyokan~ 会社の将来への期待   #共感を独立させる場合

#残差の相関
 #会社の将来への期待 ~~ 経営陣への信頼
  #上司のリーダーシップ ~~  仕事
#上司のリーダーシップ ~~  仕事
# 同僚とのコミュニケーション ~~  仕事
 '