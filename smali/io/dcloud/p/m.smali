###### Class io.dcloud.p.m (io.dcloud.p.m)
.class public abstract Lio/dcloud/p/m;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/m$b;,
        Lio/dcloud/p/m$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/util/ArrayList;)I
    .registers 12

    .line 113
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    .line 115
    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 116
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/p/m$b;

    int-to-double v5, v1

    add-int/2addr v1, v3

    int-to-double v7, v1

    invoke-virtual/range {v4 .. v9}, Lio/dcloud/p/m$b;->a(DDLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_26
    return v1
.end method

.method public static varargs a(I[Ljava/util/List;)Lio/dcloud/p/m$a;
    .registers 7

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_12

    aget-object v4, p1, v3

    .line 133
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 135
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_1a
    invoke-static {v0}, Lio/dcloud/p/m;->a(Ljava/util/List;)V

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p0, :cond_66

    .line 141
    invoke-interface {v0, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 143
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getBiddingECPM()I

    move-result v0

    .line 144
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getBiddingECPM()I

    move-result v1

    .line 146
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4f
    :goto_4f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 147
    invoke-virtual {v3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x2

    .line 148
    invoke-virtual {v3, v0, v1, v4}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingFail(III)V

    goto :goto_4f

    .line 152
    :cond_66
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getBiddingECPM()I

    move-result v0

    const/4 v1, 0x0

    .line 157
    :cond_74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v3, 0x0

    :cond_79
    if-ge v3, p0, :cond_8a

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 158
    invoke-virtual {v4}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v4

    if-nez v4, :cond_79

    goto :goto_8b

    :cond_8a
    const/4 v2, 0x1

    .line 163
    :goto_8b
    new-instance p0, Lio/dcloud/p/m$a;

    invoke-direct {p0}, Lio/dcloud/p/m$a;-><init>()V

    .line 164
    iput-boolean v2, p0, Lio/dcloud/p/m$a;->a:Z

    .line 165
    iput v0, p0, Lio/dcloud/p/m$a;->b:I

    .line 166
    iput v1, p0, Lio/dcloud/p/m$a;->c:I

    .line 167
    iput-object p1, p0, Lio/dcloud/p/m$a;->d:Ljava/util/List;

    return-object p0
.end method

.method private static a(Ljava/util/ArrayList;I)Lio/dcloud/p/m$b;
    .registers 7

    .line 117
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double v0, v0, v2

    .line 118
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :cond_c
    if-ge v2, p1, :cond_1d

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lio/dcloud/p/m$b;

    .line 119
    invoke-virtual {v3, v0, v1}, Lio/dcloud/p/m$b;->a(D)Z

    move-result v4

    if-eqz v4, :cond_c

    return-object v3

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lio/dcloud/sdk/core/module/DCBaseAOL;)Ljava/lang/String;
    .registers 2

    .line 168
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->s()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 169
    invoke-static {}, Lio/dcloud/p/e;->b()Lio/dcloud/p/e;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/dcloud/p/e;->b(Ljava/lang/String;)Lio/dcloud/sdk/core/adapter/IAdAdapter;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 171
    invoke-interface {p0}, Lio/dcloud/sdk/core/adapter/IAdAdapter;->getAdapterSDKVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/List;
    .registers 10

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---STA---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/p/c3;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_80

    .line 36
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_80

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_80

    .line 37
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 39
    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_32

    .line 45
    :cond_48
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_32

    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_32

    .line 49
    :cond_52
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p3}, Lio/dcloud/p/m;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq p3, v2, :cond_7f

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_69
    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 53
    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 54
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_7f
    move-object p1, v1

    .line 60
    :cond_80
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---PRE---"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/dcloud/p/c3;->a(Ljava/lang/String;)V

    if-eqz p4, :cond_fb

    .line 62
    invoke-virtual {p4}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_fb

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v0, :cond_fb

    .line 63
    const-string p3, "_s_c_a_r"

    invoke-static {p0, p3, p2}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    :try_start_b3
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b8} :catch_b9

    goto :goto_ba

    :catch_b9
    const/4 p3, 0x0

    :goto_ba
    const/4 p0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_bd
    if-eqz p3, :cond_fb

    if-eqz v1, :cond_fb

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_fb

    .line 72
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    .line 74
    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_e4

    .line 77
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v0, :cond_e4

    .line 78
    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    goto :goto_e7

    .line 82
    :cond_e4
    const-string v4, ""

    const/4 v3, 0x0

    :goto_e7
    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-gt v3, v4, :cond_f9

    if-eqz v3, :cond_f9

    .line 84
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :cond_f9
    const/4 v1, 0x0

    goto :goto_bd

    .line 90
    :cond_fb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "---AFT---"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/c3;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 7

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_6a

    .line 92
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_6a

    .line 95
    :cond_e
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 96
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 99
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 100
    :goto_2a
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-ge v4, v5, :cond_3b

    .line 101
    new-instance v5, Lio/dcloud/p/m$b;

    invoke-direct {v5}, Lio/dcloud/p/m$b;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 103
    :cond_3b
    :goto_3b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_5d

    .line 104
    invoke-static {p0, v1}, Lio/dcloud/p/m;->a(Lorg/json/JSONObject;Ljava/util/ArrayList;)I

    move-result v4

    .line 105
    invoke-static {v1, v4}, Lio/dcloud/p/m;->a(Ljava/util/ArrayList;I)Lio/dcloud/p/m$b;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 107
    invoke-virtual {v4}, Lio/dcloud/p/m$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v4}, Lio/dcloud/p/m$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 112
    :cond_5d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dcloud/p/m$b;

    invoke-virtual {p0}, Lio/dcloud/p/m$b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6a
    :goto_6a
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 23
    const-string v0, "_s_c_a_r"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 24
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 25
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lio/dcloud/p/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/ad/"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "AdEnable.dat"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    :try_start_1d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p1, "1"

    goto :goto_28

    :cond_26
    const-string p1, "0"

    .line 6
    :goto_28
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/dcloud/p/v0;->a([BILjava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 27
    const-string v0, "_s_c_a_r"

    const-string v1, "servertime"

    invoke-static {p0, v0, v1, p1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 9
    const-string v0, "_s_c_a_r"

    invoke-static {p0, v0, p1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    :try_start_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_18

    .line 15
    :cond_12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 17
    :goto_18
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_28

    .line 18
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2b

    .line 20
    :cond_28
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    :goto_2b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p1, p2}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_32} :catch_32

    :catch_32
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 8

    .line 120
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_48

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 122
    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_48

    const/4 v3, 0x0

    .line 123
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_45

    add-int/lit8 v4, v3, 0x1

    .line 124
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v5}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getBiddingECPM()I

    move-result v5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v6}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getBiddingECPM()I

    move-result v6

    if-le v5, v6, :cond_43

    .line 125
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 126
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-interface {p0, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_43
    move v3, v4

    goto :goto_11

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_48
    return-void
.end method

.method public static a(JJ)Z
    .registers 5

    .line 28
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 29
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 30
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 31
    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p2, p3, :cond_32

    const/4 p2, 0x2

    .line 33
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p3, p2, :cond_32

    const/4 p2, 0x5

    .line 34
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p3, p0, :cond_32

    return p1

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 4
    const-string v0, "DCLOUD_AD_SPLASH"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static b(Lio/dcloud/sdk/core/module/DCBaseAOL;)Ljava/lang/String;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->s()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 10
    invoke-static {}, Lio/dcloud/p/e;->b()Lio/dcloud/p/e;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/dcloud/p/e;->b(Ljava/lang/String;)Lio/dcloud/sdk/core/adapter/IAdAdapter;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 12
    invoke-interface {p0}, Lio/dcloud/sdk/core/adapter/IAdAdapter;->getSDKVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/p/m;->a(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_16
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 4
    const-string v0, "_s_c_a_r"

    const-string v1, "servertime"

    invoke-static {p0, v0, v1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/dcloud/p/m;->a:Ljava/lang/Boolean;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 3
    const-string v0, "_s_c_a_r"

    const-string v1, "_is_gm_channel"

    invoke-static {p0, v0, v1, p1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/dcloud/p/m;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 3
    invoke-static {p0}, Lio/dcloud/p/m;->b(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 5
    :cond_f
    const-string p0, "\n"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/sdcard/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cache/ad/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ad/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/p/m;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    .line 2
    const-string v0, "_s_c_a_r"

    const-string v1, "_is_gm_channel"

    invoke-static {p0, v0, v1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lio/dcloud/p/m;->a:Ljava/lang/Boolean;

    .line 5
    :cond_18
    sget-object p0, Lio/dcloud/p/m;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/dcloud/p/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/ad/"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "AdEnable.dat"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    :try_start_1e
    invoke-static {p0}, Lio/dcloud/p/v0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 5
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lio/dcloud/p/v0;->e(Ljava/lang/Object;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_2f

    return-object v1

    :cond_2e
    return-object v0

    :catch_2f
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

###### Class io.dcloud.p.m.a (io.dcloud.p.m$a)
.class public Lio/dcloud/p/m$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/p/m$a;->a:Z

    return-void
.end method

###### Class io.dcloud.p.m.b (io.dcloud.p.m$b)
.class Lio/dcloud/p/m$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/m$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(DDLjava/lang/String;)V
    .registers 6

    .line 2
    iput-wide p1, p0, Lio/dcloud/p/m$b;->a:D

    .line 3
    iput-wide p3, p0, Lio/dcloud/p/m$b;->b:D

    .line 4
    iput-object p5, p0, Lio/dcloud/p/m$b;->c:Ljava/lang/String;

    return-void
.end method

.method public a(D)Z
    .registers 6

    .line 5
    iget-wide v0, p0, Lio/dcloud/p/m$b;->a:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_e

    iget-wide v0, p0, Lio/dcloud/p/m$b;->b:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method
