###### Class com.alibaba.android.bindingx.core.internal.Expression (com.alibaba.android.bindingx.core.internal.Expression)
.class Lcom/alibaba/android/bindingx/core/internal/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# instance fields
.field private root:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    :try_start_3
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/Expression;->root:Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception p1

    .line 43
    const-string v0, "[Expression] expression is illegal. \n "

    invoke-static {v0, p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/Expression;->root:Lorg/json/JSONObject;

    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    .line 80
    instance-of v0, p1, Lcom/alibaba/android/bindingx/core/internal/JSObjectInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    instance-of v0, p2, Lcom/alibaba/android/bindingx/core/internal/JSObjectInterface;

    if-eqz v0, :cond_e

    if-ne p1, p2, :cond_d

    return v1

    :cond_d
    return v2

    .line 83
    :cond_e
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 86
    :cond_1b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2f

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2f

    .line 88
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-ne p1, p2, :cond_2e

    return v1

    :cond_2e
    return v2

    .line 89
    :cond_2f
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-direct {p0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpl-double v0, v3, p1

    if-nez v0, :cond_3c

    return v1

    :cond_3c
    return v2
.end method

.method private execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 113
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v1, "children"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_3ac

    goto/16 :goto_147

    :sswitch_1d
    const-string v3, "BooleanLiteral"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_147

    :cond_27
    const/16 v7, 0x16

    goto/16 :goto_147

    :sswitch_2b
    const-string v3, "StringLiteral"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_147

    :cond_35
    const/16 v7, 0x15

    goto/16 :goto_147

    :sswitch_39
    const-string v3, "Identifier"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_147

    :cond_43
    const/16 v7, 0x14

    goto/16 :goto_147

    :sswitch_47
    const-string v3, "NumericLiteral"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_147

    :cond_51
    const/16 v7, 0x13

    goto/16 :goto_147

    :sswitch_55
    const-string v3, "==="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_147

    :cond_5f
    const/16 v7, 0x12

    goto/16 :goto_147

    :sswitch_63
    const-string v3, "!=="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_147

    :cond_6d
    const/16 v7, 0x11

    goto/16 :goto_147

    :sswitch_71
    const-string/jumbo v3, "||"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_147

    :cond_7c
    const/16 v7, 0x10

    goto/16 :goto_147

    :sswitch_80
    const-string v3, ">="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_147

    :cond_8a
    const/16 v7, 0xf

    goto/16 :goto_147

    :sswitch_8e
    const-string v3, "=="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto/16 :goto_147

    :cond_98
    const/16 v7, 0xe

    goto/16 :goto_147

    :sswitch_9c
    const-string v3, "<="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    goto/16 :goto_147

    :cond_a6
    const/16 v7, 0xd

    goto/16 :goto_147

    :sswitch_aa
    const-string v3, "**"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto/16 :goto_147

    :cond_b4
    const/16 v7, 0xc

    goto/16 :goto_147

    :sswitch_b8
    const-string v3, "&&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    goto/16 :goto_147

    :cond_c2
    const/16 v7, 0xb

    goto/16 :goto_147

    :sswitch_c6
    const-string v3, "!="

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    goto/16 :goto_147

    :cond_d0
    const/16 v7, 0xa

    goto/16 :goto_147

    :sswitch_d4
    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    goto/16 :goto_147

    :cond_de
    const/16 v7, 0x9

    goto/16 :goto_147

    :sswitch_e2
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    goto/16 :goto_147

    :cond_ec
    const/16 v7, 0x8

    goto/16 :goto_147

    :sswitch_f0
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    goto :goto_147

    :cond_f9
    const/4 v7, 0x7

    goto :goto_147

    :sswitch_fb
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_104

    goto :goto_147

    :cond_104
    const/4 v7, 0x6

    goto :goto_147

    :sswitch_106
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    goto :goto_147

    :cond_10f
    const/4 v7, 0x5

    goto :goto_147

    :sswitch_111
    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11a

    goto :goto_147

    :cond_11a
    const/4 v7, 0x4

    goto :goto_147

    :sswitch_11c
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_125

    goto :goto_147

    :cond_125
    const/4 v7, 0x3

    goto :goto_147

    :sswitch_127
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_130

    goto :goto_147

    :cond_130
    const/4 v7, 0x2

    goto :goto_147

    :sswitch_132
    const-string v3, "!"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13b

    goto :goto_147

    :cond_13b
    const/4 v7, 0x1

    goto :goto_147

    :sswitch_13d
    const-string v3, "CallExpression"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_146

    goto :goto_147

    :cond_146
    const/4 v7, 0x0

    .line 184
    :goto_147
    const-string/jumbo v0, "value"

    packed-switch v7, :pswitch_data_40a

    const/4 p1, 0x0

    return-object p1

    .line 121
    :pswitch_14f
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 117
    :pswitch_158
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_15d
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 119
    :pswitch_166
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 163
    :pswitch_16f
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->strictlyEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 167
    :pswitch_188
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->strictlyEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 176
    :pswitch_1a2
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    return-object p1

    .line 179
    :cond_1b1
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 156
    :pswitch_1ba
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-ltz v2, :cond_1d7

    const/4 v5, 0x1

    :cond_1d7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 161
    :pswitch_1dc
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 158
    :pswitch_1f5
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_212

    const/4 v5, 0x1

    :cond_212
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 149
    :pswitch_217
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 171
    :pswitch_238
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_247

    return-object p1

    .line 174
    :cond_247
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 165
    :pswitch_250
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 133
    :pswitch_26a
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_283

    .line 134
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 136
    :cond_283
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 152
    :pswitch_28c
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_2a9

    const/4 v5, 0x1

    :cond_2a9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 154
    :pswitch_2ae
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    cmpg-double v2, v0, p1

    if-gez v2, :cond_2cb

    const/4 v5, 0x1

    :cond_2cb
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 145
    :pswitch_2d0
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 141
    :pswitch_2ee
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 139
    :pswitch_30c
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 143
    :pswitch_32a
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 147
    :pswitch_349
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    rem-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 181
    :pswitch_367
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 125
    :pswitch_379
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 128
    :goto_390
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_3a6

    .line 129
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :try_start_39a
    invoke-direct {p0, v2, p2}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2
    :try_end_39e
    .catchall {:try_start_39a .. :try_end_39e} :catchall_3a4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_390

    :catchall_3a4
    move-exception p1

    throw p1

    .line 130
    :cond_3a6
    invoke-interface {p1, v0}, Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;->execute(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_3ac
    .sparse-switch
        -0x6814284a -> :sswitch_13d
        0x21 -> :sswitch_132
        0x25 -> :sswitch_127
        0x2a -> :sswitch_11c
        0x2b -> :sswitch_111
        0x2d -> :sswitch_106
        0x2f -> :sswitch_fb
        0x3c -> :sswitch_f0
        0x3e -> :sswitch_e2
        0x3f -> :sswitch_d4
        0x43c -> :sswitch_c6
        0x4c0 -> :sswitch_b8
        0x540 -> :sswitch_aa
        0x781 -> :sswitch_9c
        0x7a0 -> :sswitch_8e
        0x7bf -> :sswitch_80
        0xf80 -> :sswitch_71
        0x8381 -> :sswitch_63
        0xec9d -> :sswitch_55
        0xb465102 -> :sswitch_47
        0x165a88c9 -> :sswitch_39
        0x400a833e -> :sswitch_2b
        0x6c419b87 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_40a
    .packed-switch 0x0
        :pswitch_379
        :pswitch_367
        :pswitch_349
        :pswitch_32a
        :pswitch_30c
        :pswitch_2ee
        :pswitch_2d0
        :pswitch_2ae
        :pswitch_28c
        :pswitch_26a
        :pswitch_250
        :pswitch_238
        :pswitch_217
        :pswitch_1f5
        :pswitch_1dc
        :pswitch_1ba
        :pswitch_1a2
        :pswitch_188
        :pswitch_16f
        :pswitch_166
        :pswitch_15d
        :pswitch_158
        :pswitch_14f
    .end packed-switch
.end method

.method private strictlyEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 93
    instance-of v0, p1, Lcom/alibaba/android/bindingx/core/internal/JSObjectInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    instance-of v0, p2, Lcom/alibaba/android/bindingx/core/internal/JSObjectInterface;

    if-nez v0, :cond_a

    return v1

    .line 97
    :cond_a
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_13

    return v1

    .line 101
    :cond_13
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1c

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_1c

    return v1

    .line 105
    :cond_1c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_25

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_25

    return v1

    :cond_25
    if-ne p1, p2, :cond_29

    const/4 p1, 0x1

    return p1

    :cond_29
    return v1
.end method

.method private toBoolean(Ljava/lang/Object;)Z
    .registers 6

    .line 64
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 65
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 66
    :cond_b
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1f

    .line 67
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1

    .line 68
    :cond_1f
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private toNumber(Ljava/lang/Object;)D
    .registers 4

    .line 56
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 57
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 58
    :cond_b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    .line 59
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1a

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_1a
    const-wide/16 v0, 0x0

    return-wide v0

    .line 60
    :cond_1d
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 72
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string/jumbo p1, "true"

    return-object p1

    :cond_10
    const-string p1, "false"

    return-object p1

    .line 74
    :cond_13
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_22

    .line 75
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :cond_22
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method execute(Ljava/util/Map;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/Expression;->root:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/bindingx/core/internal/Expression;->execute(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
