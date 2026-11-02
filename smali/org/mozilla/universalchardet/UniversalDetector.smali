###### Class org.mozilla.universalchardet.UniversalDetector (org.mozilla.universalchardet.UniversalDetector)
.class public Lorg/mozilla/universalchardet/UniversalDetector;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    }
.end annotation


# static fields
.field public static final MINIMUM_THRESHOLD:F = 0.2f

.field public static final SHORTCUT_THRESHOLD:F = 0.95f


# instance fields
.field private detectedCharset:Ljava/lang/String;

.field private done:Z

.field private escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private gotData:Z

.field private inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field private lastChar:B

.field private listener:Lorg/mozilla/universalchardet/CharsetListener;

.field private probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private start:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/universalchardet/CharsetListener;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 p1, 0x1

    .line 5
    new-array p1, p1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 7
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    return-void
.end method

.method public static detectCharset(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x1000

    .line 3
    :try_start_7
    new-array p0, p0, [B

    .line 5
    new-instance v1, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    .line 8
    :goto_f
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_20

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v3

    if-nez v3, :cond_20

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, p0, v3, v2}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    goto :goto_f

    .line 11
    :cond_20
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 13
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2e

    .line 17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_2e
    move-exception p0

    .line 18
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw p0
.end method


# virtual methods
.method public dataEnd()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    if-nez v0, :cond_5

    goto :goto_48

    .line 5
    :cond_5
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 7
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    if-eqz v1, :cond_48

    .line 8
    invoke-interface {v1, v0}, Lorg/mozilla/universalchardet/CharsetListener;->report(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_14
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v0, v1, :cond_48

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 18
    :goto_1e
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v4, v3

    if-ge v0, v4, :cond_32

    .line 19
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_2f

    move v1, v0

    move v2, v3

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_32
    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_48

    .line 27
    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    if-eqz v1, :cond_48

    .line 29
    invoke-interface {v1, v0}, Lorg/mozilla/universalchardet/CharsetListener;->report(Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public getDetectedCharset()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lorg/mozilla/universalchardet/CharsetListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    return-object v0
.end method

.method public handleData([B)V
    .registers 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    return-void
.end method

.method public handleData([BII)V
    .registers 13

    .line 2
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    if-eqz v0, :cond_6

    goto/16 :goto_117

    :cond_6
    const/4 v0, 0x1

    if-lez p3, :cond_b

    .line 7
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    .line 10
    :cond_b
    iget-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_83

    .line 11
    iput-boolean v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    const/4 v1, 0x3

    if-le p3, v1, :cond_83

    .line 13
    aget-byte v1, p1, p2

    const/16 v3, 0xff

    and-int/2addr v1, v3

    add-int/lit8 v4, p2, 0x1

    .line 14
    aget-byte v4, p1, v4

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x2

    .line 15
    aget-byte v5, p1, v5

    and-int/2addr v5, v3

    add-int/lit8 v6, p2, 0x3

    .line 16
    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    const/16 v7, 0xfe

    if-eqz v1, :cond_67

    const/16 v8, 0xef

    if-eq v1, v8, :cond_5a

    if-eq v1, v7, :cond_48

    if-eq v1, v3, :cond_36

    goto :goto_7c

    :cond_36
    if-ne v4, v7, :cond_41

    if-nez v5, :cond_41

    if-nez v6, :cond_41

    .line 40
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32LE:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_7c

    :cond_41
    if-ne v4, v7, :cond_7c

    .line 42
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16LE:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_7c

    :cond_48
    if-ne v4, v3, :cond_53

    if-nez v5, :cond_53

    if-nez v6, :cond_53

    .line 43
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_7c

    :cond_53
    if-ne v4, v3, :cond_7c

    .line 45
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_7c

    :cond_5a
    const/16 v1, 0xbb

    if-ne v4, v1, :cond_7c

    const/16 v1, 0xbf

    if-ne v5, v1, :cond_7c

    .line 46
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_7c

    :cond_67
    if-nez v4, :cond_72

    if-ne v5, v7, :cond_72

    if-ne v6, v3, :cond_72

    .line 58
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32BE:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_7c

    :cond_72
    if-nez v4, :cond_7c

    if-ne v5, v3, :cond_7c

    if-ne v6, v7, :cond_7c

    .line 60
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 74
    :cond_7c
    :goto_7c
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-eqz v1, :cond_83

    .line 75
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    return-void

    :cond_83
    add-int v1, p2, p3

    move v3, p2

    :goto_86
    if-ge v3, v1, :cond_ce

    .line 83
    aget-byte v4, p1, v3

    and-int/lit16 v5, v4, 0xff

    and-int/lit16 v6, v4, 0x80

    if-eqz v6, :cond_b1

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_b1

    .line 85
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-eq v4, v5, :cond_cb

    .line 86
    iput-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 88
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v4, :cond_a3

    const/4 v4, 0x0

    .line 89
    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 92
    :cond_a3
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v5, v4, v2

    if-nez v5, :cond_cb

    .line 93
    new-instance v5, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;

    invoke-direct {v5}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;-><init>()V

    aput-object v5, v4, v2

    goto :goto_cb

    .line 103
    :cond_b1
    iget-object v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v7, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v6, v7, :cond_c9

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_c5

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_c9

    iget-byte v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    const/16 v6, 0x7e

    if-ne v5, v6, :cond_c9

    .line 105
    :cond_c5
    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 107
    :cond_c9
    iput-byte v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    :cond_cb
    :goto_cb
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    .line 112
    :cond_ce
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v1, v3, :cond_f4

    .line 113
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v1, :cond_df

    .line 114
    new-instance v1, Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;-><init>()V

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 116
    :cond_df
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object p1

    .line 117
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne p1, p2, :cond_117

    .line 118
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 119
    iget-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    return-void

    .line 121
    :cond_f4
    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v1, v3, :cond_117

    .line 122
    :goto_f8
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v1

    if-ge v2, v3, :cond_117

    .line 123
    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v1

    .line 124
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v3, :cond_114

    .line 125
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 126
    iget-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    return-void

    :cond_114
    add-int/lit8 v2, v2, 0x1

    goto :goto_f8

    :cond_117
    :goto_117
    return-void
.end method

.method public isDone()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    return v0
.end method

.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    .line 5
    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 6
    iput-byte v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    .line 8
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v1, :cond_18

    .line 9
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 12
    :cond_18
    :goto_18
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v2, v1

    if-ge v0, v2, :cond_27

    .line 13
    aget-object v1, v1, v0

    if-eqz v1, :cond_24

    .line 14
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_27
    return-void
.end method

.method public setListener(Lorg/mozilla/universalchardet/CharsetListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    return-void
.end method

###### Class org.mozilla.universalchardet.UniversalDetector.InputState (org.mozilla.universalchardet.UniversalDetector$InputState)
.class public final enum Lorg/mozilla/universalchardet/UniversalDetector$InputState;
.super Ljava/lang/Enum;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/universalchardet/UniversalDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/universalchardet/UniversalDetector$InputState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field public static final enum ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field public static final enum HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field public static final enum PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    .registers 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const-string v1, "PURE_ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UniversalDetector$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 2
    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const-string v1, "ESC_ASCII"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UniversalDetector$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 3
    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const-string v1, "HIGHBYTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UniversalDetector$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 4
    invoke-static {}, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->$values()[Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->$VALUES:[Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    .registers 2

    .line 1
    const-class v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    .registers 1

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->$VALUES:[Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    invoke-virtual {v0}, [Lorg/mozilla/universalchardet/UniversalDetector$InputState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    return-object v0
.end method
