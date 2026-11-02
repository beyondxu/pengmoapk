###### Class com.dcloud.zxing2.datamatrix.encoder.DefaultPlacement (com.dcloud.zxing2.datamatrix.encoder.DefaultPlacement)
.class public Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field private final bits:[B

.field private final codewords:Ljava/lang/CharSequence;

.field private final numcols:I

.field private final numrows:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->codewords:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    .line 4
    iput p3, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    mul-int p2, p2, p3

    .line 5
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->bits:[B

    const/4 p2, -0x1

    .line 6
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method private corner1(I)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 2
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    sub-int/2addr v0, v1

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 3
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    sub-int/2addr v0, v1

    const/4 v4, 0x3

    invoke-direct {p0, v0, v3, p1, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 4
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v3

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 5
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v1

    const/4 v5, 0x5

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 6
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 7
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v1

    const/4 v2, 0x7

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 8
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method

.method private corner2(I)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 2
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v2, p1, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 3
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 4
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    const/4 v5, 0x4

    sub-int/2addr v0, v5

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 5
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 6
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v4

    const/4 v1, 0x6

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 7
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v3

    const/4 v1, 0x7

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 8
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v3

    const/16 v1, 0x8

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method

.method private corner3(I)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 2
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v2, p1, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 3
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 4
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 5
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v3

    const/4 v5, 0x5

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 6
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v3

    const/4 v2, 0x6

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 7
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v3

    const/4 v2, 0x7

    invoke-direct {p0, v4, v0, p1, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 8
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v3

    const/16 v2, 0x8

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method

.method private corner4(I)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 2
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v3, v1

    const/4 v4, 0x2

    invoke-direct {p0, v0, v3, p1, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 3
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    const/4 v3, 0x3

    sub-int/2addr v0, v3

    invoke-direct {p0, v2, v0, p1, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 4
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 5
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v1

    const/4 v5, 0x5

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 6
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v3

    const/4 v2, 0x6

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 7
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v4

    const/4 v2, 0x7

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    .line 8
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v0, v1

    const/16 v2, 0x8

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method

.method private module(IIII)V
    .registers 6

    if-gez p1, :cond_c

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/2addr p1, v0

    add-int/lit8 v0, v0, 0x4

    .line 2
    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    :cond_c
    if-gez p2, :cond_18

    .line 5
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/2addr p2, v0

    add-int/lit8 v0, v0, 0x4

    .line 6
    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    .line 9
    :cond_18
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->codewords:Ljava/lang/CharSequence;

    invoke-interface {v0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    rsub-int/lit8 p4, p4, 0x8

    const/4 v0, 0x1

    shl-int p4, v0, p4

    and-int/2addr p3, p4

    if-eqz p3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 11
    :goto_28
    invoke-virtual {p0, p2, p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->setBit(IIZ)V

    return-void
.end method

.method private utah(III)V
    .registers 8

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, v0, v1, p3, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x2

    .line 2
    invoke-direct {p0, v0, v2, p3, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v0, p1, -0x1

    const/4 v3, 0x3

    .line 3
    invoke-direct {p0, v0, v1, p3, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v3, 0x4

    .line 4
    invoke-direct {p0, v0, v2, p3, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v3, 0x5

    .line 5
    invoke-direct {p0, v0, p2, p3, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v0, 0x6

    .line 6
    invoke-direct {p0, p1, v1, p3, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v0, 0x7

    .line 7
    invoke-direct {p0, p1, v2, p3, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/16 v0, 0x8

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method


# virtual methods
.method public final getBit(II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->bits:[B

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    aget-byte p1, v0, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_d

    return p2

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method final getBits()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->bits:[B

    return-object v0
.end method

.method final getNumcols()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    return v0
.end method

.method final getNumrows()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    return v0
.end method

.method final hasBit(II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->bits:[B

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    aget-byte p1, v0, p2

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public final place()V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1
    :cond_4
    iget v4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    if-ne v3, v4, :cond_10

    if-nez v0, :cond_10

    add-int/lit8 v4, v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->corner1(I)V

    move v2, v4

    .line 4
    :cond_10
    iget v4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_23

    if-nez v0, :cond_23

    iget v4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_23

    add-int/lit8 v4, v2, 0x1

    .line 5
    invoke-direct {p0, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->corner2(I)V

    move v2, v4

    .line 7
    :cond_23
    iget v4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_36

    if-nez v0, :cond_36

    iget v4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    rem-int/lit8 v4, v4, 0x8

    if-ne v4, v1, :cond_36

    add-int/lit8 v4, v2, 0x1

    .line 8
    invoke-direct {p0, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->corner3(I)V

    move v2, v4

    .line 10
    :cond_36
    iget v4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/2addr v4, v1

    if-ne v3, v4, :cond_49

    if-ne v0, v5, :cond_49

    iget v4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_49

    add-int/lit8 v4, v2, 0x1

    .line 11
    invoke-direct {p0, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->corner4(I)V

    move v2, v4

    .line 15
    :cond_49
    :goto_49
    iget v4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    if-ge v3, v4, :cond_5b

    if-ltz v0, :cond_5b

    invoke-virtual {p0, v0, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->hasBit(II)Z

    move-result v4

    if-nez v4, :cond_5b

    add-int/lit8 v4, v2, 0x1

    .line 16
    invoke-direct {p0, v3, v0, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->utah(III)V

    move v2, v4

    :cond_5b
    add-int/lit8 v4, v3, -0x2

    add-int/lit8 v6, v0, 0x2

    if-ltz v4, :cond_69

    .line 20
    iget v7, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    if-lt v6, v7, :cond_66

    goto :goto_69

    :cond_66
    move v3, v4

    move v0, v6

    goto :goto_49

    :cond_69
    :goto_69
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, 0x5

    :goto_6d
    if-ltz v3, :cond_7f

    .line 26
    iget v4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    if-ge v0, v4, :cond_7f

    invoke-virtual {p0, v0, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->hasBit(II)Z

    move-result v4

    if-nez v4, :cond_7f

    add-int/lit8 v4, v2, 0x1

    .line 27
    invoke-direct {p0, v3, v0, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->utah(III)V

    move v2, v4

    :cond_7f
    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v6, v0, -0x2

    .line 31
    iget v7, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    if-ge v4, v7, :cond_8d

    if-gez v6, :cond_8a

    goto :goto_8d

    :cond_8a
    move v3, v4

    move v0, v6

    goto :goto_6d

    :cond_8d
    :goto_8d
    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v0, v0, -0x1

    if-lt v3, v7, :cond_4

    .line 36
    iget v4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    if-lt v0, v4, :cond_4

    const/4 v0, 0x1

    sub-int/2addr v4, v0

    sub-int/2addr v7, v0

    .line 39
    invoke-virtual {p0, v4, v7}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->hasBit(II)Z

    move-result v1

    if-nez v1, :cond_b2

    .line 40
    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->setBit(IIZ)V

    .line 41
    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    sub-int/2addr v1, v5

    iget v2, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numrows:I

    sub-int/2addr v2, v5

    invoke-virtual {p0, v1, v2, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->setBit(IIZ)V

    :cond_b2
    return-void
.end method

.method final setBit(IIZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->bits:[B

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->numcols:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    aput-byte p3, v0, p2

    return-void
.end method
