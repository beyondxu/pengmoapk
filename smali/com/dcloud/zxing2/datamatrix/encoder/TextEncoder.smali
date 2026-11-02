###### Class com.dcloud.zxing2.datamatrix.encoder.TextEncoder (com.dcloud.zxing2.datamatrix.encoder.TextEncoder)
.class final Lcom/dcloud/zxing2/datamatrix/encoder/TextEncoder;
.super Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method encodeChar(CLjava/lang/StringBuilder;)I
    .registers 7

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    const/4 p1, 0x3

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_a
    const/16 v0, 0x30

    if-lt p1, v0, :cond_19

    const/16 v0, 0x39

    if-gt p1, v0, :cond_19

    add-int/lit8 p1, p1, -0x2c

    int-to-char p1, p1

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_19
    const/16 v0, 0x61

    if-lt p1, v0, :cond_28

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_28

    add-int/lit8 p1, p1, -0x53

    int-to-char p1, p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_28
    const/4 v0, 0x2

    if-ltz p1, :cond_37

    const/16 v2, 0x1f

    if-gt p1, v2, :cond_37

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_37
    const/16 v2, 0x21

    if-lt p1, v2, :cond_48

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_48

    .line 18
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    int-to-char p1, p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_48
    const/16 v2, 0x3a

    const/16 v3, 0x40

    if-lt p1, v2, :cond_5a

    if-gt p1, v3, :cond_5a

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x2b

    int-to-char p1, p1

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_5a
    const/16 v2, 0x5b

    if-lt p1, v2, :cond_6c

    const/16 v2, 0x5f

    if-gt p1, v2, :cond_6c

    .line 28
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x45

    int-to-char p1, p1

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_6c
    const/16 v1, 0x60

    if-ne p1, v1, :cond_79

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v1

    int-to-char p1, p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_79
    const/16 v2, 0x41

    if-lt p1, v2, :cond_8a

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_8a

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v3

    int-to-char p1, p1

    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_8a
    const/16 v2, 0x7b

    if-lt p1, v2, :cond_9b

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_9b

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v1

    int-to-char p1, p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_9b
    const/16 v1, 0x80

    if-lt p1, v1, :cond_ac

    .line 48
    const-string v2, "\u0001\u001e"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v1

    int-to-char p1, p1

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/TextEncoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v0

    return p1

    .line 53
    :cond_ac
    invoke-static {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    const/4 p1, -0x1

    return p1
.end method

.method public getEncodingMode()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
