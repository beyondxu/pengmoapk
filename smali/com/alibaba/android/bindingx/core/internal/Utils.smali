###### Class com.alibaba.android.bindingx.core.internal.Utils (com.alibaba.android.bindingx.core.internal.Utils)
.class public final Lcom/alibaba/android/bindingx/core/internal/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromJson(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 72
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_6
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    .line 75
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 76
    :cond_11
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1b

    .line 77
    check-cast p0, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    :cond_1b
    return-object p0
.end method

.method public static getCustomInterceptors(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;",
            ">;"
        }
    .end annotation

    .line 139
    const-string v0, "interceptors"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4f

    .line 140
    instance-of v1, p0, Ljava/util/Map;

    if-nez v1, :cond_e

    goto :goto_4f

    .line 143
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 145
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 148
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1f

    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_1f

    .line 152
    :try_start_3b
    check-cast v2, Ljava/util/Map;

    const-string v4, "expression"

    invoke-static {v2, v4}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getExpressionPair(Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    move-result-object v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_46

    :catch_44
    nop

    move-object v2, v0

    :goto_46
    if-eqz v2, :cond_1f

    .line 157
    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_4e
    return-object v1

    :cond_4f
    :goto_4f
    return-object v0
.end method

.method public static getExpressionPair(Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;"
        }
    .end annotation

    .line 166
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 169
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 171
    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    move-result-object p0

    return-object p0

    .line 172
    :cond_13
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_51

    .line 173
    check-cast p0, Ljava/util/Map;

    .line 176
    :try_start_19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_27

    :catchall_1f
    move-exception p0

    .line 178
    const-string/jumbo v0, "unexpected json parse error."

    invoke-static {v0, p0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, p1

    :goto_27
    if-nez v0, :cond_2e

    .line 181
    invoke-static {p1, p1}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    move-result-object p0

    return-object p0

    .line 183
    :cond_2e
    const-string p0, "origin"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    const-string/jumbo v1, "transformed"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 186
    invoke-static {p1, p1}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    move-result-object p0

    return-object p0

    .line 189
    :cond_4c
    invoke-static {p0, v0}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    move-result-object p0

    return-object p0

    :cond_51
    return-object p1
.end method

.method public static getRuntimeProps(Ljava/util/Map;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 100
    const-string v0, "props"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 105
    :cond_a
    :try_start_a
    check-cast p0, Ljava/util/List;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    return-object v0
.end method

.method public static getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 85
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_8
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_f

    .line 91
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 93
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 198
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 199
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static normalizeRotation(F)F
    .registers 4

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p0, v0

    const/high16 v0, 0x43340000    # 180.0f

    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-ltz v2, :cond_14

    if-ltz v2, :cond_11

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_11

    goto :goto_1e

    :cond_11
    rem-float/2addr p0, v0

    sub-float/2addr p0, v0

    return p0

    :cond_14
    const/high16 v2, -0x3ccc0000    # -180.0f

    cmpl-float v2, p0, v2

    if-lez v2, :cond_1f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_1f

    :goto_1e
    return p0

    :cond_1f
    rem-float/2addr p0, v0

    add-float/2addr p0, v0

    return p0
.end method

.method public static normalizedPerspectiveValue(Landroid/content/Context;I)I
    .registers 2

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p0, p0, p1

    const/high16 p1, 0x40a00000    # 5.0f

    mul-float p0, p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static parseTransformOrigin(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/16 v0, 0x20

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_ac

    move v3, v2

    .line 247
    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_22

    .line 248
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 253
    :cond_22
    :goto_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_ac

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_ac

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 258
    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "center"

    const/4 v3, 0x0

    if-eqz v1, :cond_50

    const/4 v0, 0x0

    goto :goto_72

    .line 260
    :cond_50
    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_5c
    int-to-float v0, v0

    goto :goto_72

    .line 262
    :cond_5e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_5c

    .line 265
    :cond_6b
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_5c

    .line 268
    :goto_72
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    goto :goto_9e

    .line 270
    :cond_7c
    const-string v1, "bottom"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_88
    int-to-float v3, p0

    goto :goto_9e

    .line 272
    :cond_8a
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_97

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    goto :goto_88

    .line 275
    :cond_97
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    goto :goto_88

    .line 278
    :goto_9e
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_ac
    return-object v1
.end method

.method public static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_5

    .line 62
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 64
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 65
    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/bindingx/core/internal/Utils;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_5

    .line 49
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 51
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 53
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/bindingx/core/internal/Utils;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_26
    return-object v0
.end method
