###### Class com.dcloud.zxing2.oned.rss.expanded.BitArrayBuilder (com.dcloud.zxing2.oned.rss.expanded.BitArrayBuilder)
.class final Lcom/dcloud/zxing2/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/dcloud/zxing2/common/BitArray;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/dcloud/zxing2/common/BitArray;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v2

    if-nez v2, :cond_1c

    add-int/lit8 v1, v0, -0x2

    :cond_1c
    mul-int/lit8 v1, v1, 0xc

    .line 8
    new-instance v0, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/common/BitArray;-><init>(I)V

    const/4 v1, 0x0

    .line 11
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 12
    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v2

    const/16 v4, 0xb

    const/16 v5, 0xb

    :goto_36
    if-ltz v5, :cond_45

    shl-int v6, v3, v5

    and-int/2addr v6, v2

    if-eqz v6, :cond_40

    .line 15
    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/common/BitArray;->set(I)V

    :cond_40
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_36

    :cond_45
    const/4 v2, 0x1

    .line 20
    :goto_46
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_8d

    .line 21
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 23
    invoke-virtual {v5}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v6

    const/16 v7, 0xb

    :goto_5c
    if-ltz v7, :cond_6b

    shl-int v8, v3, v7

    and-int/2addr v8, v6

    if-eqz v8, :cond_66

    .line 26
    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/common/BitArray;->set(I)V

    :cond_66
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_5c

    .line 31
    :cond_6b
    invoke-virtual {v5}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v6

    if-eqz v6, :cond_8a

    .line 32
    invoke-virtual {v5}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v5

    const/16 v6, 0xb

    :goto_7b
    if-ltz v6, :cond_8a

    shl-int v7, v3, v6

    and-int/2addr v7, v5

    if-eqz v7, :cond_85

    .line 35
    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/common/BitArray;->set(I)V

    :cond_85
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_7b

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_8d
    return-object v0
.end method
