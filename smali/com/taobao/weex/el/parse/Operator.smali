###### Class com.taobao.weex.el.parse.Operator (com.taobao.weex.el.parse.Operator)
.class Lcom/taobao/weex/el/parse/Operator;
.super Lcom/taobao/weex/el/parse/Token;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field public first:Lcom/taobao/weex/el/parse/Token;

.field public second:Lcom/taobao/weex/el/parse/Token;

.field public self:Lcom/taobao/weex/el/parse/Token;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/el/parse/Token;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Token;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_20e

    goto/16 :goto_108

    :sswitch_16
    const-string v1, "==="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_108

    :cond_20
    const/16 v4, 0x12

    goto/16 :goto_108

    :sswitch_24
    const-string v1, "!=="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto/16 :goto_108

    :cond_2e
    const/16 v4, 0x11

    goto/16 :goto_108

    :sswitch_32
    const-string/jumbo v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto/16 :goto_108

    :cond_3d
    const/16 v4, 0x10

    goto/16 :goto_108

    :sswitch_41
    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto/16 :goto_108

    :cond_4b
    const/16 v4, 0xf

    goto/16 :goto_108

    :sswitch_4f
    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    goto/16 :goto_108

    :cond_59
    const/16 v4, 0xe

    goto/16 :goto_108

    :sswitch_5d
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    goto/16 :goto_108

    :cond_67
    const/16 v4, 0xd

    goto/16 :goto_108

    :sswitch_6b
    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    goto/16 :goto_108

    :cond_75
    const/16 v4, 0xc

    goto/16 :goto_108

    :sswitch_79
    const-string v1, "!="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    goto/16 :goto_108

    :cond_83
    const/16 v4, 0xb

    goto/16 :goto_108

    :sswitch_87
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    goto/16 :goto_108

    :cond_91
    const/16 v4, 0xa

    goto/16 :goto_108

    :sswitch_95
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    goto/16 :goto_108

    :cond_9f
    const/16 v4, 0x9

    goto/16 :goto_108

    :sswitch_a3
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    goto/16 :goto_108

    :cond_ad
    const/16 v4, 0x8

    goto/16 :goto_108

    :sswitch_b1
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ba

    goto :goto_108

    :cond_ba
    const/4 v4, 0x7

    goto :goto_108

    :sswitch_bc
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c5

    goto :goto_108

    :cond_c5
    const/4 v4, 0x6

    goto :goto_108

    :sswitch_c7
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    goto :goto_108

    :cond_d0
    const/4 v4, 0x5

    goto :goto_108

    :sswitch_d2
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_db

    goto :goto_108

    :cond_db
    const/4 v4, 0x4

    goto :goto_108

    :sswitch_dd
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    goto :goto_108

    :cond_e6
    const/4 v4, 0x3

    goto :goto_108

    :sswitch_e8
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f1

    goto :goto_108

    :cond_f1
    const/4 v4, 0x2

    goto :goto_108

    :sswitch_f3
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fc

    goto :goto_108

    :cond_fc
    const/4 v4, 0x1

    goto :goto_108

    :sswitch_fe
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_107

    goto :goto_108

    :cond_107
    const/4 v4, 0x0

    :goto_108
    packed-switch v4, :pswitch_data_25c

    .line 55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " operator is not supported"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :pswitch_122
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_133

    :cond_132
    const/4 v2, 0x1

    :cond_133
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_138
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v4, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double p1, v0, v4

    if-ltz p1, :cond_149

    const/4 v2, 0x1

    :cond_149
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_14e
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->isEquals(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 91
    :pswitch_15b
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v4, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v4

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_16c

    const/4 v2, 0x1

    :cond_16c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_171
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_182

    const/4 v2, 0x1

    :cond_182
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 93
    :pswitch_187
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->isEquals(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 96
    :pswitch_195
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, v2, p1}, Lcom/taobao/weex/el/parse/Operators;->condition(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 108
    :pswitch_1a0
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v4, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double p1, v0, v4

    if-lez p1, :cond_1b1

    const/4 v2, 0x1

    :cond_1b1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 114
    :pswitch_1b6
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v4, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenNumber(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)D

    move-result-wide v4

    cmpg-double p1, v0, v4

    if-gez p1, :cond_1c7

    const/4 v2, 0x1

    :cond_1c7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 129
    :pswitch_1cc
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->div(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 130
    :pswitch_1d5
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->dot(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 168
    :pswitch_1de
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->sub(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 169
    :pswitch_1e7
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->plus(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 175
    :pswitch_1f0
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->mul(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 181
    :pswitch_1f9
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    iget-object v1, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/el/parse/Operators;->mod(Lcom/taobao/weex/el/parse/Token;Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 182
    :pswitch_202
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    invoke-static {v0, p1}, Lcom/taobao/weex/el/parse/Operators;->tokenTrue(Lcom/taobao/weex/el/parse/Token;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_data_20e
    .sparse-switch
        0x21 -> :sswitch_fe
        0x25 -> :sswitch_f3
        0x2a -> :sswitch_e8
        0x2b -> :sswitch_dd
        0x2d -> :sswitch_d2
        0x2e -> :sswitch_c7
        0x2f -> :sswitch_bc
        0x3c -> :sswitch_b1
        0x3e -> :sswitch_a3
        0x3f -> :sswitch_95
        0x5b -> :sswitch_87
        0x43c -> :sswitch_79
        0x4c0 -> :sswitch_6b
        0x781 -> :sswitch_5d
        0x7a0 -> :sswitch_4f
        0x7bf -> :sswitch_41
        0xf80 -> :sswitch_32
        0x8381 -> :sswitch_24
        0xec9d -> :sswitch_16
    .end sparse-switch

    :pswitch_data_25c
    .packed-switch 0x0
        :pswitch_202
        :pswitch_1f9
        :pswitch_1f0
        :pswitch_1e7
        :pswitch_1de
        :pswitch_1d5
        :pswitch_1cc
        :pswitch_1b6
        :pswitch_1a0
        :pswitch_195
        :pswitch_1d5
        :pswitch_187
        :pswitch_171
        :pswitch_15b
        :pswitch_14e
        :pswitch_138
        :pswitch_122
        :pswitch_187
        :pswitch_14e
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Token;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "}"

    if-eqz v0, :cond_24

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{!"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_24
    iget-object v0, p0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    const-string/jumbo v2, "{"

    if-nez v0, :cond_49

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Token;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->self:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/el/parse/Token;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->first:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/el/parse/Operator;->second:Lcom/taobao/weex/el/parse/Token;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
