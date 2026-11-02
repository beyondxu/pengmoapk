###### Class com.taobao.weex.utils.WXUtils (com.taobao.weex.utils.WXUtils)
.class public Lcom/taobao/weex/utils/WXUtils;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field private static final HUNDRED:I = 0x64

.field public static final PERCENT:C = '%'

.field static final sCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInterval:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/utils/WXUtils;->sCache:Landroidx/collection/LruCache;

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/taobao/weex/utils/WXUtils;->sInterval:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGreyConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 5
    :cond_c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    .line 8
    :try_start_14
    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_25
    cmpg-double p0, v2, v4

    if-gez p0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public static fastGetFloat(Ljava/lang/String;)F
    .registers 2

    const/high16 v0, 0x4f000000

    .line 27
    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static fastGetFloat(Ljava/lang/String;F)F
    .registers 12

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_77

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_20

    .line 8
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    const/4 v3, 0x1

    .line 14
    :goto_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-ge v2, v5, :cond_3e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_3e

    if-gt v5, v6, :cond_3e

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v1, v1, v6

    int-to-float v5, v5

    add-float/2addr v1, v5

    const/high16 v5, 0x42400000    # 48.0f

    sub-float/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 19
    :cond_3e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_71

    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x2e

    if-ne v5, v8, :cond_71

    add-int/2addr v2, v4

    const/16 v4, 0xa

    const/16 v5, 0xa

    .line 24
    :goto_51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_71

    int-to-float v8, v0

    cmpg-float v8, v8, p1

    if-gez v8, :cond_71

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_71

    if-gt v8, v6, :cond_71

    add-int/lit8 v8, v8, -0x30

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    add-float/2addr v1, v8

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_71
    if-nez v3, :cond_77

    const/high16 p0, -0x40800000    # -1.0f

    mul-float v1, v1, p0

    :cond_77
    return v1
.end method

.method private static floatByViewport(Ljava/lang/Object;F)F
    .registers 9

    const/high16 v0, 0x7fc00000    # Float.NaN

    if-nez p0, :cond_5

    return v0

    .line 1
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2
    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    .line 3
    const-string/jumbo v2, "undefined"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto/16 :goto_106

    .line 9
    :cond_26
    const-string/jumbo v2, "wx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Argument error! value is "

    const-string v4, "Argument format error! value is "

    if-eqz v2, :cond_5c

    .line 11
    :try_start_33
    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXUtils;->transferWx(Ljava/lang/String;F)F

    move-result p0
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_37} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_38

    return p0

    :catch_38
    move-exception p1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_105

    :catch_4a
    move-exception p1

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_105

    .line 20
    :cond_5c
    const-string p1, "px"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-le v2, v6, :cond_b0

    const-string v2, "rpx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7d

    const-string/jumbo v2, "upx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 23
    :cond_7d
    :try_start_7d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const v1, 0x443b8000    # 750.0f

    .line 24
    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXUtils;->transferRpxAndUpx(Ljava/lang/String;F)F

    move-result p0
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_8d} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8d} :catch_8e

    return p0

    :catch_8e
    move-exception p1

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_105

    :catch_9f
    move-exception p1

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_105

    .line 35
    :cond_b0
    :try_start_b0
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_bc
    .catch Ljava/lang/NumberFormatException; {:try_start_b0 .. :try_end_bc} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bc} :catch_bd

    return p0

    :catch_bd
    move-exception p1

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_105

    :catch_ce
    move-exception p1

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_105

    .line 48
    :cond_df
    :try_start_df
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_e3
    .catch Ljava/lang/NumberFormatException; {:try_start_df .. :try_end_e3} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e3} :catch_e4

    return p0

    :catch_e4
    move-exception p1

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_105

    :catch_f5
    move-exception p1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_105
    return v0

    .line 54
    :cond_106
    :goto_106
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Argument Warning ! value is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "And default Value:NaN"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return v0
.end method

.method public static getAvailMemory(Landroid/content/Context;)J
    .registers 6

    .line 1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "app AvailMemory ---->>>"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 7
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v0, v3

    return-wide v0
.end method

.method public static getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    if-nez p0, :cond_3

    goto :goto_22

    .line 1
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 3
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_22
    :goto_22
    return-object p1
.end method

.method public static getBundleBanner(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "/*!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    return-object v1

    :cond_b
    add-int/lit8 v0, v0, 0x3

    .line 6
    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXUtils;->indexLineBreak(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_14

    return-object v1

    .line 10
    :cond_14
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 13
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 14
    const-string v0, "!*/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2c

    return-object v1

    :cond_2c
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-static {p0}, Lcom/taobao/weex/utils/WXUtils;->splitLineBreak(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 23
    array-length v2, p0

    :goto_3b
    if-ge v1, v2, :cond_4d

    aget-object v3, p0, v1

    .line 24
    const-string v4, "\\*"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 27
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCache()Landroidx/collection/LruCache;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/utils/WXUtils;->sCache:Landroidx/collection/LruCache;

    return-object v0
.end method

.method public static getDouble(Ljava/lang/Object;)D
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 1
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2
    const-string/jumbo v3, "wx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x443b8000    # 750.0f

    const-string v5, "Argument error! value is "

    const-string v6, "Argument format error! value is "

    if-eqz v3, :cond_64

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "the value of "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " use wx unit, which will be not supported soon after."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 7
    :cond_3a
    :try_start_3a
    invoke-static {v2, v4}, Lcom/taobao/weex/utils/WXUtils;->transferWx(Ljava/lang/String;F)F

    move-result p0
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3e} :catch_52
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_40

    float-to-double v0, p0

    return-wide v0

    :catch_40
    move-exception v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10b

    :catch_52
    move-exception v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10b

    .line 16
    :cond_64
    const-string v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-le v7, v9, :cond_b6

    const-string v7, "rpx"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_85

    const-string/jumbo v7, "upx"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 19
    :cond_85
    :try_start_85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2, v4}, Lcom/taobao/weex/utils/WXUtils;->transferRpxAndUpx(Ljava/lang/String;F)F

    move-result p0
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_92} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_92} :catch_94

    float-to-double v0, p0

    return-wide v0

    :catch_94
    move-exception v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    :catch_a5
    move-exception v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    .line 31
    :cond_b6
    :try_start_b6
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_c2
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_c2} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c2} :catch_c3

    return-wide v0

    :catch_c3
    move-exception v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    :catch_d4
    move-exception v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    .line 44
    :cond_e5
    :try_start_e5
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_e9} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e9} :catch_ea

    return-wide v0

    :catch_ea
    move-exception v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    :catch_fb
    move-exception v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10b
    return-wide v0
.end method

.method public static getFixUnixTime()J
    .registers 4

    .line 1
    sget-wide v0, Lcom/taobao/weex/utils/WXUtils;->sInterval:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getFloat(Ljava/lang/Object;)F
    .registers 2

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 10

    if-nez p0, :cond_4

    goto/16 :goto_114

    .line 2
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_115

    .line 4
    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_115

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_115

    .line 9
    :cond_25
    const-string/jumbo v1, "wx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x443b8000    # 750.0f

    const-string v3, "Argument error! value is "

    const-string v4, "Argument format error! value is "

    if-eqz v1, :cond_62

    .line 11
    :try_start_35
    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->transferWx(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_3d} :catch_50
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_114

    :catch_50
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_114

    .line 20
    :cond_62
    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-le v5, v7, :cond_b7

    const-string v5, "rpx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_83

    const-string/jumbo v5, "upx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 23
    :cond_83
    :try_start_83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->transferRpxAndUpx(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_94
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_94} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_94} :catch_95

    return-object p0

    :catch_95
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_114

    :catch_a6
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_114

    .line 35
    :cond_b7
    :try_start_b7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_b7 .. :try_end_c7} :catch_d9
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c7} :catch_c8

    return-object p0

    :catch_c8
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_114

    :catch_d9
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_114

    .line 48
    :cond_ea
    :try_start_ea
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_f2
    .catch Ljava/lang/NumberFormatException; {:try_start_ea .. :try_end_f2} :catch_104
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f2} :catch_f3

    return-object p0

    :catch_f3
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_114

    :catch_104
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_114
    return-object p1

    .line 54
    :cond_115
    :goto_115
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Argument Warning ! value is "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "And default Value:NaN"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object p1
.end method

.method public static getFloatByViewport(Ljava/lang/Object;F)F
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXUtils;->floatByViewport(Ljava/lang/Object;F)F

    move-result p0

    return p0
.end method

.method public static getFloatByViewport(Ljava/lang/Object;I)F
    .registers 2

    int-to-float p1, p1

    .line 2
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXUtils;->floatByViewport(Ljava/lang/Object;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/Object;)I
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 11

    const-string v0, "Argument value is null, df is"

    if-nez p0, :cond_5

    return-object p1

    .line 1
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/taobao/weex/utils/WXUtils;->sCache:Landroidx/collection/LruCache;

    invoke-virtual {v2, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_18

    return-object v2

    .line 9
    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2d

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 9
    :cond_2d
    const-string v2, ""

    .line 12
    :goto_2f
    const-string/jumbo v4, "wx"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const v5, 0x443b8000    # 750.0f

    const-string v6, "Argument error! value is "

    const-string v7, "Argument format error! value is "

    if-eqz v4, :cond_8b

    .line 13
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the value of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " use wx unit, which will be not supported soon after."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 19
    :cond_5c
    :try_start_5c
    invoke-static {v1, v5}, Lcom/taobao/weex/utils/WXUtils;->transferWx(Ljava/lang/String;F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_65} :catch_79
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_65} :catch_67

    goto/16 :goto_189

    :catch_67
    move-exception v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_188

    :catch_79
    move-exception v0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_188

    .line 28
    :cond_8b
    const-string v4, "px"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "."

    if-eqz v2, :cond_132

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v8, 0x3

    if-le v0, v8, :cond_e6

    const-string v0, "rpx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-string/jumbo v0, "upx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 31
    :cond_ae
    :try_start_ae
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0, v5}, Lcom/taobao/weex/utils/WXUtils;->transferRpxAndUpx(Ljava/lang/String;F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_c0
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_c0} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_c0} :catch_c2

    goto/16 :goto_189

    :catch_c2
    move-exception v0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_188

    :catch_d4
    move-exception v0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_188

    .line 43
    :cond_e6
    :try_start_e6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_106

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 45
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_189

    .line 47
    :cond_106
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_10e
    .catch Ljava/lang/NumberFormatException; {:try_start_e6 .. :try_end_10e} :catch_121
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_10e} :catch_110

    goto/16 :goto_189

    :catch_110
    move-exception v0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_188

    :catch_121
    move-exception v0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_188

    .line 60
    :cond_132
    :try_start_132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_151

    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 62
    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_189

    .line 64
    :cond_148
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_189

    .line 67
    :cond_151
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_188

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_166
    .catch Ljava/lang/NumberFormatException; {:try_start_132 .. :try_end_166} :catch_178
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_166} :catch_167

    goto :goto_188

    :catch_167
    move-exception v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_188

    :catch_178
    move-exception v0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_188
    :goto_188
    move-object p0, p1

    :goto_189
    if-eqz p0, :cond_196

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_196

    .line 81
    sget-object p1, Lcom/taobao/weex/utils/WXUtils;->sCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, v1, p0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_196
    return-object p0
.end method

.method public static getLong(Ljava/lang/Object;)J
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 1
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2
    const-string/jumbo v3, "wx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x443b8000    # 750.0f

    const-string v5, "Argument error! value is "

    const-string v6, "Argument format error! value is "

    if-eqz v3, :cond_64

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "the value of "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " use wx unit, which will be not supported soon after."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 7
    :cond_3a
    :try_start_3a
    invoke-static {v2, v4}, Lcom/taobao/weex/utils/WXUtils;->transferWx(Ljava/lang/String;F)F

    move-result p0
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3e} :catch_52
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_40

    float-to-long v0, p0

    return-wide v0

    :catch_40
    move-exception v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10b

    :catch_52
    move-exception v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10b

    .line 16
    :cond_64
    const-string v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-le v7, v9, :cond_b6

    const-string v7, "rpx"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_85

    const-string/jumbo v7, "upx"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 19
    :cond_85
    :try_start_85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2, v4}, Lcom/taobao/weex/utils/WXUtils;->transferRpxAndUpx(Ljava/lang/String;F)F

    move-result p0
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_92} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_92} :catch_94

    float-to-long v0, p0

    return-wide v0

    :catch_94
    move-exception v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    :catch_a5
    move-exception v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    .line 31
    :cond_b6
    :try_start_b6
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c2
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_c2} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c2} :catch_c3

    return-wide v0

    :catch_c3
    move-exception v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    :catch_d4
    move-exception v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    .line 44
    :cond_e5
    :try_start_e5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_e9} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e9} :catch_ea

    return-wide v0

    :catch_ea
    move-exception v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    :catch_fb
    move-exception v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10b
    return-wide v0
.end method

.method public static getNumberInt(Ljava/lang/Object;I)I
    .registers 4

    if-nez p0, :cond_3

    goto :goto_29

    .line 1
    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 5
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_24

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0

    .line 9
    :cond_24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_29

    return p0

    :catch_29
    :goto_29
    return p1
.end method

.method public static getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    .line 1
    :cond_3
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 2
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static indexLineBreak(Ljava/lang/String;I)I
    .registers 4

    .line 1
    const-string v0, "\r"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 3
    const-string v0, "\n"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :cond_f
    if-ne v0, v1, :cond_18

    .line 6
    const-string v0, "\r\n"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_18
    return v0
.end method

.method public static isTabletDevice()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_15

    const/4 v0, 0x1

    :catch_15
    :cond_15
    return v0
.end method

.method public static isUiThread()Z
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static isUndefined(F)Z
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    return p0
.end method

.method public static parseFloat(Ljava/lang/Object;)F
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 3

    const-string v0, "WXUtils parseFloat illegal value is "

    .line 2
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "null"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 5
    :cond_15
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2a} :catch_2b

    goto :goto_39

    :catch_2b
    move-exception p0

    .line 10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 11
    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_39
    :goto_39
    const/4 p0, 0x0

    return p0
.end method

.method public static parseInt(Ljava/lang/Object;)I
    .registers 1

    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXUtils;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    :catch_13
    move-exception p0

    .line 5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6
    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private static parsePercent(Ljava/lang/String;I)I
    .registers 3

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    int-to-float p1, p1

    mul-float p0, p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static parseUnitOrPercent(Ljava/lang/String;I)I
    .registers 4

    const/16 v0, 0x25

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXUtils;->parsePercent(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 5
    :cond_13
    invoke-static {p0}, Lcom/taobao/weex/utils/WXUtils;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static splitLineBreak(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 4
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_10
    array-length v1, v0

    if-ne v1, v2, :cond_1a

    .line 7
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object v0
.end method

.method private static transferRpxAndUpx(Ljava/lang/String;F)F
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    const-string v0, "rpx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_27

    .line 3
    :cond_16
    const-string/jumbo v0, "upx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_27
    :goto_27
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 7
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getViewProt()F

    move-result v0

    div-float/2addr v0, p1

    mul-float v0, v0, p0

    return v0
.end method

.method private static transferWx(Ljava/lang/String;F)F
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    const-string/jumbo v0, "wx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_16
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 5
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    mul-float v0, v0, p1

    .line 6
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method
