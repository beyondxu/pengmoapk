###### Class io.dcloud.common.util.TitleNViewUtil (io.dcloud.common.util.TitleNViewUtil)
.class public Lio/dcloud/common/util/TitleNViewUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field public static final TRANSPARENT_BUTTON_BACKGROUND_COLOR:Ljava/lang/String; = "#7F333333"

.field public static final TRANSPARENT_BUTTON_TEXT_COLOR:Ljava/lang/String; = "#FFFFFF"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backButtonIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 8

    const-string/jumbo v0, "titleColor"

    const/4 v1, 0x0

    const-string/jumbo v2, "undefined"

    const-string v3, "autoBackButton"

    const/4 v4, 0x1

    const-string v5, "backButton"

    if-nez p0, :cond_31

    if-eqz p1, :cond_31

    .line 1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    return v4

    .line 3
    :cond_17
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_29

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eq v2, p0, :cond_2a

    :cond_29
    return v4

    .line 5
    :cond_2a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_cd

    return v4

    :cond_31
    if-eqz p0, :cond_cd

    if-eqz p1, :cond_cd

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    return v4

    .line 11
    :cond_3c
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 12
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_55

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_55

    return v4

    .line 14
    :cond_55
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_cd

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_cd

    return v4

    .line 17
    :cond_62
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 18
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 19
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 20
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eq p0, p1, :cond_cd

    return v4

    .line 23
    :cond_79
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    if-eqz p0, :cond_8e

    .line 24
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_8d

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-ne v2, p0, :cond_8e

    :cond_8d
    return v4

    .line 27
    :cond_8e
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_cd

    return v4

    .line 32
    :cond_95
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 33
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_a3

    const/4 p0, 0x1

    goto :goto_a4

    :cond_a3
    const/4 p0, 0x0

    .line 34
    :goto_a4
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 35
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eq p0, p1, :cond_cd

    return v4

    .line 38
    :cond_b1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    if-eqz p0, :cond_c6

    .line 39
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_c5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-ne v2, p0, :cond_c6

    :cond_c5
    return v4

    .line 42
    :cond_c6
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_cd

    return v4

    :cond_cd
    return v1
.end method

.method public static backgroundImageIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    .line 1
    const-string v1, "backgroundImage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3c

    :cond_c
    if-nez p0, :cond_13

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 7
    :cond_13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_29

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    return v5

    .line 12
    :cond_29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    return v5

    :cond_3c
    :goto_3c
    return v0
.end method

.method public static backgroundIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    .line 1
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_44

    :cond_c
    const/4 v2, 0x1

    if-nez p0, :cond_1a

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_44

    return v2

    :cond_1a
    if-eqz p0, :cond_44

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    .line 16
    :cond_31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    return v2

    :cond_44
    :goto_44
    return v0
.end method

.method public static changeColorAlpha(IF)I
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_21

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_21

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method public static changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;
    .registers 11

    const-string v0, "("

    const-string v1, ")"

    const-string v2, ","

    const-string v3, "#"

    const-string v4, "rgba("

    .line 2
    :try_start_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_148

    const/4 v5, 0x0

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_148

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_148

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_eb

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_66

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    :cond_66
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_77} :catch_144

    const-string v1, "0"

    if-ne v8, v0, :cond_87

    .line 14
    :try_start_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_87
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v8, v2, :cond_a1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_a1
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v8, v4, :cond_bb

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    :cond_bb
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v8, v4, :cond_d5

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 28
    :cond_d5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_eb
    const-string v3, "rgba"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {p0, v2}, Lio/dcloud/common/util/PdrUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_148

    .line 34
    array-length v0, p0

    const/4 v3, 0x4

    if-ne v3, v0, :cond_148

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_143} :catch_144

    return-object p0

    :catch_144
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_148
    const/4 p0, 0x0

    return-object p0
.end method

.method private static checkKeyValueIsModify(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 5

    .line 1
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    if-eqz p1, :cond_1d

    .line 2
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1d
    return v0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static color2Color(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .registers 14

    const-string v0, "rgba"

    const-string v1, "("

    const-string v2, ")"

    const-string v3, ","

    const-string v4, "rgba("

    const-string v5, "#"

    .line 1
    :try_start_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_270

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_270

    const/4 v6, 0x0

    cmpg-float v6, v6, p2

    if-gtz v6, :cond_270

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_270

    .line 2
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_17c

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17c

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v7, :cond_7c

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    :cond_7c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_b5

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    :cond_b5
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 18
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 19
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 20
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 24
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e1} :catch_26c

    const-string v7, "0"

    if-ne v10, v6, :cond_f1

    .line 27
    :try_start_e5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_f1
    int-to-float v6, v0

    if-eq v0, v3, :cond_101

    if-le v0, v3, :cond_fc

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v0, v0, p2

    sub-float/2addr v6, v0

    goto :goto_101

    :cond_fc
    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v0, v0, p2

    add-float/2addr v6, v0

    :cond_101
    :goto_101
    float-to-int v0, v6

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v10, v3, :cond_118

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_118
    int-to-float v3, v1

    if-eq v1, v4, :cond_128

    if-le v1, v4, :cond_123

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float v1, v1, p2

    sub-float/2addr v3, v1

    goto :goto_128

    :cond_123
    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float v1, v1, p2

    add-float/2addr v3, v1

    :cond_128
    :goto_128
    float-to-int v1, v3

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v10, v3, :cond_13f

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_13f
    int-to-float v3, v2

    if-eq v2, p1, :cond_14f

    if-le v2, p1, :cond_14a

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float p1, p1, p2

    sub-float/2addr v3, p1

    goto :goto_14f

    :cond_14a
    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr v3, p1

    :cond_14f
    :goto_14f
    float-to-int p1, v3

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne v10, p2, :cond_166

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 71
    :cond_17c
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_270

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_270

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_270

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_270

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_270

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_270

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_270

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_270

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p0, v3}, Lio/dcloud/common/util/PdrUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p1, v3}, Lio/dcloud/common/util/PdrUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_270

    .line 77
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_270

    if-eqz p1, :cond_270

    array-length v0, p1

    if-ne v1, v0, :cond_270

    .line 78
    aget-object v0, p0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    aget-object v1, p0, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 80
    aget-object v5, p0, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 82
    aget-object v6, p1, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 83
    aget-object v9, p1, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 84
    aget-object p1, p1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 86
    aget-object p0, p0, v7

    int-to-float v7, v0

    if-eq v0, v6, :cond_227

    if-le v0, v6, :cond_222

    sub-int/2addr v0, v6

    int-to-float v0, v0

    mul-float v0, v0, p2

    sub-float/2addr v7, v0

    goto :goto_227

    :cond_222
    sub-int/2addr v0, v6

    int-to-float v0, v0

    mul-float v0, v0, p2

    add-float/2addr v7, v0

    :cond_227
    :goto_227
    int-to-float v0, v1

    if-eq v1, v9, :cond_237

    if-le v1, v9, :cond_232

    sub-int/2addr v1, v9

    int-to-float v1, v1

    mul-float v1, v1, p2

    sub-float/2addr v0, v1

    goto :goto_237

    :cond_232
    sub-int/2addr v9, v1

    int-to-float v1, v9

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    :cond_237
    :goto_237
    int-to-float v1, v5

    if-eq v5, p1, :cond_247

    if-le v5, p1, :cond_242

    sub-int/2addr v5, p1

    int-to-float p1, v5

    mul-float p1, p1, p2

    sub-float/2addr v1, p1

    goto :goto_247

    :cond_242
    sub-int/2addr p1, v5

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 114
    :cond_247
    :goto_247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-int p2, v7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_26b
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_26b} :catch_26c

    return-object p0

    :catch_26c
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_270
    const/4 p0, 0x0

    return-object p0
.end method

.method public static compareColor(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "rgba"

    const-string v1, ","

    const-string v2, ")"

    const-string v3, "("

    const-string v4, "#"

    const/4 v5, 0x0

    .line 1
    :try_start_b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17d

    .line 2
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_d4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6f

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    :cond_6f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_a8

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    :cond_a8
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 18
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 19
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    if-ne p0, p1, :cond_d3

    return v8

    :cond_d3
    return v5

    .line 24
    :cond_d4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17d

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17d

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17d

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17d

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17d

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17d

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17d

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p0, v1}, Lio/dcloud/common/util/PdrUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p1, v1}, Lio/dcloud/common/util/PdrUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_17d

    .line 30
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_17d

    if-eqz p1, :cond_17d

    array-length v0, p1

    if-ne v1, v0, :cond_17d

    .line 31
    aget-object v0, p0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p0, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p0, p0, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    .line 32
    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_175} :catch_179

    if-ne p0, p1, :cond_178

    return v8

    :cond_178
    return v5

    :catch_179
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17d
    return v5
.end method

.method public static drawTitle(Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 30

    if-eqz p0, :cond_4d

    if-nez p1, :cond_5

    goto :goto_4d

    .line 1
    :cond_5
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    if-eqz v0, :cond_4a

    .line 2
    invoke-interface/range {p0 .. p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v0, :cond_4d

    .line 3
    invoke-interface/range {p0 .. p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-instance v2, Lio/dcloud/common/util/TitleNViewUtil$1;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v2 .. v15}, Lio/dcloud/common/util/TitleNViewUtil$1;-><init>(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x47

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_4a
    invoke-interface/range {p1 .. p13}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private static getColorAlpha(Ljava/lang/String;)I
    .registers 1

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_9

    .line 3
    :catch_5
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p0

    .line 5
    :goto_9
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    return p0
.end method

.method public static getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string p1, "nativeobj"

    aput-object p1, p3, p2

    const-string p1, "getNativeView"

    aput-object p1, p3, v1

    const/4 p1, 0x3

    aput-object v2, p3, p1

    const/16 p1, 0xa

    invoke-interface {p0, v0, p1, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_42

    .line 1
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 2
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_31

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_31

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_28

    goto :goto_31

    .line 5
    :cond_28
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p0

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_31
    :goto_31
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p0

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTitleNViewSearchInputText(Lio/dcloud/common/DHInterface/ITitleNView;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/ITitleNView;->getTitleNViewSearchInputText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intColor2String(IZ)Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "0"

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    :cond_4e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_60

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    :cond_60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_72

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_72
    if-eqz p1, :cond_77

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isButtonsIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 2

    .line 1
    const-string p0, "buttons"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isSearchInputChange(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_ac

    .line 1
    const-string v1, "searchInput"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_ac

    :cond_d
    if-eqz p0, :cond_14

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 8
    :goto_15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p0, :cond_1f

    if-eqz p1, :cond_1f

    return v1

    :cond_1f
    if-eqz p0, :cond_24

    if-nez p1, :cond_24

    return v1

    :cond_24
    if-eqz p0, :cond_ac

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_ac

    .line 14
    const-string v2, "align"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    return v1

    .line 17
    :cond_3d
    const-string v2, "backgroundColor"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    return v1

    .line 20
    :cond_4e
    const-string v2, "borderRadius"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    return v1

    .line 23
    :cond_5f
    const-string v2, "placeholder"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    return v1

    .line 26
    :cond_70
    const-string v2, "placeholderColor"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_81

    return v1

    .line 29
    :cond_81
    const-string v2, "color"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_92

    return v1

    .line 32
    :cond_92
    const-string v2, "disabled"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v3, v2, :cond_9f

    return v1

    .line 35
    :cond_9f
    const-string v2, "autoFocus"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p0, p1, :cond_ac

    return v1

    :cond_ac
    :goto_ac
    return v0
.end method

.method public static isShadowChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    .line 1
    const-string v1, "shadow"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4f

    .line 4
    :cond_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x1

    const-string v3, "color"

    if-nez p0, :cond_1e

    if-eqz p1, :cond_1e

    .line 5
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return v2

    :cond_1e
    if-eqz p0, :cond_4f

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    if-eqz p1, :cond_4f

    .line 10
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 13
    :cond_32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4f

    if-eqz p1, :cond_4f

    .line 15
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    return v2

    :cond_4f
    :goto_4f
    return v0
.end method

.method public static isTitleTypeForDef(Lorg/json/JSONObject;)Z
    .registers 3

    if-eqz p0, :cond_19

    .line 1
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_17
    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private jsonCompare(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    return-void
.end method

.method public static paddingIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 4

    .line 1
    const-string v0, "padding"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2
    invoke-static {v0, p0, p1}, Lio/dcloud/common/util/TitleNViewUtil;->checkKeyValueIsModify(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p0

    return p0

    .line 3
    :cond_d
    const-string v0, "paddingRight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4
    invoke-static {v0, p0, p1}, Lio/dcloud/common/util/TitleNViewUtil;->checkKeyValueIsModify(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p0

    return p0

    .line 5
    :cond_1a
    const-string v0, "paddingLeft"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 6
    invoke-static {v0, p0, p1}, Lio/dcloud/common/util/TitleNViewUtil;->checkKeyValueIsModify(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p0

    return p0

    .line 7
    :cond_27
    const-string v0, "padding-left"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 8
    invoke-static {v0, p0, p1}, Lio/dcloud/common/util/TitleNViewUtil;->checkKeyValueIsModify(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p0

    return p0

    .line 9
    :cond_34
    const-string v0, "padding-right"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 10
    invoke-static {v0, p0, p1}, Lio/dcloud/common/util/TitleNViewUtil;->checkKeyValueIsModify(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p0

    return p0

    :cond_41
    const/4 p0, 0x0

    return p0
.end method

.method public static progressIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_c4

    .line 1
    const-string v1, "progress"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_c4

    :cond_d
    if-eqz p0, :cond_c4

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const-string/jumbo v4, "undefined"

    if-nez v2, :cond_30

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_c4

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c4

    return v3

    .line 10
    :cond_30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 12
    :cond_4c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    return v3

    .line 14
    :cond_5d
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7e

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    :cond_7d
    return v3

    .line 17
    :cond_7e
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_c4

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_96

    const/4 v2, 0x1

    goto :goto_97

    :cond_96
    const/4 v2, 0x0

    :goto_97
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_c4

    .line 19
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    const-string v4, "color"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c4

    :cond_c3
    return v3

    :cond_c4
    :goto_c4
    return v0
.end method

.method public static redDotChange(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    .line 1
    const-string v1, "redDotColor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_44

    :cond_c
    const/4 v2, 0x1

    if-nez p0, :cond_1a

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_44

    return v2

    :cond_1a
    if-eqz p0, :cond_44

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    .line 16
    :cond_31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    return v2

    :cond_44
    :goto_44
    return v0
.end method

.method public static setBackButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V
    .registers 8

    if-eqz p0, :cond_b4

    .line 1
    const-string p2, "autoBackButton"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 13
    const-string p2, "backButton"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 15
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_31

    :cond_30
    const/4 p2, 0x0

    .line 19
    :goto_31
    const-string/jumbo v0, "titlecolor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    if-eqz p2, :cond_49

    .line 20
    const-string v2, "color"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 21
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    .line 23
    :cond_49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 24
    const-string/jumbo v0, "titleColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_7f

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_7f
    :goto_7f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8c

    goto :goto_b4

    :cond_8c
    if-eqz p2, :cond_9b

    .line 39
    const-string v1, "colorPressed"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 40
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a2

    :cond_9b
    const v1, 0x3e99999a    # 0.3f

    .line 42
    invoke-static {v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    .line 44
    :goto_a2
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1, p2}, Lio/dcloud/common/DHInterface/ITitleNView;->addBackButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 45
    :cond_ad
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/ITitleNView;->removeBackButton()V

    return-void

    .line 49
    :cond_b1
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/ITitleNView;->removeBackButton()V

    :cond_b4
    :goto_b4
    return-void
.end method

.method public static setBackgroundImage(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1
    const-string v0, "backgroundImage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackgroundImage(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public static setButtons(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 29

    move-object/from16 v0, p1

    if-nez p0, :cond_6

    goto/16 :goto_177

    .line 1
    :cond_6
    const-string v1, "buttons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 2
    const-string/jumbo v2, "titleColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4
    const-string/jumbo v2, "titlecolor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_22
    const/high16 v3, 0x3f800000    # 1.0f

    .line 6
    invoke-static {v2, v3}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 9
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_177

    const/4 v5, 0x0

    .line 11
    :goto_36
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_177

    .line 12
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 13
    const-string v7, "none"

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 14
    const-string v7, "color"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 15
    const-string v8, "colorPressed"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 16
    const-string/jumbo v9, "width"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 17
    const-string v9, "background"

    const-string v10, "#7F333333"

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 18
    const-string/jumbo v9, "transparent"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const v10, 0x3e99999a    # 0.3f

    if-eqz v9, :cond_74

    .line 20
    const-string v7, "#FFFFFF"

    invoke-static {v7, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    goto :goto_8a

    .line 21
    :cond_74
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 23
    invoke-static {v2, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    move-object v7, v2

    goto :goto_8a

    .line 24
    :cond_80
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 25
    invoke-static {v7, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    .line 30
    :cond_8a
    :goto_8a
    const-string v9, "__cb__"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 31
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 32
    const-string v10, "id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 33
    const-string v14, "htmlId"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    :goto_a1
    move-object v14, v10

    goto :goto_be

    .line 34
    :cond_a3
    const-string v9, "onClick"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 35
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_a1

    .line 36
    :cond_b0
    const-string v9, "onclick"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_bd

    .line 37
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_a1

    :cond_bd
    const/4 v14, 0x0

    .line 41
    :goto_be
    const-string v9, "float"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "left"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "maxWidth"

    const-string v15, "select"

    const-string v11, "redDot"

    const-string v4, "fontSrc"

    move-object/from16 v18, v0

    const-string v0, "fontSize"

    move-object/from16 v22, v1

    const-string v1, "fontWeight"

    move-object/from16 v23, v2

    const-string/jumbo v2, "title"

    move-object/from16 v24, v3

    const-string/jumbo v3, "text"

    move/from16 v19, v5

    const-string v5, "badgeText"

    if-eqz v9, :cond_12a

    .line 43
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 48
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v18

    const/4 v4, 0x0

    .line 49
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_110

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_111

    :cond_110
    const/4 v11, 0x0

    .line 50
    :goto_111
    invoke-virtual {v6, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v4, p0

    move-object/from16 v15, p2

    move-object v10, v0

    move-object v6, v2

    move-object v5, v3

    move/from16 v25, v19

    const/4 v0, 0x0

    move-object/from16 v19, v11

    move-object v11, v1

    .line 51
    invoke-interface/range {v4 .. v21}, Lio/dcloud/common/DHInterface/ITitleNView;->addLeftButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_16b

    :cond_12a
    move-object/from16 v16, v18

    move/from16 v25, v19

    const/4 v9, 0x0

    .line 62
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_154

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v11

    goto :goto_156

    :cond_154
    const/16 v19, 0x0

    .line 68
    :goto_156
    invoke-virtual {v6, v15, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, p2

    move-object v10, v0

    move-object v9, v1

    move-object v6, v2

    move-object v5, v3

    move-object v11, v4

    const/4 v0, 0x0

    move-object/from16 v4, p0

    .line 69
    invoke-interface/range {v4 .. v21}, Lio/dcloud/common/DHInterface/ITitleNView;->addRightButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :goto_16b
    add-int/lit8 v5, v25, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto/16 :goto_36

    :cond_177
    :goto_177
    return-void
.end method

.method public static setCapsuleButtonStyle(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    .line 1
    const-string v0, "capsuleButtonStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/ITitleNView;->setCapsuleButtonStyle(Lorg/json/JSONObject;)V

    :cond_13
    return-void
.end method

.method public static setHomeButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V
    .registers 7

    if-eqz p0, :cond_7c

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p2, v0, :cond_8

    const/4 p2, 0x1

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 1
    :goto_9
    const-string v0, "homeButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, p2

    :goto_19
    if-eqz v1, :cond_79

    .line 5
    const-string/jumbo p2, "titlecolor"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 7
    const-string/jumbo p2, "titleColor"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    :cond_2f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "#"

    if-nez v0, :cond_5a

    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_5a

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    :cond_5a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_7c

    :cond_67
    const v0, 0x3e99999a    # 0.3f

    .line 21
    invoke-static {p2, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, v0, p1}, Lio/dcloud/common/DHInterface/ITitleNView;->addHomeButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_79
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/ITitleNView;->removeHomeButton()V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public static setProgress(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V
    .registers 6

    if-nez p0, :cond_3

    goto :goto_54

    .line 1
    :cond_3
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_51

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "undefined"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_51

    .line 5
    :cond_21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 8
    :cond_37
    const-string v1, "2px"

    .line 10
    :cond_39
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 12
    :cond_4b
    const-string v3, "#00FF00"

    .line 14
    :cond_4d
    invoke-interface {p0, v1, v3}, Lio/dcloud/common/DHInterface/ITitleNView;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_51
    :goto_51
    invoke-interface {p0, v2, v2}, Lio/dcloud/common/DHInterface/ITitleNView;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public static setRedDotColor(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1
    const-string v0, "redDotColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/ITitleNView;->setRedDotColor(I)V

    :cond_f
    return-void
.end method

.method public static setSearchInput(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 14

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    const-string v0, "searchInput"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    const-string v0, "align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    const-string v0, "borderRadius"

    const-string v1, "0px"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    const-string v0, "placeholder"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    const-string v0, "placeholderColor"

    const-string v1, "#CCCCCC"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    const-string v0, "color"

    const-string v1, "#000000"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    const-string v0, "disabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 10
    const-string v0, "autoFocus"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object v1, p0

    move-object v10, p2

    .line 11
    invoke-interface/range {v1 .. v10}, Lio/dcloud/common/DHInterface/ITitleNView;->addSearchInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/IWebview;)V

    return-void

    :cond_4c
    move-object v1, p0

    .line 13
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/ITitleNView;->clearSearchInput()V

    return-void
.end method

.method public static setShadow(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    const-string v0, "shadow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 3
    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/ITitleNView;->setShadow(Lorg/json/JSONObject;)V

    return-void

    .line 5
    :cond_f
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/ITitleNView;->setShadow(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static setSplitLine(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;)V
    .registers 9

    if-eqz p0, :cond_69

    if-nez p3, :cond_a

    if-eqz p2, :cond_69

    .line 1
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/ITitleNView;->removeSplitLine()V

    return-void

    .line 5
    :cond_a
    invoke-static {p2, p3}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 6
    const-string p3, "color"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "#CCCCCC"

    if-eqz v1, :cond_25

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2b

    .line 9
    :cond_25
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2c

    :goto_2b
    move-object v0, v2

    :cond_2c
    const/4 p3, 0x0

    .line 10
    const-string/jumbo v1, "transparent"

    if-eqz p4, :cond_3c

    .line 12
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3c

    .line 13
    invoke-static {v0, p3}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_3c
    :try_start_3c
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_52

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-nez p1, :cond_52

    .line 17
    invoke-static {v0, p3}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    nop

    .line 20
    :cond_52
    :goto_52
    const-string p1, "height"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_69

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_66

    .line 23
    const-string p1, "1px"

    .line 25
    :cond_66
    invoke-interface {p0, p1, v0}, Lio/dcloud/common/DHInterface/ITitleNView;->setSplitLine(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    return-void
.end method

.method public static setSubTitleIcon(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V
    .registers 13

    if-eqz p1, :cond_53

    .line 1
    const-string/jumbo v0, "titleColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3
    const-string/jumbo v0, "titlecolor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    move-object v8, v0

    .line 5
    const-string/jumbo v0, "titleIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    const-string/jumbo v0, "titleIconRadius"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    const-string/jumbo v0, "subtitleText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    const-string/jumbo v0, "subtitleColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    const-string/jumbo v0, "subtitleSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    const-string/jumbo v0, "subtitleOverflow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    const-string/jumbo v0, "titleAlign"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "titleIconWidth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    .line 12
    invoke-interface/range {v1 .. v10}, Lio/dcloud/common/DHInterface/ITitleNView;->setIconSubTitleStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    return-void
.end method

.method public static setTitleAlign(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 1
    const-string/jumbo v0, "titleAlign"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleAlign(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static setTitleNViewButtonStyle(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 27

    move-object/from16 v0, p2

    .line 1
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_8

    move v3, v1

    goto :goto_a

    :catch_8
    const/4 v1, -0x1

    const/4 v3, -0x1

    :goto_a
    if-eqz v0, :cond_11e

    .line 4
    const-string/jumbo v1, "type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5
    const-string v4, "color"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    const-string v4, "colorPressed"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    const-string/jumbo v5, "width"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 8
    const-string v7, "background"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 9
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_41

    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    const v4, 0x3e99999a    # 0.3f

    .line 10
    invoke-static {v6, v4}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    :cond_41
    move-object v7, v4

    .line 14
    const-string v4, "__cb__"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5c

    .line 15
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 16
    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 17
    const-string v10, "htmlId"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    :goto_5a
    move-object v12, v8

    goto :goto_77

    .line 18
    :cond_5c
    const-string v4, "onClick"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 19
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5a

    .line 20
    :cond_69
    const-string v4, "onclick"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 21
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5a

    :cond_76
    move-object v12, v9

    .line 23
    :goto_77
    move-object/from16 v22, p3

    check-cast v22, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual/range {v22 .. v22}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iget-object v4, v4, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    .line 24
    const-string v8, "buttons"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_9b

    .line 26
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_9b

    if-ltz v3, :cond_9b

    .line 27
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_9b

    .line 28
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_9b
    move-object/from16 v21, v2

    .line 30
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "title"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "fontWeight"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 31
    const-string v13, "fontSize"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "fontSrc"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v9

    move-object v9, v13

    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v13

    move-object/from16 p1, v2

    .line 32
    const-string v2, "redDot"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    const-string v2, "badgeText"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_dc

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    :cond_dc
    const-string v2, "select"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "maxWidth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object v1, v4

    move-object/from16 v4, p1

    move-object/from16 p1, v1

    move-object v1, v8

    move-object v8, v10

    move-object v10, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    .line 33
    invoke-interface/range {v2 .. v21}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleNViewButtonStyle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11e

    if-eqz v1, :cond_11e

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_11e

    if-ltz v3, :cond_11e

    .line 38
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 39
    invoke-virtual/range {v22 .. v22}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    :cond_11e
    return-void
.end method

.method public static setTitleNViewPadding(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V
    .registers 8

    .line 1
    const-string v0, "padding"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 2
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v3

    invoke-static {v1, v2, v2, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v3

    invoke-static {v0, v2, v2, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_24
    const-string v3, "paddingLeft"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 6
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v3

    invoke-static {v1, v2, v2, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    goto :goto_4d

    .line 7
    :cond_39
    const-string v3, "padding-left"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 8
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v3

    invoke-static {v1, v2, v2, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    .line 10
    :cond_4d
    :goto_4d
    const-string v3, "paddingRight"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 11
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result p1

    invoke-static {p2, v2, v2, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    goto :goto_76

    .line 12
    :cond_62
    const-string v3, "padding-right"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 13
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result p1

    invoke-static {p2, v2, v2, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    .line 15
    :cond_76
    :goto_76
    invoke-interface {p0, v1, v2, v0, v2}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleNViewPadding(IIII)V

    return-void
.end method

.method public static setTitleNViewSearchInputFocus(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/ITitleNView;->setSearchInputFocus(Z)V

    return-void
.end method

.method public static setTitleNViewSearchInputText(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleNViewSearchInputText(Ljava/lang/String;)V

    return-void
.end method

.method public static splitLineIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5b

    .line 1
    const-string v1, "splitLine"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_5b

    :cond_c
    if-eqz p0, :cond_13

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    .line 10
    :goto_14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p0, :cond_1e

    if-eqz p1, :cond_1e

    return v1

    :cond_1e
    if-eqz p0, :cond_23

    if-nez p1, :cond_23

    return v1

    :cond_23
    if-eqz p0, :cond_5b

    if-eqz p1, :cond_5b

    .line 18
    const-string v2, "color"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_36

    if-eqz v2, :cond_36

    return v1

    :cond_36
    if-eqz v3, :cond_41

    if-eqz v2, :cond_41

    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    return v1

    .line 25
    :cond_41
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_50

    if-eqz p1, :cond_50

    return v1

    :cond_50
    if-eqz p0, :cond_5b

    if-eqz p1, :cond_5b

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    return v1

    :cond_5b
    :goto_5b
    return v0
.end method

.method public static startProcess(Lio/dcloud/common/DHInterface/ITitleNView;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/ITitleNView;->startProgress()V

    return-void
.end method

.method public static stopProcess(Lio/dcloud/common/DHInterface/ITitleNView;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/ITitleNView;->stopProgress()V

    return-void
.end method

.method public static subTitleIconChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_b

    .line 1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :cond_b
    const-string/jumbo v1, "titleIcon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1e

    return v2

    .line 4
    :cond_1e
    const-string/jumbo v1, "titleIconRadius"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    .line 6
    :cond_30
    const-string/jumbo v1, "subtitleText"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    .line 8
    :cond_42
    const-string/jumbo v1, "subtitleColor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    .line 10
    :cond_54
    const-string/jumbo v1, "subtitleSize"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    return v2

    .line 12
    :cond_66
    const-string/jumbo v1, "subtitleOverflow"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    return v2

    :cond_78
    return v0
.end method

.method public static titleAlignIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    .line 1
    const-string/jumbo v1, "titleAlign"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_42

    :cond_d
    const/4 v2, 0x1

    if-nez p0, :cond_1a

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 9
    :cond_1a
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    .line 14
    :cond_2f
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    return v2

    :cond_42
    :goto_42
    return v0
.end method

.method public static titleColorIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_f9

    .line 1
    const-string/jumbo v1, "titleColor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "titlecolor"

    if-nez v2, :cond_17

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_f9

    :cond_17
    const/4 v2, 0x1

    if-nez p0, :cond_3b

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 6
    :cond_2a
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    :cond_3a
    return v2

    :cond_3b
    if-eqz p0, :cond_f9

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    return v2

    .line 16
    :cond_5e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    return v2

    .line 19
    :cond_71
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 20
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    return v2

    .line 24
    :cond_88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    return v2

    .line 28
    :cond_9b
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 29
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 31
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bc

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bc

    return v2

    .line 35
    :cond_bc
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    return v2

    .line 38
    :cond_cf
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 39
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e6

    return v2

    .line 43
    :cond_e6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    return v2

    :cond_f9
    :goto_f9
    return v0
.end method

.method public static titleIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_ed

    .line 1
    const-string/jumbo v1, "titleText"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "titletext"

    if-nez v2, :cond_17

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_ed

    :cond_17
    const/4 v2, 0x1

    if-nez p0, :cond_3b

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 6
    :cond_2a
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    :cond_3a
    return v2

    :cond_3b
    if-eqz p0, :cond_ed

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    return v2

    .line 16
    :cond_5e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v2

    .line 19
    :cond_6e
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 20
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    return v2

    .line 24
    :cond_85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v2

    .line 28
    :cond_95
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 29
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 31
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b6

    return v2

    .line 35
    :cond_b6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v2

    .line 38
    :cond_c6
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 39
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_dd

    return v2

    .line 43
    :cond_dd
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_ec
    return v2

    :cond_ed
    :goto_ed
    return v0
.end method

.method public static titleNViewButtonBadge(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Z)V
    .registers 3

    .line 1
    invoke-interface {p0, p1, p2}, Lio/dcloud/common/DHInterface/ITitleNView;->setBadgeText(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public static titleNViewButtonRedDot(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Z)V
    .registers 3

    .line 1
    invoke-interface {p0, p1, p2}, Lio/dcloud/common/DHInterface/ITitleNView;->setRedDot(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public static titleNViewStyleNoTitle(Lorg/json/JSONObject;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    const-string/jumbo v1, "titleText"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "titletext"

    if-nez v2, :cond_17

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    .line 4
    :cond_17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_39

    return v0

    .line 9
    :cond_28
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 10
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_39

    return v0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public static titleOverflowIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6e

    .line 1
    const-string/jumbo v1, "titleOverflow"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_6e

    :cond_d
    const/4 v2, 0x1

    if-nez p0, :cond_21

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    return v2

    :cond_21
    if-eqz p0, :cond_6e

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6e

    return v2

    .line 15
    :cond_3a
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v2

    .line 22
    :cond_5b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e

    return v2

    :cond_6e
    :goto_6e
    return v0
.end method

.method public static titleSizeIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_f9

    .line 1
    const-string/jumbo v1, "titleSize"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "titlesize"

    if-nez v2, :cond_17

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_f9

    :cond_17
    const/4 v2, 0x1

    if-nez p0, :cond_3b

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 6
    :cond_2a
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    :cond_3a
    return v2

    :cond_3b
    if-eqz p0, :cond_f9

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    return v2

    .line 16
    :cond_5e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    return v2

    .line 19
    :cond_71
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 20
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    return v2

    .line 24
    :cond_88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    return v2

    .line 28
    :cond_9b
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 29
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 31
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bc

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bc

    return v2

    .line 35
    :cond_bc
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    return v2

    .line 38
    :cond_cf
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 39
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e6

    return v2

    .line 43
    :cond_e6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    return v2

    :cond_f9
    :goto_f9
    return v0
.end method

.method public static updateTitleNViewStatus(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;FLorg/json/JSONObject;F)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v7, p3

    const-string/jumbo v0, "titlecolor"

    const-string v8, "#00333333"

    const-string/jumbo v2, "titleColor"

    const-string v9, "color"

    if-eqz v1, :cond_2d7

    .line 1
    :try_start_10
    const-string v3, "backgroundColor"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/ITitleNView;->getStatusBarColor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 7
    const-string v5, "alpha"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 10
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 12
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_37
    move-object v5, v0

    goto :goto_44

    .line 13
    :cond_39
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 14
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_44
    :goto_44
    move-object v11, v5

    .line 16
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/ITitleNView;->getTitleColor()I

    move-result v0

    .line 22
    const-string v2, "splitLine"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_70

    .line 23
    const-string/jumbo v6, "undefined"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_70

    .line 24
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6d

    const-string v12, ""

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_71

    .line 26
    :cond_6d
    const-string v6, "#CCCCCC"

    goto :goto_71

    :cond_70
    move-object v6, v5

    .line 31
    :cond_71
    :goto_71
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_78

    move-object v5, v6

    :cond_78
    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v15, p2, v13

    if-nez v15, :cond_91

    .line 38
    invoke-static {v10, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v4, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(IF)I

    move-result v4

    .line 42
    invoke-static {v0, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(IF)I

    move-result v16

    .line 44
    invoke-static {v6, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    move-object v12, v3

    goto :goto_a0

    :cond_91
    div-float v13, p2, p4

    cmpl-float v16, v13, v14

    if-ltz v16, :cond_a5

    .line 53
    invoke-static {v0, v14}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(IF)I

    move-result v16

    .line 55
    invoke-static {v6, v14}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    move-object v12, v10

    :goto_a0
    move/from16 v3, v16

    const/high16 v16, 0x437f0000    # 255.0f

    goto :goto_d1

    :cond_a5
    const/high16 v16, 0x437f0000    # 255.0f

    .line 58
    invoke-static {v10}, Lio/dcloud/common/util/TitleNViewUtil;->getColorAlpha(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v16

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b7

    .line 59
    invoke-static {v10, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v12

    goto :goto_b8

    :cond_b7
    move-object v12, v10

    .line 61
    :goto_b8
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v16

    cmpl-float v14, v14, v13

    if-gtz v14, :cond_c5

    if-eqz v3, :cond_c9

    .line 62
    :cond_c5
    invoke-static {v4, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(IF)I

    move-result v4

    .line 64
    :cond_c9
    invoke-static {v0, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(IF)I

    move-result v3

    .line 66
    invoke-static {v6, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    :goto_d1
    if-eq v0, v3, :cond_d6

    .line 71
    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleColor(I)V

    .line 74
    :cond_d6
    invoke-interface {v1, v4}, Lio/dcloud/common/DHInterface/ITitleNView;->setStatusBarColor(I)V

    if-eqz v5, :cond_f5

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_df} :catch_2d7

    if-nez v0, :cond_f5

    if-eqz v2, :cond_eb

    .line 79
    :try_start_e3
    invoke-virtual {v2, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_e7

    goto :goto_eb

    :catch_e7
    move-exception v0

    .line 82
    :try_start_e8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    :cond_eb
    :goto_eb
    const-string v6, ""

    const/4 v5, 0x0

    move-object v4, v2

    move-object v3, v2

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/TitleNViewUtil;->setSplitLine(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;)V

    :cond_f5
    if-eqz v10, :cond_fa

    .line 88
    invoke-interface {v1, v12}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackgroundColor(Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_fa} :catch_2d7

    :cond_fa
    const-string v2, "buttons"

    const-string v3, "backButton"

    const-string v4, "background"

    const-string v5, "#7F333333"

    const-string v6, "#FFFFFF"

    const v10, 0x3e99999a    # 0.3f

    if-nez v15, :cond_15a

    .line 94
    :try_start_109
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_11a

    .line 95
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11a

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_11b

    :cond_11a
    move-object v3, v5

    :goto_11b
    const/high16 v8, 0x3f800000    # 1.0f

    .line 97
    invoke-static {v6, v8}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v3, v9, v11}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackButtonColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v6, v8}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v5, v3, v8}, Lio/dcloud/common/DHInterface/ITitleNView;->setHomeButtonColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2d7

    const/4 v0, 0x0

    .line 103
    :goto_13a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2d7

    .line 104
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_157

    .line 106
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v8, 0x3f800000    # 1.0f

    .line 107
    invoke-static {v6, v8}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v0, v3, v7, v8}, Lio/dcloud/common/DHInterface/ITitleNView;->setButtonColorByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_157} :catch_2d7

    :cond_157
    add-int/lit8 v0, v0, 0x1

    goto :goto_13a

    :cond_15a
    const-string v12, "colorPressed"

    cmpg-float v13, p4, p2

    if-gtz v13, :cond_1e3

    const/high16 v13, 0x3f800000    # 1.0f

    .line 113
    :try_start_162
    invoke-static {v11, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    invoke-static {v4, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_19a

    .line 118
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17c

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19a

    .line 119
    :cond_17c
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18f

    .line 123
    invoke-static {v4, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    goto :goto_19a

    .line 124
    :cond_18f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_19c

    .line 125
    invoke-static {v5, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    goto :goto_19c

    :cond_19a
    :goto_19a
    move-object v3, v5

    move-object v5, v4

    .line 128
    :cond_19c
    :goto_19c
    invoke-interface {v1, v8, v5, v3}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackButtonColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v13, 0x3f800000    # 1.0f

    .line 129
    invoke-static {v4, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v8, v3, v5}, Lio/dcloud/common/DHInterface/ITitleNView;->setHomeButtonColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2d7

    const/4 v0, 0x0

    .line 134
    :goto_1b3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2d7

    .line 135
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1e0

    .line 137
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d3

    .line 141
    invoke-static {v4, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    goto :goto_1dd

    .line 142
    :cond_1d3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1dd

    .line 143
    invoke-static {v5, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    .line 145
    :cond_1dd
    :goto_1dd
    invoke-interface {v1, v0, v8, v5, v3}, Lio/dcloud/common/DHInterface/ITitleNView;->setButtonColorByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b3

    :cond_1e3
    div-float v8, p2, p4

    const/high16 v13, 0x3f800000    # 1.0f

    .line 152
    invoke-static {v11, v13}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v11

    .line 154
    invoke-static {v6, v11, v8}, Lio/dcloud/common/util/TitleNViewUtil;->color2Color(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v13

    .line 155
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_200

    .line 156
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_200

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_201

    :cond_200
    move-object v14, v5

    .line 159
    :goto_201
    invoke-static {v13, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v15

    if-eqz v3, :cond_22a

    .line 161
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 162
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_21b

    .line 165
    invoke-static {v11, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    move-object v15, v11

    goto :goto_225

    .line 166
    :cond_21b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_225

    .line 167
    invoke-static {v15, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    .line 169
    :cond_225
    :goto_225
    invoke-static {v6, v15, v8}, Lio/dcloud/common/util/TitleNViewUtil;->color2Color(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v15

    goto :goto_22c

    :cond_22a
    move-object v3, v15

    move-object v15, v13

    :goto_22c
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v0, v17, v8

    .line 172
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v16

    cmpg-float v10, v0, v10

    if-gez v10, :cond_247

    .line 173
    invoke-static {v14, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v15, v3}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackButtonColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24a

    .line 176
    :cond_247
    invoke-interface {v1, v14, v15, v3}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackButtonColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_24a
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v16

    cmpg-float v3, v0, v3

    if-gez v3, :cond_268

    .line 179
    invoke-static {v5, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const v10, 0x3e99999a    # 0.3f

    .line 180
    invoke-static {v13, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v14

    .line 181
    invoke-interface {v1, v3, v13, v14}, Lio/dcloud/common/DHInterface/ITitleNView;->setHomeButtonColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_272

    :cond_268
    const v10, 0x3e99999a    # 0.3f

    .line 184
    invoke-static {v13, v10}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v13, v3}, Lio/dcloud/common/DHInterface/ITitleNView;->setHomeButtonColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_272
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2d7

    const/4 v3, 0x0

    .line 190
    :goto_279
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2d7

    .line 191
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2d1

    .line 193
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 194
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 195
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_29c

    const v14, 0x3e99999a    # 0.3f

    .line 197
    invoke-static {v11, v14}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v13

    move-object v10, v11

    goto :goto_2a9

    :cond_29c
    const v14, 0x3e99999a    # 0.3f

    .line 198
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2a9

    .line 199
    invoke-static {v10, v14}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v13

    .line 201
    :cond_2a9
    :goto_2a9
    invoke-static {v6, v10, v8}, Lio/dcloud/common/util/TitleNViewUtil;->color2Color(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v10

    .line 202
    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_2b1} :catch_2d7

    .line 205
    :try_start_2b1
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15
    :try_end_2b5
    .catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_2b5} :catch_2b6

    goto :goto_2ba

    .line 207
    :catch_2b6
    :try_start_2b6
    invoke-static {v7}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v15

    .line 209
    :goto_2ba
    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    int-to-float v15, v15

    div-float v15, v15, v16

    cmpg-float v15, v0, v15

    if-gez v15, :cond_2cd

    .line 210
    invoke-static {v7, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v3, v7, v10, v13}, Lio/dcloud/common/DHInterface/ITitleNView;->setButtonColorByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d4

    .line 213
    :cond_2cd
    invoke-interface {v1, v3, v7, v10, v13}, Lio/dcloud/common/DHInterface/ITitleNView;->setButtonColorByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d0
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2d0} :catch_2d7

    goto :goto_2d4

    :cond_2d1
    const v14, 0x3e99999a    # 0.3f

    :goto_2d4
    add-int/lit8 v3, v3, 0x1

    goto :goto_279

    :catch_2d7
    :cond_2d7
    return-void
.end method

###### Class io.dcloud.common.util.TitleNViewUtil.AnonymousClass1 (io.dcloud.common.util.TitleNViewUtil$1)
.class Lio/dcloud/common/util/TitleNViewUtil$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/core/ui/l$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/TitleNViewUtil;->drawTitle(Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$iconPath:Ljava/lang/String;

.field final synthetic val$iconRadius:Ljava/lang/String;

.field final synthetic val$subText:Ljava/lang/String;

.field final synthetic val$subTextColor:Ljava/lang/String;

.field final synthetic val$subtitleSize:Ljava/lang/String;

.field final synthetic val$subtitleoverflow:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$titleAlign:Ljava/lang/String;

.field final synthetic val$titleColor:Ljava/lang/String;

.field final synthetic val$titleIconWidth:Ljava/lang/String;

.field final synthetic val$titleNViewF:Lio/dcloud/common/DHInterface/ITitleNView;

.field final synthetic val$titleOverflow:Ljava/lang/String;

.field final synthetic val$titleSize:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleNViewF:Lio/dcloud/common/DHInterface/ITitleNView;

    iput-object p2, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleColor:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleSize:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleOverflow:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleAlign:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$iconPath:Ljava/lang/String;

    iput-object p8, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$iconRadius:Ljava/lang/String;

    iput-object p9, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$subText:Ljava/lang/String;

    iput-object p10, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$subTextColor:Ljava/lang/String;

    iput-object p11, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$subtitleSize:Ljava/lang/String;

    iput-object p12, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$subtitleoverflow:Ljava/lang/String;

    iput-object p13, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleIconWidth:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 14

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleNViewF:Lio/dcloud/common/DHInterface/ITitleNView;

    iget-object v1, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleColor:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleSize:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleOverflow:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleAlign:Ljava/lang/String;

    iget-object v6, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$iconPath:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$iconRadius:Ljava/lang/String;

    iget-object v8, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$subText:Ljava/lang/String;

    iget-object v9, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$subTextColor:Ljava/lang/String;

    iget-object v10, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$subtitleSize:Ljava/lang/String;

    iget-object v11, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$subtitleoverflow:Ljava/lang/String;

    iget-object v12, p0, Lio/dcloud/common/util/TitleNViewUtil$1;->val$titleIconWidth:Ljava/lang/String;

    invoke-interface/range {v0 .. v12}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
