###### Class com.alibaba.fastjson.util.RyuDouble (com.alibaba.fastjson.util.RyuDouble)
.class public final Lcom/alibaba/fastjson/util/RyuDouble;
.super Ljava/lang/Object;
.source "RyuDouble.java"


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/4 v0, 0x2

    .line 23
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v4, 0x0

    const/16 v5, 0x146

    aput v5, v1, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    .line 24
    new-array v0, v0, [I

    aput v3, v0, v2

    const/16 v1, 0x123

    aput v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    .line 27
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 28
    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    :goto_43
    if-ge v7, v5, :cond_f2

    const-wide/16 v8, 0x5

    .line 30
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 31
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-nez v7, :cond_57

    const/4 v11, 0x1

    goto :goto_66

    :cond_57
    int-to-long v10, v7

    const-wide/32 v12, 0x1624c50

    mul-long v10, v10, v12

    const-wide/32 v12, 0x98967f

    add-long/2addr v10, v12

    const-wide/32 v12, 0x989680

    .line 32
    div-long/2addr v10, v12

    long-to-int v11, v10

    :goto_66
    if-ne v11, v9, :cond_d8

    .line 36
    sget-object v10, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    array-length v10, v10

    if-ge v7, v10, :cond_8c

    const/4 v10, 0x0

    :goto_6e
    if-ge v10, v3, :cond_8c

    .line 38
    sget-object v11, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    aget-object v11, v11, v7

    add-int/lit8 v12, v9, -0x79

    rsub-int/lit8 v13, v10, 0x3

    mul-int/lit8 v13, v13, 0x1f

    add-int/2addr v12, v13

    .line 39
    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 40
    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 41
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    .line 45
    :cond_8c
    sget-object v10, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    array-length v10, v10

    if-ge v7, v10, :cond_d4

    add-int/lit8 v9, v9, 0x79

    .line 48
    sget-object v10, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 49
    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 50
    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 51
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x0

    :goto_a4
    if-ge v9, v3, :cond_d4

    if-nez v9, :cond_bb

    .line 54
    sget-object v10, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v10, v10, v7

    rsub-int/lit8 v11, v9, 0x3

    mul-int/lit8 v11, v11, 0x1f

    .line 55
    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 56
    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v10, v9

    goto :goto_d1

    .line 58
    :cond_bb
    sget-object v10, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v10, v10, v7

    rsub-int/lit8 v11, v9, 0x3

    mul-int/lit8 v11, v11, 0x1f

    .line 59
    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 60
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 61
    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    aput v11, v10, v9

    :goto_d1
    add-int/lit8 v9, v9, 0x1

    goto :goto_a4

    :cond_d4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_43

    .line 34
    :cond_d8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f2
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(D[CI)I
    .registers 55

    .line 84
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1b

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x4e

    .line 85
    aput-char v1, p2, p3

    add-int/lit8 v1, p3, 0x2

    const/16 v2, 0x61

    .line 86
    aput-char v2, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v2, 0x4e

    .line 87
    aput-char v2, p2, v1

    :goto_18
    sub-int v0, v0, p3

    return v0

    :cond_1b
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/16 v2, 0x79

    const/16 v3, 0x69

    const/16 v4, 0x6e

    cmpl-double v5, p0, v0

    if-nez v5, :cond_50

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x49

    .line 92
    aput-char v1, p2, p3

    add-int/lit8 v1, p3, 0x2

    .line 93
    aput-char v4, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v5, 0x66

    .line 94
    aput-char v5, p2, v1

    add-int/lit8 v1, p3, 0x4

    .line 95
    aput-char v3, p2, v0

    add-int/lit8 v0, p3, 0x5

    .line 96
    aput-char v4, p2, v1

    add-int/lit8 v1, p3, 0x6

    .line 97
    aput-char v3, p2, v0

    add-int/lit8 v0, p3, 0x7

    const/16 v3, 0x74

    .line 98
    aput-char v3, p2, v1

    add-int/lit8 v1, p3, 0x8

    .line 99
    aput-char v2, p2, v0

    :goto_4d
    sub-int v1, v1, p3

    return v1

    :cond_50
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v5, p0, v0

    if-nez v5, :cond_83

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    .line 104
    aput-char v1, p2, p3

    add-int/lit8 v1, p3, 0x2

    const/16 v5, 0x49

    .line 105
    aput-char v5, p2, v0

    add-int/lit8 v0, p3, 0x3

    .line 106
    aput-char v4, p2, v1

    add-int/lit8 v1, p3, 0x4

    const/16 v5, 0x66

    .line 107
    aput-char v5, p2, v0

    add-int/lit8 v0, p3, 0x5

    .line 108
    aput-char v3, p2, v1

    add-int/lit8 v1, p3, 0x6

    .line 109
    aput-char v4, p2, v0

    add-int/lit8 v0, p3, 0x7

    .line 110
    aput-char v3, p2, v1

    add-int/lit8 v1, p3, 0x8

    const/16 v3, 0x74

    .line 111
    aput-char v3, p2, v0

    add-int/lit8 v0, p3, 0x9

    .line 112
    aput-char v2, p2, v1

    goto :goto_18

    .line 116
    :cond_83
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v3, 0x2e

    const/16 v4, 0x30

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_9f

    add-int/lit8 v0, p3, 0x1

    .line 118
    aput-char v4, p2, p3

    add-int/lit8 v1, p3, 0x2

    .line 119
    aput-char v3, p2, v0

    add-int/lit8 v0, p3, 0x3

    .line 120
    aput-char v4, p2, v1

    goto/16 :goto_18

    :cond_9f
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v10, v0, v8

    if-nez v10, :cond_b8

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    .line 124
    aput-char v1, p2, p3

    add-int/lit8 v1, p3, 0x2

    .line 125
    aput-char v4, p2, v0

    add-int/lit8 v0, p3, 0x3

    .line 126
    aput-char v3, p2, v1

    add-int/lit8 v1, p3, 0x4

    .line 127
    aput-char v4, p2, v0

    goto :goto_4d

    :cond_b8
    const/16 v8, 0x34

    ushr-long v8, v0, v8

    const-wide/16 v10, 0x7ff

    and-long/2addr v8, v10

    long-to-int v9, v8

    const-wide v10, 0xfffffffffffffL

    and-long/2addr v0, v10

    if-nez v9, :cond_cb

    const/16 v8, -0x432

    goto :goto_d0

    :cond_cb
    add-int/lit16 v8, v9, -0x433

    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v0, v10

    :goto_d0
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-gez v7, :cond_d6

    const/4 v7, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v7, 0x0

    :goto_d7
    const-wide/16 v12, 0x1

    and-long v14, v0, v12

    cmp-long v16, v14, v5

    if-nez v16, :cond_e1

    const/4 v14, 0x1

    goto :goto_e2

    :cond_e1
    const/4 v14, 0x0

    :goto_e2
    const-wide/16 v15, 0x4

    mul-long v15, v15, v0

    const-wide/16 v17, 0x2

    add-long v17, v15, v17

    const-wide/high16 v19, 0x10000000000000L

    cmp-long v21, v0, v19

    if-nez v21, :cond_f5

    if-gt v9, v11, :cond_f3

    goto :goto_f5

    :cond_f3
    const/4 v0, 0x0

    goto :goto_f6

    :cond_f5
    :goto_f5
    const/4 v0, 0x1

    :goto_f6
    sub-long v19, v15, v12

    const/16 p0, 0x2e

    const/16 v1, 0x79

    int-to-long v2, v0

    sub-long v19, v19, v2

    add-int/lit8 v8, v8, -0x2

    const-wide/32 v21, 0x7fffffff

    const/16 v23, 0x4

    const/16 p1, 0x79

    const/16 v24, 0x3

    const/16 v25, 0x2

    const/16 v26, 0x1f

    if-ltz v8, :cond_2f2

    const-wide/32 v27, 0x989680

    int-to-long v2, v8

    const-wide/32 v29, 0x2deefb

    mul-long v2, v2, v29

    .line 163
    div-long v2, v2, v27

    long-to-int v0, v2

    sub-int/2addr v0, v11

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_125

    const/4 v3, 0x1

    goto :goto_133

    :cond_125
    int-to-long v2, v0

    const-wide/32 v29, 0x1624c50

    mul-long v2, v2, v29

    const-wide/32 v29, 0x98967f

    add-long v2, v2, v29

    .line 166
    div-long v2, v2, v27

    long-to-int v3, v2

    :goto_133
    add-int/lit8 v3, v3, 0x79

    neg-int v2, v8

    add-int/2addr v2, v0

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x72

    if-ltz v2, :cond_2de

    .line 174
    sget-object v3, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v3, v3, v0

    ushr-long v29, v15, v26

    and-long v31, v15, v21

    .line 178
    aget v8, v3, v10

    move-wide/from16 v33, v5

    const/16 v6, 0x30

    int-to-long v4, v8

    mul-long v4, v4, v29

    move/from16 v35, v7

    const/16 v36, 0x30

    int-to-long v6, v8

    mul-long v6, v6, v31

    move-wide/from16 v37, v12

    .line 180
    aget v12, v3, v11

    const/16 v39, 0x1

    int-to-long v10, v12

    mul-long v10, v10, v29

    move/from16 v40, v14

    int-to-long v13, v12

    mul-long v13, v13, v31

    const/16 v41, 0xa

    .line 182
    aget v1, v3, v25

    move-wide/from16 v43, v10

    const/16 v42, 0x15

    int-to-long v9, v1

    mul-long v9, v9, v29

    move-object/from16 p1, v3

    move-wide/from16 v45, v4

    int-to-long v3, v1

    mul-long v3, v3, v31

    .line 184
    aget v5, p1, v24

    move-wide/from16 v47, v3

    int-to-long v3, v5

    mul-long v29, v29, v3

    int-to-long v3, v5

    mul-long v31, v31, v3

    ushr-long v3, v31, v26

    add-long v3, v3, v47

    add-long v3, v3, v29

    ushr-long v3, v3, v26

    add-long/2addr v3, v13

    add-long/2addr v3, v9

    ushr-long v3, v3, v26

    add-long/2addr v3, v6

    add-long v3, v3, v43

    ushr-long v3, v3, v42

    shl-long v6, v45, v41

    add-long/2addr v3, v6

    ushr-long/2addr v3, v2

    ushr-long v6, v17, v26

    and-long v9, v17, v21

    int-to-long v13, v8

    mul-long v13, v13, v6

    move-wide/from16 v29, v3

    int-to-long v3, v8

    mul-long v3, v3, v9

    move-wide/from16 v31, v3

    int-to-long v3, v12

    mul-long v3, v3, v6

    move-wide/from16 v43, v3

    int-to-long v3, v12

    mul-long v3, v3, v9

    move-wide/from16 v45, v3

    int-to-long v3, v1

    mul-long v3, v3, v6

    move-wide/from16 v47, v3

    int-to-long v3, v1

    mul-long v3, v3, v9

    move-wide/from16 v49, v3

    int-to-long v3, v5

    mul-long v6, v6, v3

    int-to-long v3, v5

    mul-long v9, v9, v3

    ushr-long v3, v9, v26

    add-long v3, v3, v49

    add-long/2addr v3, v6

    ushr-long v3, v3, v26

    add-long v3, v3, v45

    add-long v3, v3, v47

    ushr-long v3, v3, v26

    add-long v3, v3, v31

    add-long v3, v3, v43

    ushr-long v3, v3, v42

    shl-long v6, v13, v41

    add-long/2addr v3, v6

    ushr-long/2addr v3, v2

    ushr-long v6, v19, v26

    and-long v9, v19, v21

    int-to-long v13, v8

    mul-long v13, v13, v6

    move-wide/from16 v31, v3

    int-to-long v3, v8

    mul-long v3, v3, v9

    move-wide/from16 v21, v3

    int-to-long v3, v12

    mul-long v3, v3, v6

    int-to-long v11, v12

    mul-long v11, v11, v9

    move-wide/from16 v43, v3

    int-to-long v3, v1

    mul-long v3, v3, v6

    move-wide/from16 v45, v3

    int-to-long v3, v1

    mul-long v3, v3, v9

    move-wide/from16 v47, v3

    int-to-long v3, v5

    mul-long v6, v6, v3

    int-to-long v3, v5

    mul-long v9, v9, v3

    ushr-long v3, v9, v26

    add-long v3, v3, v47

    add-long/2addr v3, v6

    ushr-long v3, v3, v26

    add-long/2addr v3, v11

    add-long v3, v3, v45

    ushr-long v3, v3, v26

    add-long v3, v3, v21

    add-long v3, v3, v43

    ushr-long v3, v3, v42

    shl-long v5, v13, v41

    add-long/2addr v3, v5

    ushr-long v1, v3, v2

    const/16 v3, 0x15

    if-gt v0, v3, :cond_2d6

    const-wide/16 v3, 0x5

    .line 234
    rem-long v5, v15, v3

    const-wide/16 v7, 0x271

    cmp-long v9, v5, v33

    if-nez v9, :cond_258

    if-eqz v9, :cond_221

    const/4 v13, 0x0

    goto :goto_24e

    :cond_221
    const-wide/16 v5, 0x19

    .line 240
    rem-long v5, v15, v5

    cmp-long v9, v5, v33

    if-eqz v9, :cond_22b

    const/4 v13, 0x1

    goto :goto_24e

    :cond_22b
    const-wide/16 v5, 0x7d

    .line 242
    rem-long v5, v15, v5

    cmp-long v9, v5, v33

    if-eqz v9, :cond_235

    const/4 v13, 0x2

    goto :goto_24e

    .line 244
    :cond_235
    rem-long v5, v15, v7

    cmp-long v9, v5, v33

    if-eqz v9, :cond_23d

    const/4 v13, 0x3

    goto :goto_24e

    .line 248
    :cond_23d
    div-long/2addr v15, v7

    const/4 v13, 0x4

    :goto_23f
    cmp-long v5, v15, v33

    if-lez v5, :cond_24e

    .line 250
    rem-long v5, v15, v3

    cmp-long v7, v5, v33

    if-eqz v7, :cond_24a

    goto :goto_24e

    .line 253
    :cond_24a
    div-long/2addr v15, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_23f

    :cond_24e
    :goto_24e
    if-lt v13, v0, :cond_252

    const/4 v13, 0x1

    goto :goto_253

    :cond_252
    const/4 v13, 0x0

    :goto_253
    move v5, v13

    move-wide/from16 v3, v31

    goto/16 :goto_2d9

    :cond_258
    if-eqz v40, :cond_29a

    .line 263
    rem-long v5, v19, v3

    cmp-long v9, v5, v33

    if-eqz v9, :cond_262

    const/4 v13, 0x0

    goto :goto_291

    :cond_262
    const-wide/16 v5, 0x19

    .line 265
    rem-long v5, v19, v5

    cmp-long v9, v5, v33

    if-eqz v9, :cond_26c

    const/4 v13, 0x1

    goto :goto_291

    :cond_26c
    const-wide/16 v5, 0x7d

    .line 267
    rem-long v5, v19, v5

    cmp-long v9, v5, v33

    if-eqz v9, :cond_276

    const/4 v13, 0x2

    goto :goto_291

    .line 269
    :cond_276
    rem-long v5, v19, v7

    cmp-long v9, v5, v33

    if-eqz v9, :cond_27e

    const/4 v13, 0x3

    goto :goto_291

    .line 273
    :cond_27e
    div-long v19, v19, v7

    const/4 v13, 0x4

    :goto_281
    cmp-long v5, v19, v33

    if-lez v5, :cond_291

    .line 275
    rem-long v5, v19, v3

    cmp-long v7, v5, v33

    if-eqz v7, :cond_28c

    goto :goto_291

    .line 278
    :cond_28c
    div-long v19, v19, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_281

    :cond_291
    :goto_291
    if-lt v13, v0, :cond_295

    const/4 v13, 0x1

    goto :goto_296

    :cond_295
    const/4 v13, 0x0

    :goto_296
    move-wide/from16 v3, v31

    const/4 v5, 0x0

    goto :goto_2da

    .line 289
    :cond_29a
    rem-long v5, v17, v3

    cmp-long v9, v5, v33

    if-eqz v9, :cond_2a2

    const/4 v13, 0x0

    goto :goto_2d1

    :cond_2a2
    const-wide/16 v5, 0x19

    .line 291
    rem-long v5, v17, v5

    cmp-long v9, v5, v33

    if-eqz v9, :cond_2ac

    const/4 v13, 0x1

    goto :goto_2d1

    :cond_2ac
    const-wide/16 v5, 0x7d

    .line 293
    rem-long v5, v17, v5

    cmp-long v9, v5, v33

    if-eqz v9, :cond_2b6

    const/4 v13, 0x2

    goto :goto_2d1

    .line 295
    :cond_2b6
    rem-long v5, v17, v7

    cmp-long v9, v5, v33

    if-eqz v9, :cond_2be

    const/4 v13, 0x3

    goto :goto_2d1

    .line 299
    :cond_2be
    div-long v17, v17, v7

    const/4 v13, 0x4

    :goto_2c1
    cmp-long v5, v17, v33

    if-lez v5, :cond_2d1

    .line 301
    rem-long v5, v17, v3

    cmp-long v7, v5, v33

    if-eqz v7, :cond_2cc

    goto :goto_2d1

    .line 304
    :cond_2cc
    div-long v17, v17, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_2c1

    :cond_2d1
    :goto_2d1
    if-lt v13, v0, :cond_2d6

    sub-long v3, v31, v37

    goto :goto_2d8

    :cond_2d6
    move-wide/from16 v3, v31

    :goto_2d8
    const/4 v5, 0x0

    :goto_2d9
    const/4 v13, 0x0

    :goto_2da
    move-wide/from16 v17, v29

    goto/16 :goto_43f

    .line 171
    :cond_2de
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f2
    move-wide/from16 v33, v5

    move/from16 v35, v7

    move-wide/from16 v37, v12

    move/from16 v40, v14

    const-wide/32 v27, 0x989680

    const/16 v36, 0x30

    const/16 v39, 0x1

    const/16 v41, 0xa

    neg-int v1, v8

    int-to-long v2, v1

    const-wide/32 v4, 0x6aa784

    mul-long v2, v2, v4

    .line 316
    div-long v2, v2, v27

    long-to-int v3, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v13, 0x0

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v1, :cond_319

    const/4 v4, 0x1

    goto :goto_326

    :cond_319
    int-to-long v3, v1

    const-wide/32 v5, 0x1624c50

    mul-long v3, v3, v5

    const-wide/32 v5, 0x98967f

    add-long/2addr v3, v5

    .line 318
    div-long v3, v3, v27

    long-to-int v4, v3

    :goto_326
    add-int/lit8 v4, v4, -0x79

    sub-int v3, v2, v4

    add-int/lit8 v3, v3, -0x72

    if-ltz v3, :cond_6c4

    .line 325
    sget-object v4, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    aget-object v1, v4, v1

    ushr-long v4, v15, v26

    and-long v6, v15, v21

    const/4 v13, 0x0

    .line 329
    aget v9, v1, v13

    int-to-long v10, v9

    mul-long v10, v10, v4

    int-to-long v13, v9

    mul-long v13, v13, v6

    .line 331
    aget v12, v1, v39

    move-wide/from16 v29, v4

    int-to-long v4, v12

    mul-long v4, v4, v29

    move-wide/from16 v31, v4

    int-to-long v4, v12

    mul-long v4, v4, v6

    move-object/from16 p1, v1

    .line 333
    aget v1, p1, v25

    move-wide/from16 v43, v4

    int-to-long v4, v1

    mul-long v4, v4, v29

    move-wide/from16 v45, v4

    int-to-long v4, v1

    mul-long v4, v4, v6

    move-wide/from16 v47, v4

    .line 335
    aget v4, p1, v24

    move-wide/from16 v49, v6

    int-to-long v5, v4

    mul-long v5, v5, v29

    move-wide/from16 v29, v5

    int-to-long v5, v4

    mul-long v6, v49, v5

    ushr-long v5, v6, v26

    add-long v5, v5, v47

    add-long v5, v5, v29

    ushr-long v5, v5, v26

    add-long v5, v5, v43

    add-long v5, v5, v45

    ushr-long v5, v5, v26

    add-long/2addr v5, v13

    add-long v5, v5, v31

    const/16 v42, 0x15

    ushr-long v5, v5, v42

    shl-long v10, v10, v41

    add-long/2addr v5, v10

    ushr-long/2addr v5, v3

    ushr-long v10, v17, v26

    and-long v13, v17, v21

    move-wide/from16 v17, v5

    int-to-long v5, v9

    mul-long v5, v5, v10

    move-wide/from16 v29, v5

    int-to-long v5, v9

    mul-long v5, v5, v13

    move-wide/from16 v31, v5

    int-to-long v5, v12

    mul-long v5, v5, v10

    move-wide/from16 v43, v5

    int-to-long v5, v12

    mul-long v5, v5, v13

    move-wide/from16 v45, v5

    int-to-long v5, v1

    mul-long v5, v5, v10

    move-wide/from16 v47, v5

    int-to-long v5, v1

    mul-long v5, v5, v13

    move-wide/from16 v49, v5

    int-to-long v5, v4

    mul-long v10, v10, v5

    int-to-long v5, v4

    mul-long v13, v13, v5

    ushr-long v5, v13, v26

    add-long v5, v5, v49

    add-long/2addr v5, v10

    ushr-long v5, v5, v26

    add-long v5, v5, v45

    add-long v5, v5, v47

    ushr-long v5, v5, v26

    add-long v5, v5, v31

    add-long v5, v5, v43

    const/16 v42, 0x15

    ushr-long v5, v5, v42

    shl-long v10, v29, v41

    add-long/2addr v5, v10

    ushr-long/2addr v5, v3

    ushr-long v10, v19, v26

    and-long v13, v19, v21

    move-wide/from16 v19, v5

    int-to-long v5, v9

    mul-long v5, v5, v10

    move-wide/from16 v21, v5

    int-to-long v5, v9

    mul-long v5, v5, v13

    move-wide/from16 v29, v5

    int-to-long v5, v12

    mul-long v5, v5, v10

    move-wide/from16 v31, v5

    int-to-long v5, v12

    mul-long v5, v5, v13

    move-wide/from16 v43, v5

    int-to-long v5, v1

    mul-long v5, v5, v10

    move-wide/from16 v45, v5

    int-to-long v5, v1

    mul-long v5, v5, v13

    move-wide/from16 v47, v5

    int-to-long v5, v4

    mul-long v10, v10, v5

    int-to-long v4, v4

    mul-long v13, v13, v4

    ushr-long v4, v13, v26

    add-long v4, v4, v47

    add-long/2addr v4, v10

    ushr-long v4, v4, v26

    add-long v4, v4, v43

    add-long v4, v4, v45

    ushr-long v4, v4, v26

    add-long v4, v4, v29

    add-long v4, v4, v31

    const/16 v42, 0x15

    ushr-long v4, v4, v42

    shl-long v6, v21, v41

    add-long/2addr v4, v6

    ushr-long v3, v4, v3

    add-int v1, v2, v8

    const/4 v5, 0x1

    if-gt v2, v5, :cond_422

    if-eqz v40, :cond_41c

    if-ne v0, v5, :cond_413

    const/16 v39, 0x1

    goto :goto_415

    :cond_413
    const/16 v39, 0x0

    :goto_415
    move v0, v1

    move-wide v1, v3

    move-wide/from16 v3, v19

    move/from16 v13, v39

    goto :goto_43f

    :cond_41c
    sub-long v6, v19, v37

    move v0, v1

    move-wide v1, v3

    move-wide v3, v6

    goto :goto_43e

    :cond_422
    const/16 v0, 0x3f

    if-ge v2, v0, :cond_439

    sub-int/2addr v2, v5

    shl-long v5, v37, v2

    sub-long v5, v5, v37

    and-long/2addr v5, v15

    cmp-long v0, v5, v33

    if-nez v0, :cond_432

    const/4 v0, 0x1

    goto :goto_433

    :cond_432
    const/4 v0, 0x0

    :goto_433
    move v5, v0

    move v0, v1

    move-wide v1, v3

    move-wide/from16 v3, v19

    goto :goto_43e

    :cond_439
    move v0, v1

    move-wide v1, v3

    move-wide/from16 v3, v19

    const/4 v5, 0x0

    :goto_43e
    const/4 v13, 0x0

    :goto_43f
    const-wide v6, 0xde0b6b3a7640000L

    const/4 v8, 0x7

    const/4 v9, 0x5

    const-wide/16 v10, 0xa

    cmp-long v12, v3, v6

    if-ltz v12, :cond_450

    const/16 v24, 0x13

    goto/16 :goto_507

    :cond_450
    const-wide v6, 0x16345785d8a0000L

    cmp-long v12, v3, v6

    if-ltz v12, :cond_45d

    const/16 v24, 0x12

    goto/16 :goto_507

    :cond_45d
    const-wide v6, 0x2386f26fc10000L

    cmp-long v12, v3, v6

    if-ltz v12, :cond_46a

    const/16 v24, 0x11

    goto/16 :goto_507

    :cond_46a
    const-wide v6, 0x38d7ea4c68000L

    cmp-long v12, v3, v6

    if-ltz v12, :cond_477

    const/16 v24, 0x10

    goto/16 :goto_507

    :cond_477
    const-wide v6, 0x5af3107a4000L

    cmp-long v12, v3, v6

    if-ltz v12, :cond_484

    const/16 v24, 0xf

    goto/16 :goto_507

    :cond_484
    const-wide v6, 0x9184e72a000L

    cmp-long v12, v3, v6

    if-ltz v12, :cond_491

    const/16 v24, 0xe

    goto/16 :goto_507

    :cond_491
    const-wide v6, 0xe8d4a51000L

    cmp-long v12, v3, v6

    if-ltz v12, :cond_49e

    const/16 v24, 0xd

    goto/16 :goto_507

    :cond_49e
    const-wide v6, 0x174876e800L

    cmp-long v12, v3, v6

    if-ltz v12, :cond_4aa

    const/16 v24, 0xc

    goto :goto_507

    :cond_4aa
    const-wide v6, 0x2540be400L

    cmp-long v12, v3, v6

    if-ltz v12, :cond_4b6

    const/16 v24, 0xb

    goto :goto_507

    :cond_4b6
    const-wide/32 v6, 0x3b9aca00

    cmp-long v12, v3, v6

    if-ltz v12, :cond_4c0

    const/16 v24, 0xa

    goto :goto_507

    :cond_4c0
    const-wide/32 v6, 0x5f5e100

    cmp-long v12, v3, v6

    if-ltz v12, :cond_4ca

    const/16 v24, 0x9

    goto :goto_507

    :cond_4ca
    cmp-long v6, v3, v27

    if-ltz v6, :cond_4d1

    const/16 v24, 0x8

    goto :goto_507

    :cond_4d1
    const-wide/32 v6, 0xf4240

    cmp-long v12, v3, v6

    if-ltz v12, :cond_4db

    const/16 v24, 0x7

    goto :goto_507

    :cond_4db
    const-wide/32 v6, 0x186a0

    cmp-long v12, v3, v6

    if-ltz v12, :cond_4e5

    const/16 v24, 0x6

    goto :goto_507

    :cond_4e5
    const-wide/16 v6, 0x2710

    cmp-long v12, v3, v6

    if-ltz v12, :cond_4ee

    const/16 v24, 0x5

    goto :goto_507

    :cond_4ee
    const-wide/16 v6, 0x3e8

    cmp-long v12, v3, v6

    if-ltz v12, :cond_4f7

    const/16 v24, 0x4

    goto :goto_507

    :cond_4f7
    const-wide/16 v6, 0x64

    cmp-long v12, v3, v6

    if-ltz v12, :cond_4fe

    goto :goto_507

    :cond_4fe
    cmp-long v6, v3, v10

    if-ltz v6, :cond_505

    const/16 v24, 0x2

    goto :goto_507

    :cond_505
    const/16 v24, 0x1

    :goto_507
    add-int v0, v0, v24

    add-int/lit8 v6, v0, -0x1

    const/4 v7, -0x3

    if-lt v6, v7, :cond_513

    if-lt v6, v8, :cond_511

    goto :goto_513

    :cond_511
    const/4 v7, 0x0

    goto :goto_514

    :cond_513
    :goto_513
    const/4 v7, 0x1

    :goto_514
    if-nez v13, :cond_545

    if-eqz v5, :cond_519

    goto :goto_545

    :cond_519
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 485
    :goto_51b
    div-long v12, v3, v10

    div-long v14, v1, v10

    cmp-long v16, v12, v14

    if-lez v16, :cond_536

    const-wide/16 v19, 0x64

    cmp-long v16, v3, v19

    if-gez v16, :cond_52c

    if-eqz v7, :cond_52c

    goto :goto_536

    .line 490
    :cond_52c
    rem-long v1, v17, v10

    long-to-int v8, v1

    .line 492
    div-long v17, v17, v10

    add-int/lit8 v5, v5, 0x1

    move-wide v3, v12

    move-wide v1, v14

    goto :goto_51b

    :cond_536
    :goto_536
    cmp-long v3, v17, v1

    if-eqz v3, :cond_53f

    if-lt v8, v9, :cond_53d

    goto :goto_53f

    :cond_53d
    const/4 v1, 0x0

    goto :goto_540

    :cond_53f
    :goto_53f
    const/4 v1, 0x1

    :goto_540
    int-to-long v1, v1

    add-long v17, v17, v1

    goto/16 :goto_5b3

    :cond_545
    :goto_545
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 451
    :goto_547
    div-long v14, v3, v10

    div-long v19, v1, v10

    cmp-long v16, v14, v19

    if-lez v16, :cond_572

    const-wide/16 v21, 0x64

    cmp-long v16, v3, v21

    if-gez v16, :cond_558

    if-eqz v7, :cond_558

    goto :goto_572

    .line 456
    :cond_558
    rem-long/2addr v1, v10

    cmp-long v3, v1, v33

    if-nez v3, :cond_55f

    const/4 v1, 0x1

    goto :goto_560

    :cond_55f
    const/4 v1, 0x0

    :goto_560
    and-int/2addr v13, v1

    if-nez v8, :cond_565

    const/4 v1, 0x1

    goto :goto_566

    :cond_565
    const/4 v1, 0x0

    :goto_566
    and-int/2addr v5, v1

    .line 458
    rem-long v1, v17, v10

    long-to-int v8, v1

    .line 460
    div-long v17, v17, v10

    add-int/lit8 v12, v12, 0x1

    move-wide v3, v14

    move-wide/from16 v1, v19

    goto :goto_547

    :cond_572
    :goto_572
    if-eqz v13, :cond_595

    if-eqz v40, :cond_595

    .line 465
    :goto_576
    rem-long v14, v1, v10

    cmp-long v16, v14, v33

    if-nez v16, :cond_595

    const-wide/16 v14, 0x64

    cmp-long v16, v3, v14

    if-gez v16, :cond_585

    if-eqz v7, :cond_585

    goto :goto_595

    :cond_585
    if-nez v8, :cond_589

    const/4 v8, 0x1

    goto :goto_58a

    :cond_589
    const/4 v8, 0x0

    :goto_58a
    and-int/2addr v5, v8

    .line 471
    rem-long v14, v17, v10

    long-to-int v8, v14

    .line 472
    div-long/2addr v3, v10

    .line 473
    div-long v17, v17, v10

    .line 474
    div-long/2addr v1, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_576

    :cond_595
    :goto_595
    if-eqz v5, :cond_5a2

    if-ne v8, v9, :cond_5a2

    const-wide/16 v3, 0x2

    .line 478
    rem-long v3, v17, v3

    cmp-long v5, v3, v33

    if-nez v5, :cond_5a2

    const/4 v8, 0x4

    :cond_5a2
    cmp-long v3, v17, v1

    if-nez v3, :cond_5aa

    if-eqz v13, :cond_5ac

    if-eqz v40, :cond_5ac

    :cond_5aa
    if-lt v8, v9, :cond_5ae

    :cond_5ac
    const/4 v1, 0x1

    goto :goto_5af

    :cond_5ae
    const/4 v1, 0x0

    :goto_5af
    int-to-long v1, v1

    add-long v17, v17, v1

    move v5, v12

    :goto_5b3
    sub-int v1, v24, v5

    if-eqz v35, :cond_5be

    add-int/lit8 v2, p3, 0x1

    const/16 v3, 0x2d

    .line 503
    aput-char v3, p2, p3

    goto :goto_5c0

    :cond_5be
    move/from16 v2, p3

    :goto_5c0
    if-eqz v7, :cond_634

    const/4 v0, 0x0

    :goto_5c3
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_5d7

    .line 510
    rem-long v3, v17, v10

    long-to-int v4, v3

    .line 511
    div-long v17, v17, v10

    add-int v3, v2, v1

    sub-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 512
    aput-char v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c3

    :cond_5d7
    const-wide/16 v3, 0x30

    .line 514
    rem-long v17, v17, v10

    add-long v3, v17, v3

    long-to-int v0, v3

    int-to-char v0, v0

    aput-char v0, p2, v2

    add-int/lit8 v0, v2, 0x1

    .line 515
    aput-char p0, p2, v0

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v2, v0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_5f0

    add-int/lit8 v0, v2, 0x1

    .line 518
    aput-char v36, p2, v2

    move v2, v0

    :cond_5f0
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x45

    .line 522
    aput-char v1, p2, v2

    if-gez v6, :cond_600

    add-int/lit8 v2, v2, 0x2

    const/16 v1, 0x2d

    .line 524
    aput-char v1, p2, v0

    neg-int v6, v6

    move v0, v2

    :cond_600
    const/16 v1, 0x64

    if-lt v6, v1, :cond_619

    add-int/lit8 v1, v0, 0x1

    .line 528
    div-int/lit8 v2, v6, 0x64

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, p2, v0

    .line 529
    rem-int/lit8 v6, v6, 0x64

    add-int/lit8 v0, v0, 0x2

    .line 530
    div-int/lit8 v2, v6, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, p2, v1

    goto :goto_627

    :cond_619
    const/16 v1, 0xa

    if-lt v6, v1, :cond_627

    add-int/lit8 v1, v0, 0x1

    .line 532
    div-int/lit8 v2, v6, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, p2, v0

    move v0, v1

    :cond_627
    :goto_627
    add-int/lit8 v1, v0, 0x1

    const/16 v41, 0xa

    .line 534
    rem-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v2, v6

    aput-char v2, p2, v0

    goto/16 :goto_4d

    :cond_634
    if-gez v6, :cond_664

    add-int/lit8 v0, v2, 0x1

    .line 540
    aput-char v36, p2, v2

    add-int/lit8 v2, v2, 0x2

    .line 541
    aput-char p0, p2, v0

    const/4 v0, -0x1

    :goto_63f
    if-le v0, v6, :cond_649

    add-int/lit8 v3, v2, 0x1

    .line 543
    aput-char v36, p2, v2

    add-int/lit8 v0, v0, -0x1

    move v2, v3

    goto :goto_63f

    :cond_649
    move v3, v2

    const/4 v0, 0x0

    :goto_64b
    if-ge v0, v1, :cond_6c1

    add-int v4, v2, v1

    sub-int/2addr v4, v0

    const/16 v39, 0x1

    add-int/lit8 v4, v4, -0x1

    const-wide/16 v5, 0x30

    .line 547
    rem-long v7, v17, v10

    add-long/2addr v7, v5

    long-to-int v5, v7

    int-to-char v5, v5

    aput-char v5, p2, v4

    .line 548
    div-long v17, v17, v10

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_64b

    :cond_664
    if-lt v0, v1, :cond_692

    const/4 v3, 0x0

    :goto_667
    if-ge v3, v1, :cond_67e

    add-int v4, v2, v1

    sub-int/2addr v4, v3

    const/16 v39, 0x1

    add-int/lit8 v4, v4, -0x1

    const-wide/16 v5, 0x30

    .line 554
    rem-long v7, v17, v10

    add-long/2addr v7, v5

    long-to-int v5, v7

    int-to-char v5, v5

    aput-char v5, p2, v4

    .line 555
    div-long v17, v17, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_667

    :cond_67e
    add-int/2addr v2, v1

    :goto_67f
    if-ge v1, v0, :cond_689

    add-int/lit8 v3, v2, 0x1

    .line 559
    aput-char v36, p2, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_67f

    :cond_689
    add-int/lit8 v0, v2, 0x1

    .line 561
    aput-char p0, p2, v2

    add-int/lit8 v3, v2, 0x2

    .line 562
    aput-char v36, p2, v0

    goto :goto_6c1

    :cond_692
    add-int/lit8 v0, v2, 0x1

    const/4 v3, 0x0

    :goto_695
    if-ge v3, v1, :cond_6bb

    sub-int v4, v1, v3

    const/16 v39, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v6, :cond_6a8

    add-int v4, v0, v1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 568
    aput-char p0, p2, v4

    add-int/lit8 v0, v0, -0x1

    :cond_6a8
    add-int v4, v0, v1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    const-wide/16 v7, 0x30

    .line 571
    rem-long v12, v17, v10

    add-long/2addr v12, v7

    long-to-int v5, v12

    int-to-char v5, v5

    aput-char v5, p2, v4

    .line 572
    div-long v17, v17, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_695

    :cond_6bb
    const/16 v39, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v2, v1

    :cond_6c1
    :goto_6c1
    sub-int v3, v3, p3

    return v3

    .line 323
    :cond_6c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(D)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x18

    .line 69
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D[CI)I

    move-result p0

    .line 71
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method
