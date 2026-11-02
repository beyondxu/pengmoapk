###### Class com.dcloud.zxing2.oned.rss.expanded.RSSExpandedReader (com.dcloud.zxing2.oned.rss.expanded.RSSExpandedReader)
.class public final Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;
.super Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .registers 35

    const/4 v0, 0x7

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    const/16 v5, 0x68

    const/16 v6, 0xcc

    const/16 v7, 0x14

    const/16 v8, 0x34

    .line 2
    filled-new-array {v2, v7, v8, v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    const/16 v5, 0xb84

    const/16 v6, 0xf94

    const/4 v8, 0x0

    const/16 v9, 0x15c

    const/16 v10, 0x56c

    .line 3
    filled-new-array {v8, v9, v10, v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    const/4 v5, 0x6

    .line 5
    new-array v6, v5, [[I

    const/16 v9, 0x8

    filled-new-array {v4, v9, v2, v4}, [I

    move-result-object v10

    aput-object v10, v6, v8

    filled-new-array {v3, v5, v2, v4}, [I

    move-result-object v10

    aput-object v10, v6, v4

    filled-new-array {v3, v2, v5, v4}, [I

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v6, v11

    filled-new-array {v3, v11, v9, v4}, [I

    move-result-object v10

    aput-object v10, v6, v3

    filled-new-array {v11, v5, v1, v4}, [I

    move-result-object v10

    aput-object v10, v6, v2

    const/16 v10, 0x9

    filled-new-array {v11, v11, v10, v4}, [I

    move-result-object v12

    aput-object v12, v6, v1

    sput-object v6, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 14
    new-array v6, v9, [I

    fill-array-data v6, :array_198

    new-array v12, v9, [I

    fill-array-data v12, :array_1ac

    new-array v13, v9, [I

    fill-array-data v13, :array_1c0

    new-array v14, v9, [I

    fill-array-data v14, :array_1d4

    new-array v15, v9, [I

    fill-array-data v15, :array_1e8

    const/16 v16, 0x5

    new-array v1, v9, [I

    fill-array-data v1, :array_1fc

    const/16 v17, 0x14

    new-array v7, v9, [I

    fill-array-data v7, :array_210

    const/16 v18, 0x4

    new-array v2, v9, [I

    fill-array-data v2, :array_224

    const/16 v19, 0x3

    new-array v3, v9, [I

    fill-array-data v3, :array_238

    const/16 v20, 0x2

    new-array v11, v9, [I

    fill-array-data v11, :array_24c

    const/16 v21, 0x1

    new-array v4, v9, [I

    fill-array-data v4, :array_260

    const/16 v22, 0x0

    new-array v8, v9, [I

    fill-array-data v8, :array_274

    const/16 v23, 0x9

    new-array v10, v9, [I

    fill-array-data v10, :array_288

    const/16 v24, 0x7

    new-array v0, v9, [I

    fill-array-data v0, :array_29c

    const/16 v25, 0x6

    new-array v5, v9, [I

    fill-array-data v5, :array_2b0

    move-object/from16 v26, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_2c4

    move-object/from16 v27, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_2d8

    move-object/from16 v28, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_2ec

    move-object/from16 v29, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_300

    move-object/from16 v30, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_314

    move-object/from16 v31, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_328

    move-object/from16 v32, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_33c

    move-object/from16 v33, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_350

    const/16 v34, 0x8

    const/16 v9, 0x17

    new-array v9, v9, [[I

    aput-object v6, v9, v22

    aput-object v12, v9, v21

    aput-object v13, v9, v20

    aput-object v14, v9, v19

    aput-object v15, v9, v18

    aput-object v1, v9, v16

    aput-object v7, v9, v25

    aput-object v2, v9, v24

    aput-object v3, v9, v34

    aput-object v11, v9, v23

    const/16 v1, 0xa

    aput-object v4, v9, v1

    const/16 v2, 0xb

    aput-object v8, v9, v2

    const/16 v2, 0xc

    aput-object v10, v9, v2

    const/16 v2, 0xd

    aput-object v26, v9, v2

    const/16 v2, 0xe

    aput-object v5, v9, v2

    const/16 v2, 0xf

    aput-object v27, v9, v2

    const/16 v2, 0x10

    aput-object v28, v9, v2

    const/16 v2, 0x11

    aput-object v29, v9, v2

    const/16 v2, 0x12

    aput-object v30, v9, v2

    const/16 v2, 0x13

    aput-object v31, v9, v2

    aput-object v32, v9, v17

    const/16 v2, 0x15

    aput-object v33, v9, v2

    const/16 v2, 0x16

    aput-object v0, v9, v2

    sput-object v9, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    const/4 v0, 0x6

    .line 47
    new-array v2, v0, [I

    fill-array-data v2, :array_364

    const/4 v0, 0x7

    new-array v3, v0, [I

    fill-array-data v3, :array_374

    const/16 v0, 0x8

    new-array v4, v0, [I

    fill-array-data v4, :array_386

    const/16 v0, 0x9

    new-array v5, v0, [I

    fill-array-data v5, :array_39a

    new-array v0, v1, [I

    fill-array-data v0, :array_3b0

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_3c8

    new-array v1, v1, [[I

    const/4 v7, 0x0

    filled-new-array {v7, v7}, [I

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v8, 0x1

    filled-new-array {v7, v8, v8}, [I

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    filled-new-array {v7, v10, v8, v9}, [I

    move-result-object v11

    aput-object v11, v1, v10

    const/4 v11, 0x4

    filled-new-array {v7, v11, v8, v9, v10}, [I

    move-result-object v7

    aput-object v7, v1, v9

    aput-object v2, v1, v11

    aput-object v3, v1, v16

    const/16 v25, 0x6

    aput-object v4, v1, v25

    const/16 v24, 0x7

    aput-object v5, v1, v24

    const/16 v34, 0x8

    aput-object v0, v1, v34

    const/16 v23, 0x9

    aput-object v6, v1, v23

    sput-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    nop

    :array_198
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_1ac
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_1c0
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_1d4
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_1e8
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_1fc
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_210
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_224
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_238
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_24c
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_260
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_274
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_288
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_29c
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_2b0
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_2c4
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_2d8
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_2ec
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_300
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_314
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_328
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_33c
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_350
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_364
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_374
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_386
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_39a
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_3b0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_3c8
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    const/4 v0, 0x2

    .line 66
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->count([I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->count([I)I

    move-result v1

    add-int v2, v0, v1

    sub-int/2addr v2, p1

    and-int/lit8 p1, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    const/4 v5, 0x0

    :goto_23
    const/4 v6, 0x4

    const/16 v7, 0xd

    if-le v0, v7, :cond_2b

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_31

    :cond_2b
    if-ge v0, v6, :cond_2f

    const/4 v8, 0x1

    goto :goto_30

    :cond_2f
    const/4 v8, 0x0

    :goto_30
    const/4 v9, 0x0

    :goto_31
    if-le v1, v7, :cond_35

    const/4 v6, 0x1

    goto :goto_39

    :cond_35
    if-ge v1, v6, :cond_38

    const/4 v3, 0x1

    :cond_38
    const/4 v6, 0x0

    :goto_39
    if-ne v2, v4, :cond_51

    if-eqz p1, :cond_47

    if-nez v5, :cond_42

    move v4, v8

    :goto_40
    const/4 v9, 0x1

    goto :goto_7c

    .line 26
    :cond_42
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_47
    if-eqz v5, :cond_4c

    move v4, v8

    :goto_4a
    const/4 v6, 0x1

    goto :goto_7c

    .line 31
    :cond_4c
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_51
    const/4 v7, -0x1

    if-ne v2, v7, :cond_68

    if-eqz p1, :cond_5e

    if-nez v5, :cond_59

    goto :goto_7c

    .line 38
    :cond_59
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_5e
    if-eqz v5, :cond_63

    move v4, v8

    const/4 v3, 0x1

    goto :goto_7c

    .line 43
    :cond_63
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_68
    if-nez v2, :cond_c6

    if-eqz p1, :cond_79

    if-eqz v5, :cond_74

    if-ge v0, v1, :cond_71

    goto :goto_4a

    :cond_71
    move v4, v8

    const/4 v3, 0x1

    goto :goto_40

    .line 50
    :cond_74
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_79
    if-nez v5, :cond_c1

    move v4, v8

    :goto_7c
    if-eqz v4, :cond_91

    if-nez v9, :cond_8c

    .line 74
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_91

    .line 75
    :cond_8c
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_91
    :goto_91
    if-eqz v9, :cond_9e

    .line 80
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_9e
    if-eqz v3, :cond_b3

    if-nez v6, :cond_ae

    .line 86
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_b3

    .line 87
    :cond_ae
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_b3
    :goto_b3
    if-eqz v6, :cond_c0

    .line 92
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_c0
    return-void

    .line 93
    :cond_c1
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 98
    :cond_c6
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private checkChecksum()Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 2
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v0

    if-nez v0, :cond_14

    return v1

    .line 9
    :cond_14
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 12
    :goto_1b
    iget-object v6, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_48

    .line 13
    iget-object v6, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 14
    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v7, v3, 0x1

    .line 16
    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 18
    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v3, v3, 0x2

    goto :goto_45

    :cond_44
    move v3, v7

    :goto_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 23
    :cond_48
    rem-int/lit16 v0, v0, 0xd3

    add-int/lit8 v3, v3, -0x4

    mul-int/lit16 v3, v3, 0xd3

    add-int/2addr v3, v0

    .line 27
    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v0

    if-ne v3, v0, :cond_56

    return v4

    :cond_56
    return v1
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5e

    .line 21
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    .line 22
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_2e

    .line 25
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    invoke-virtual {v4}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 27
    :cond_2e
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_5b

    .line 33
    :cond_40
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 34
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object p1

    .line 37
    :cond_49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p2, 0x1

    .line 42
    :try_start_56
    invoke-direct {p0, v1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1
    :try_end_5a
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_56 .. :try_end_5a} :catch_5b

    return-object p1

    :catch_5b
    :goto_5b
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 48
    :cond_5e
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private checkRows(Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-le v0, v1, :cond_11

    .line 2
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object v2

    .line 6
    :cond_11
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1d

    .line 8
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 13
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2
    :try_end_27
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_1d .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    nop

    :goto_29
    if-eqz p1, :cond_30

    .line 19
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_30
    return-object v2
.end method

.method static constructResult(Ljava/util/List;)Lcom/dcloud/zxing2/Result;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/dcloud/zxing2/common/BitArray;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/dcloud/zxing2/common/BitArray;)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v2

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object p0

    .line 9
    new-instance v3, Lcom/dcloud/zxing2/Result;

    aget-object v5, v2, v1

    aget-object v2, v2, v4

    aget-object v6, p0, v1

    aget-object p0, p0, v4

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/dcloud/zxing2/ResultPoint;

    aput-object v5, v7, v1

    aput-object v2, v7, v4

    const/4 v1, 0x2

    aput-object v6, v7, v1

    const/4 v1, 0x3

    aput-object p0, v7, v1

    sget-object p0, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1, v7, p0}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    return-object v3
.end method

.method private findNextPair(Lcom/dcloud/zxing2/common/BitArray;Ljava/util/List;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 3
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 4
    aput v1, v0, v3

    const/4 v4, 0x3

    .line 5
    aput v1, v0, v4

    .line 7
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v5

    if-ltz p3, :cond_17

    goto :goto_34

    .line 12
    :cond_17
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1f

    const/4 p3, 0x0

    goto :goto_34

    .line 15
    :cond_1f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 16
    invoke-virtual {p3}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object p3

    aget p3, p3, v2

    .line 18
    :goto_34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p2, v3

    if-eqz p2, :cond_3d

    const/4 p2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p2, 0x0

    .line 19
    :goto_3e
    iget-boolean v6, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v6, :cond_44

    xor-int/lit8 p2, p2, 0x1

    :cond_44
    const/4 v6, 0x0

    :goto_45
    if-ge p3, v5, :cond_55

    .line 25
    invoke-virtual {p1, p3}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v6

    xor-int/lit8 v7, v6, 0x1

    if-eqz v6, :cond_51

    move v6, v7

    goto :goto_55

    :cond_51
    add-int/lit8 p3, p3, 0x1

    move v6, v7

    goto :goto_45

    :cond_55
    :goto_55
    move v7, v6

    const/4 v8, 0x0

    move v6, p3

    :goto_58
    if-ge p3, v5, :cond_9e

    .line 35
    invoke-virtual {p1, p3}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v7

    if-eqz v9, :cond_67

    .line 36
    aget v9, v0, v8

    add-int/2addr v9, v2

    aput v9, v0, v8

    goto :goto_9b

    :cond_67
    if-ne v8, v4, :cond_95

    if-eqz p2, :cond_6e

    .line 40
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 43
    :cond_6e
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 44
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aput v6, p1, v1

    .line 45
    aput p3, p1, v2

    return-void

    :cond_7b
    if-eqz p2, :cond_80

    .line 50
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 53
    :cond_80
    aget v9, v0, v1

    aget v10, v0, v2

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    .line 54
    aget v9, v0, v3

    aput v9, v0, v1

    .line 55
    aget v9, v0, v4

    aput v9, v0, v2

    .line 56
    aput v1, v0, v3

    .line 57
    aput v1, v0, v4

    add-int/lit8 v8, v8, -0x1

    goto :goto_97

    :cond_95
    add-int/lit8 v8, v8, 0x1

    .line 62
    :goto_97
    aput v2, v0, v8

    xor-int/lit8 v7, v7, 0x1

    :goto_9b
    add-int/lit8 p3, p3, 0x1

    goto :goto_58

    .line 66
    :cond_9e
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private static getNextSecondBar(Lcom/dcloud/zxing2/common/BitArray;I)I
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->getNextUnset(I)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result p0

    return p0

    .line 5
    :cond_f
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->getNextUnset(I)I

    move-result p0

    return p0
.end method

.method private static isNotA1left(Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getValue()I

    move-result p0

    if-nez p0, :cond_d

    if-eqz p1, :cond_d

    if-nez p2, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 6
    invoke-virtual {v2, v4}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_14

    :cond_3b
    const/4 p0, 0x1

    return p0

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidSequence(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_32

    aget-object v4, v0, v3

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, v4

    if-le v5, v6, :cond_11

    goto :goto_2a

    :cond_11
    const/4 v5, 0x0

    .line 7
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_30

    .line 8
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getValue()I

    move-result v6

    aget v7, v4, v5

    if-eq v6, v7, :cond_2d

    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_30
    const/4 p0, 0x1

    return p0

    :cond_32
    return v2
.end method

.method private parseFoundFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ)Lcom/dcloud/zxing2/oned/rss/FinderPattern;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1e

    .line 1
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget p3, p3, v0

    sub-int/2addr p3, v1

    :goto_9
    if-ltz p3, :cond_14

    .line 3
    invoke-virtual {p1, p3}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_14

    add-int/lit8 p3, p3, -0x1

    goto :goto_9

    :cond_14
    add-int/2addr p3, v1

    .line 8
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v2, p1, v0

    sub-int/2addr v2, p3

    .line 10
    aget p1, p1, v1

    move v6, p3

    goto :goto_31

    .line 15
    :cond_1e
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v2, p3, v0

    .line 17
    aget p3, p3, v1

    add-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/dcloud/zxing2/common/BitArray;->getNextUnset(I)I

    move-result p1

    .line 18
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget p3, p3, v1

    sub-int p3, p1, p3

    move v6, v2

    move v2, p3

    :goto_31
    move v7, p1

    .line 22
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object p1

    .line 23
    array-length p3, p1

    sub-int/2addr p3, v1

    invoke-static {p1, v0, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    aput v2, p1, v0

    .line 28
    :try_start_3d
    sget-object p3, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {p1, p3}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->parseFinderValue([I[[I)I

    move-result v4
    :try_end_43
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_3d .. :try_end_43} :catch_4e

    .line 32
    new-instance v3, Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    filled-new-array {v6, v7}, [I

    move-result-object v5

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v3

    :catch_4e
    const/4 p1, 0x0

    return-object p1
.end method

.method private static removePartialRows(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1f

    goto :goto_4

    .line 7
    :cond_1f
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 10
    invoke-virtual {v1, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_27

    .line 22
    :cond_4a
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_4e
    return-void
.end method

.method private static reverseCounters([I)V
    .registers 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    .line 2
    :goto_2
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_15

    .line 3
    aget v2, p0, v1

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    .line 4
    aget v4, p0, v3

    aput v4, p0, v1

    .line 5
    aput v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return-void
.end method

.method private storeRow(IZ)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_3
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_29

    .line 2
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    .line 3
    invoke-virtual {v3}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-le v4, p1, :cond_20

    .line 4
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v0

    goto :goto_29

    .line 7
    :cond_20
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_29
    :goto_29
    if-nez v0, :cond_4c

    if-eqz v2, :cond_2e

    goto :goto_4c

    .line 19
    :cond_2e
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_4c

    .line 23
    :cond_39
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v2, v3, p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/List;Ljava/util/List;)V

    :cond_4c
    :goto_4c
    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Lcom/dcloud/zxing2/oned/rss/DataCharacter;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDataCharacterCounters()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    aput v2, v1, v2

    const/4 v3, 0x1

    .line 3
    aput v2, v1, v3

    const/4 v4, 0x2

    .line 4
    aput v2, v1, v4

    const/4 v5, 0x3

    .line 5
    aput v2, v1, v5

    const/4 v5, 0x4

    .line 6
    aput v2, v1, v5

    const/4 v6, 0x5

    .line 7
    aput v2, v1, v6

    const/4 v6, 0x6

    .line 8
    aput v2, v1, v6

    const/4 v6, 0x7

    .line 9
    aput v2, v1, v6

    if-eqz p4, :cond_2a

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v6

    aget v6, v6, v2

    invoke-static {v0, v6, v1}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPatternInReverse(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    goto :goto_45

    .line 14
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-static {v0, v6, v1}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    .line 16
    array-length v0, v1

    sub-int/2addr v0, v3

    const/4 v6, 0x0

    :goto_36
    if-ge v6, v0, :cond_45

    .line 17
    aget v7, v1, v6

    .line 18
    aget v8, v1, v0

    aput v8, v1, v6

    .line 19
    aput v7, v1, v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 24
    :cond_45
    :goto_45
    invoke-static {v1}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->count([I)I

    move-result v0

    int-to-float v0, v0

    const/16 v6, 0x11

    int-to-float v7, v6

    div-float/2addr v0, v7

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    aget v7, v7, v3

    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v8

    aget v8, v8, v2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x41700000    # 15.0f

    div-float/2addr v7, v8

    sub-float v8, v0, v7

    .line 28
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v8, v7

    const v7, 0x3e99999a    # 0.3f

    cmpl-float v8, v8, v7

    if-gtz v8, :cond_145

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v8

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v9

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v10

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v11

    const/4 v12, 0x0

    .line 37
    :goto_7e
    array-length v13, v1

    if-ge v12, v13, :cond_c3

    .line 38
    aget v13, v1, v12

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v13, v13, v14

    div-float/2addr v13, v0

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v14, v13

    float-to-int v14, v14

    if-ge v14, v3, :cond_9a

    cmpg-float v14, v13, v7

    if-ltz v14, :cond_95

    const/4 v14, 0x1

    goto :goto_ad

    .line 42
    :cond_95
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    :cond_9a
    const/16 v15, 0x8

    if-le v14, v15, :cond_ad

    const v14, 0x410b3333    # 8.7f

    cmpl-float v14, v13, v14

    if-gtz v14, :cond_a8

    const/16 v14, 0x8

    goto :goto_ad

    .line 47
    :cond_a8
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    .line 51
    :cond_ad
    :goto_ad
    div-int/lit8 v15, v12, 0x2

    and-int/lit8 v16, v12, 0x1

    if-nez v16, :cond_ba

    .line 53
    aput v14, v8, v15

    int-to-float v14, v14

    sub-float/2addr v13, v14

    .line 54
    aput v13, v10, v15

    goto :goto_c0

    .line 56
    :cond_ba
    aput v14, v9, v15

    int-to-float v14, v14

    sub-float/2addr v13, v14

    .line 57
    aput v13, v11, v15

    :goto_c0
    add-int/lit8 v12, v12, 0x1

    goto :goto_7e

    :cond_c3
    move-object/from16 v12, p0

    .line 61
    invoke-direct {v12, v6}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    if-eqz p3, :cond_d2

    const/4 v1, 0x0

    goto :goto_d3

    :cond_d2
    const/4 v1, 0x2

    :goto_d3
    add-int/2addr v0, v1

    xor-int/lit8 v1, p4, 0x1

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 67
    array-length v1, v8

    sub-int/2addr v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_dc
    if-ltz v1, :cond_f7

    .line 68
    invoke-static/range {p2 .. p4}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Z

    move-result v10

    if-eqz v10, :cond_f1

    .line 69
    sget-object v10, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v10, v10, v0

    mul-int/lit8 v11, v1, 0x2

    aget v10, v10, v11

    .line 70
    aget v11, v8, v1

    mul-int v11, v11, v10

    add-int/2addr v6, v11

    .line 72
    :cond_f1
    aget v10, v8, v1

    add-int/2addr v7, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_dc

    .line 76
    :cond_f7
    array-length v1, v9

    sub-int/2addr v1, v3

    const/4 v10, 0x0

    :goto_fa
    if-ltz v1, :cond_113

    .line 77
    invoke-static/range {p2 .. p4}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 78
    sget-object v11, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v11, v11, v0

    mul-int/lit8 v13, v1, 0x2

    add-int/2addr v13, v3

    aget v11, v11, v13

    .line 79
    aget v13, v9, v1

    mul-int v13, v13, v11

    add-int/2addr v10, v13

    :cond_110
    add-int/lit8 v1, v1, -0x1

    goto :goto_fa

    :cond_113
    add-int/2addr v6, v10

    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_140

    const/16 v0, 0xd

    if-gt v7, v0, :cond_140

    if-lt v7, v5, :cond_140

    sub-int/2addr v0, v7

    .line 89
    div-int/2addr v0, v4

    .line 90
    sget-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v1, v1, v0

    rsub-int/lit8 v4, v1, 0x9

    .line 92
    invoke-static {v8, v1, v3}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 93
    invoke-static {v9, v4, v2}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 94
    sget-object v3, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v3, v3, v0

    .line 95
    sget-object v4, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v0, v4, v0

    mul-int v1, v1, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 98
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    invoke-direct {v0, v1, v6}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;-><init>(II)V

    return-object v0

    .line 99
    :cond_140
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    :cond_145
    move-object/from16 v12, p0

    .line 100
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 4
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/dcloud/zxing2/common/BitArray;)Ljava/util/List;

    move-result-object p3

    .line 5
    invoke-static {p3}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/dcloud/zxing2/Result;

    move-result-object p1
    :try_end_10
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_8 .. :try_end_10} :catch_11

    return-object p1

    .line 10
    :catch_11
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x1

    .line 11
    iput-boolean p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/dcloud/zxing2/common/BitArray;)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1
.end method

.method decodeRow2pairs(ILcom/dcloud/zxing2/common/BitArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dcloud/zxing2/common/BitArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/dcloud/zxing2/common/BitArray;Ljava/util/List;I)Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_0

    :catch_c
    move-exception p2

    .line 6
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 12
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 13
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object p1

    .line 16
    :cond_1e
    iget-object p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->storeRow(IZ)V

    if-nez p2, :cond_39

    .line 22
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_31

    return-object p1

    :cond_31
    const/4 p1, 0x1

    .line 26
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_39

    return-object p1

    .line 32
    :cond_39
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 33
    :cond_3e
    throw p2
.end method

.method getRows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method retrieveNextPair(Lcom/dcloud/zxing2/common/BitArray;Ljava/util/List;I)Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 2
    :goto_d
    iget-boolean v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v3, :cond_13

    xor-int/lit8 v0, v0, 0x1

    :cond_13
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 11
    :cond_15
    invoke-direct {p0, p1, p2, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/dcloud/zxing2/common/BitArray;Ljava/util/List;I)V

    .line 12
    invoke-direct {p0, p1, p3, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ)Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object v5

    if-nez v5, :cond_27

    .line 14
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v3, v3, v1

    invoke-static {p1, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/dcloud/zxing2/common/BitArray;I)I

    move-result v3

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    if-nez v4, :cond_15

    .line 23
    invoke-virtual {p0, p1, v5, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object p3

    .line 25
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-virtual {p2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result p2

    if-nez p2, :cond_46

    goto :goto_4b

    .line 26
    :cond_46
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 31
    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-virtual {p0, p1, v5, v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object p1
    :try_end_4f
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_4b .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    const/4 p1, 0x0

    .line 36
    :goto_51
    new-instance p2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-direct {p2, p3, p1, v5, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;-><init>(Lcom/dcloud/zxing2/oned/rss/DataCharacter;Lcom/dcloud/zxing2/oned/rss/DataCharacter;Lcom/dcloud/zxing2/oned/rss/FinderPattern;Z)V

    return-object p2
.end method
