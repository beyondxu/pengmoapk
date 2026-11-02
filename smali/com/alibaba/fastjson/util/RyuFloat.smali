###### Class com.alibaba.fastjson.util.RyuFloat (com.alibaba.fastjson.util.RyuFloat)
.class public final Lcom/alibaba/fastjson/util/RyuFloat;
.super Ljava/lang/Object;
.source "RyuFloat.java"


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 25

    const/16 v0, 0x2f

    .line 21
    new-array v0, v0, [[I

    const/high16 v1, 0x20000000

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/high16 v1, 0x28000000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/high16 v1, 0x32000000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/high16 v1, 0x3e800000    # 0.25f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/high16 v1, 0x27100000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/high16 v1, 0x30d40000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const/high16 v1, 0x3d090000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const v1, 0x2625a000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const v1, 0x2faf0800

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const v1, 0x3b9aca00

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const v1, 0x2540be40

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const v1, 0x2e90edd0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const v1, 0x3a352944

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const v1, 0x246139ca

    const/high16 v15, 0x40000000    # 2.0f

    filled-new-array {v1, v15}, [I

    move-result-object v1

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const v1, 0x2d79883d

    const/16 v16, 0x0

    const/high16 v2, 0x10000000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v17, 0xe

    aput-object v1, v0, v17

    const v1, 0x38d7ea4c

    const/16 v18, 0x2

    const/high16 v4, 0x34000000

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    const v1, 0x2386f26f

    const/16 v19, 0xf

    const/high16 v4, 0x60800000

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    const v1, 0x2c68af0b

    const/16 v20, 0x10

    const/high16 v4, 0x58a00000

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    const v1, 0x3782dace

    const/16 v21, 0x11

    const/high16 v4, 0x4ec80000    # 1.6777216E9f

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    const v1, 0x22b1c8c1

    const/16 v22, 0x12

    const/high16 v4, 0x113d0000

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    const v1, 0x2b5e3af1

    const/16 v23, 0x13

    const v4, 0x358c4000

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    const v1, 0x3635c9ad

    const/16 v24, 0x14

    const v4, 0x62ef5000

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    const v1, 0x21e19e0c

    const v4, 0x4dd59200    # 4.478894E8f

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x16

    aput-object v1, v0, v4

    const v1, 0x2a5a058f

    const v4, 0x614af680    # 2.3400028E20f

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v0, v4

    const v1, 0x34f086f3

    const v4, 0x599db420

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x18

    aput-object v1, v0, v4

    const v1, 0x21165458

    const v4, 0x28029094    # 7.2478E-15f

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x19

    aput-object v1, v0, v4

    const v1, 0x295be96e

    const v4, 0x320334b9

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    const v1, 0x33b2e3c9

    const v4, 0x7e8401e7

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    const v1, 0x204fce5e

    const v4, 0x1f128130

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    const v1, 0x2863c1f5

    const v4, 0x66d7217c

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x1d

    aput-object v1, v0, v4

    const v1, 0x327cb273

    const v4, 0x208ce9db

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x1e

    aput-object v1, v0, v4

    const v1, 0x3f1bdf10

    const v4, 0x8b02452

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x1f

    aput-object v1, v0, v4

    const v1, 0x27716b6a

    const v4, 0x56e16b3

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x20

    aput-object v1, v0, v4

    const v1, 0x314dc644

    const v4, 0x46c99c60    # 25806.188f

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x21

    aput-object v1, v0, v4

    const v1, 0x3da137d5

    const v4, 0x587c0378

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x22

    aput-object v1, v0, v4

    const v1, 0x2684c2e5

    const v4, 0x474d822b

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x23

    aput-object v1, v0, v4

    const v1, 0x3025f39e

    const v4, 0x7920e2b6

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x24

    aput-object v1, v0, v4

    const v1, 0x3c2f7086

    const v4, 0x57691b64

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x25

    aput-object v1, v0, v4

    const v1, 0x259da654

    const v4, 0x16a1b11e

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x26

    aput-object v1, v0, v4

    const v1, 0x2f050fe9

    const v4, 0x1c4a1d66

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x27

    aput-object v1, v0, v4

    const v1, 0x3ac653e3

    const v4, 0x435ca4bf

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x28

    aput-object v1, v0, v4

    const v1, 0x24bbf46e

    const v4, 0x1a19e6f7

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x29

    aput-object v1, v0, v4

    const v1, 0x2deaf189

    const v4, 0x60a060b5

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x2a

    aput-object v1, v0, v4

    const v1, 0x3965adec

    const v4, 0x18c878e3

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x2b

    aput-object v1, v0, v4

    const v1, 0x23df8cb3

    const v4, 0x4f7d4b8d

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x2c

    aput-object v1, v0, v4

    const v1, 0x2cd76fe0

    const v4, 0x435c9e71

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x2d

    aput-object v1, v0, v4

    const v1, 0x380d4bd8

    const v4, 0x5433c60d

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const/16 v4, 0x2e

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    const/16 v0, 0x1f

    .line 71
    new-array v0, v0, [[I

    filled-new-array {v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v16

    const v1, 0xccccccc

    const v2, 0x66666667

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0xa3d70a3

    const v2, 0x6b851eb9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v18

    const v1, 0x83126e9

    const v2, 0x3c6a7efa

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0xd1b7175

    const v2, 0x4710cb2a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0xa7c5ac4

    const v2, 0x38da3c22

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x8637bd0

    const v2, 0x2d7b634e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0xd6bf94d

    const v2, 0x2f2bd216

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0xabcc771

    const v2, 0xc230e78

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x89705f4

    const v2, 0x9b5a52d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v11

    const v1, 0xdbe6fec

    const v2, 0x75ef6eae

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v12

    const v1, 0xafebff0

    const v2, 0x5e592558

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v13

    const v1, 0x8cbccc0

    const v2, 0x4b7a8447    # 1.6417863E7f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v14

    const v1, 0xe12e134

    const v2, 0x125da071

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v15

    const v1, 0xb424dc3

    const v2, 0x284ae6c1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v17

    const v1, 0x901d7cf

    const v2, 0x39d58567

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v19

    const v1, 0xe69594b

    const v2, 0x76226f0b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v20

    const v1, 0xb877aa3

    const v2, 0x11b525a3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v21

    const v1, 0x9392ee8

    const v2, 0x7490eae9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v22

    const v1, 0xec1e4a7

    const v2, 0x6db4ab0e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v23

    const v1, 0xbce5086

    const v2, 0x249088d8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v24

    const v1, 0x971da05

    const v2, 0x3a6d3e0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const v1, 0xf1c9008

    const v2, 0x5d7b966

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const v1, 0xc16d9a0

    const v2, 0x4ac9452

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const v1, 0x9abe14c

    const v2, 0x6a23a9db

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const v1, 0xf79687a

    const v2, 0x769f762b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const v1, 0xc612062

    const v2, 0x2bb2c4ef

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const v1, 0x9e74d1b

    const v2, 0x3c8f03f3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const v1, 0xfd87b5f

    const v2, 0x14180651

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const v1, 0xcad2f7f

    const v2, 0x29acd1da

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const v1, 0xa2425ff

    const v2, 0x3af0a7e2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(F[CI)I
    .registers 37

    .line 123
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_19

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x4e

    .line 124
    aput-char v1, p1, p2

    add-int/lit8 v2, p2, 0x2

    const/16 v3, 0x61

    .line 125
    aput-char v3, p1, v0

    add-int/lit8 v0, p2, 0x3

    .line 126
    aput-char v1, p1, v2

    :goto_16
    sub-int v0, v0, p2

    return v0

    :cond_19
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/16 v1, 0x66

    const/16 v2, 0x49

    const/16 v3, 0x69

    const/16 v4, 0x6e

    cmpl-float v0, p0, v0

    if-nez v0, :cond_4e

    add-int/lit8 v0, p2, 0x1

    .line 131
    aput-char v2, p1, p2

    add-int/lit8 v2, p2, 0x2

    .line 132
    aput-char v4, p1, v0

    add-int/lit8 v0, p2, 0x3

    .line 133
    aput-char v1, p1, v2

    add-int/lit8 v1, p2, 0x4

    .line 134
    aput-char v3, p1, v0

    add-int/lit8 v0, p2, 0x5

    .line 135
    aput-char v4, p1, v1

    add-int/lit8 v1, p2, 0x6

    .line 136
    aput-char v3, p1, v0

    add-int/lit8 v0, p2, 0x7

    const/16 v2, 0x74

    .line 137
    aput-char v2, p1, v1

    add-int/lit8 v1, p2, 0x8

    const/16 v2, 0x79

    .line 138
    aput-char v2, p1, v0

    :goto_4b
    sub-int v1, v1, p2

    return v1

    :cond_4e
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    const/16 v5, 0x2d

    cmpl-float v0, p0, v0

    if-nez v0, :cond_7f

    add-int/lit8 v0, p2, 0x1

    .line 143
    aput-char v5, p1, p2

    add-int/lit8 v5, p2, 0x2

    .line 144
    aput-char v2, p1, v0

    add-int/lit8 v0, p2, 0x3

    .line 145
    aput-char v4, p1, v5

    add-int/lit8 v2, p2, 0x4

    .line 146
    aput-char v1, p1, v0

    add-int/lit8 v0, p2, 0x5

    .line 147
    aput-char v3, p1, v2

    add-int/lit8 v1, p2, 0x6

    .line 148
    aput-char v4, p1, v0

    add-int/lit8 v0, p2, 0x7

    .line 149
    aput-char v3, p1, v1

    add-int/lit8 v1, p2, 0x8

    const/16 v2, 0x74

    .line 150
    aput-char v2, p1, v0

    add-int/lit8 v0, p2, 0x9

    const/16 v2, 0x79

    .line 151
    aput-char v2, p1, v1

    goto :goto_16

    .line 155
    :cond_7f
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x30

    if-nez v0, :cond_96

    add-int/lit8 v0, p2, 0x1

    .line 157
    aput-char v2, p1, p2

    add-int/lit8 v3, p2, 0x2

    .line 158
    aput-char v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    .line 159
    aput-char v2, p1, v3

    goto :goto_16

    :cond_96
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_ab

    add-int/lit8 v0, p2, 0x1

    .line 163
    aput-char v5, p1, p2

    add-int/lit8 v3, p2, 0x2

    .line 164
    aput-char v2, p1, v0

    add-int/lit8 v0, p2, 0x3

    .line 165
    aput-char v1, p1, v3

    add-int/lit8 v1, p2, 0x4

    .line 166
    aput-char v2, p1, v0

    goto :goto_4b

    :cond_ab
    shr-int/lit8 v3, v0, 0x17

    and-int/lit16 v3, v3, 0xff

    const v4, 0x7fffff

    and-int/2addr v4, v0

    if-nez v3, :cond_b8

    const/16 v6, -0x95

    goto :goto_bd

    :cond_b8
    add-int/lit16 v6, v3, -0x96

    const/high16 v7, 0x800000

    or-int/2addr v4, v7

    :goto_bd
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v0, :cond_c3

    const/4 v0, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v0, 0x0

    :goto_c4
    and-int/lit8 v9, v4, 0x1

    if-nez v9, :cond_ca

    const/4 v9, 0x1

    goto :goto_cb

    :cond_ca
    const/4 v9, 0x0

    :goto_cb
    mul-int/lit8 v10, v4, 0x4

    add-int/lit8 v11, v10, 0x2

    int-to-long v12, v4

    const-wide/32 v14, 0x800000

    cmp-long v16, v12, v14

    if-nez v16, :cond_dc

    if-gt v3, v8, :cond_da

    goto :goto_dc

    :cond_da
    const/4 v3, 0x1

    goto :goto_dd

    :cond_dc
    :goto_dc
    const/4 v3, 0x2

    :goto_dd
    sub-int v3, v10, v3

    add-int/lit8 v6, v6, -0x2

    const-wide/32 v14, 0x1624c50

    const-wide/32 v16, 0x989680

    const/16 v18, 0x1f

    const/16 p0, 0x2e

    if-ltz v6, :cond_1ce

    const/16 v19, 0x2d

    const/16 v20, 0x2

    int-to-long v4, v6

    const-wide/32 v21, 0x2deefb

    mul-long v4, v4, v21

    .line 201
    div-long v4, v4, v16

    long-to-int v5, v4

    if-nez v5, :cond_101

    const/4 v4, 0x1

    const-wide/32 v21, 0x98967f

    goto :goto_10c

    :cond_101
    const-wide/32 v21, 0x98967f

    int-to-long v12, v5

    mul-long v12, v12, v14

    add-long v12, v12, v21

    .line 202
    div-long v12, v12, v16

    long-to-int v4, v12

    :goto_10c
    add-int/lit8 v4, v4, 0x3a

    neg-int v6, v6

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 204
    sget-object v12, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    aget-object v13, v12, v5

    const/16 v23, 0x30

    aget v2, v13, v7

    move-wide/from16 v24, v14

    int-to-long v14, v2

    .line 205
    aget v2, v13, v8

    const/16 v13, 0xa

    int-to-long v1, v2

    move-wide/from16 v26, v14

    const/16 v15, 0xa

    int-to-long v13, v10

    mul-long v28, v13, v26

    mul-long v30, v13, v1

    shr-long v30, v30, v18

    add-long v28, v28, v30

    add-int/lit8 v4, v4, -0x1f

    const/16 v30, 0x0

    const/16 v31, 0x1

    shr-long v7, v28, v4

    long-to-int v8, v7

    move v7, v0

    move-wide/from16 v28, v1

    int-to-long v0, v11

    mul-long v32, v0, v26

    mul-long v0, v0, v28

    shr-long v0, v0, v18

    add-long v32, v32, v0

    shr-long v0, v32, v4

    long-to-int v1, v0

    move v2, v1

    int-to-long v0, v3

    mul-long v26, v26, v0

    mul-long v0, v0, v28

    shr-long v0, v0, v18

    add-long v26, v26, v0

    shr-long v0, v26, v4

    long-to-int v1, v0

    if-eqz v5, :cond_18c

    add-int/lit8 v0, v2, -0x1

    .line 209
    div-int/2addr v0, v15

    div-int/lit8 v4, v1, 0xa

    if-gt v0, v4, :cond_18c

    add-int/lit8 v0, v5, -0x1

    move/from16 v26, v1

    move v4, v2

    if-nez v0, :cond_165

    const/4 v2, 0x1

    goto :goto_16d

    :cond_165
    int-to-long v1, v0

    mul-long v1, v1, v24

    add-long v1, v1, v21

    .line 214
    div-long v1, v1, v16

    long-to-int v2, v1

    :goto_16d
    add-int/lit8 v2, v2, 0x3a

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v2

    .line 216
    aget-object v0, v12, v0

    aget v1, v0, v30

    int-to-long v1, v1

    mul-long v1, v1, v13

    aget v0, v0, v31

    move-wide/from16 v16, v1

    int-to-long v0, v0

    mul-long v13, v13, v0

    shr-long v0, v13, v18

    add-long v0, v16, v0

    add-int/lit8 v6, v6, -0x1f

    shr-long/2addr v0, v6

    const-wide/16 v12, 0xa

    .line 217
    rem-long/2addr v0, v12

    long-to-int v1, v0

    goto :goto_190

    :cond_18c
    move/from16 v26, v1

    move v4, v2

    const/4 v1, 0x0

    :goto_190
    const/4 v0, 0x0

    :goto_191
    if-lez v11, :cond_19d

    .line 225
    rem-int/lit8 v2, v11, 0x5

    if-eqz v2, :cond_198

    goto :goto_19d

    .line 228
    :cond_198
    div-int/lit8 v11, v11, 0x5

    add-int/lit8 v0, v0, 0x1

    goto :goto_191

    :cond_19d
    :goto_19d
    const/4 v2, 0x0

    :goto_19e
    if-lez v10, :cond_1aa

    .line 237
    rem-int/lit8 v6, v10, 0x5

    if-eqz v6, :cond_1a5

    goto :goto_1aa

    .line 240
    :cond_1a5
    div-int/lit8 v10, v10, 0x5

    add-int/lit8 v2, v2, 0x1

    goto :goto_19e

    :cond_1aa
    :goto_1aa
    const/4 v6, 0x0

    :goto_1ab
    if-lez v3, :cond_1b7

    .line 249
    rem-int/lit8 v10, v3, 0x5

    if-eqz v10, :cond_1b2

    goto :goto_1b7

    .line 252
    :cond_1b2
    div-int/lit8 v3, v3, 0x5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1ab

    :cond_1b7
    :goto_1b7
    if-lt v0, v5, :cond_1bb

    const/4 v0, 0x1

    goto :goto_1bc

    :cond_1bb
    const/4 v0, 0x0

    :goto_1bc
    if-lt v2, v5, :cond_1c0

    const/4 v2, 0x1

    goto :goto_1c1

    :cond_1c0
    const/4 v2, 0x0

    :goto_1c1
    if-lt v6, v5, :cond_1c5

    const/4 v3, 0x1

    goto :goto_1c6

    :cond_1c5
    const/4 v3, 0x0

    :goto_1c6
    move v14, v8

    move v8, v2

    move v2, v1

    move v1, v4

    move/from16 v4, v26

    goto/16 :goto_290

    :cond_1ce
    move v7, v0

    move-wide/from16 v24, v14

    const/16 v15, 0xa

    const/16 v19, 0x2d

    const/16 v20, 0x2

    const-wide/32 v21, 0x98967f

    const/16 v23, 0x30

    const/16 v30, 0x0

    const/16 v31, 0x1

    neg-int v0, v6

    int-to-long v1, v0

    const-wide/32 v4, 0x6aa784

    mul-long v1, v1, v4

    .line 262
    div-long v1, v1, v16

    long-to-int v2, v1

    sub-int/2addr v0, v2

    if-nez v0, :cond_1ef

    const/4 v1, 0x1

    goto :goto_1f7

    :cond_1ef
    int-to-long v4, v0

    mul-long v4, v4, v24

    add-long v4, v4, v21

    .line 264
    div-long v4, v4, v16

    long-to-int v1, v4

    :goto_1f7
    add-int/lit8 v1, v1, -0x3d

    sub-int v1, v2, v1

    .line 267
    sget-object v4, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    aget-object v5, v4, v0

    aget v8, v5, v30

    int-to-long v12, v8

    .line 268
    aget v5, v5, v31

    move v8, v0

    move v14, v1

    int-to-long v0, v5

    add-int/lit8 v5, v14, -0x1f

    move-wide/from16 v26, v0

    int-to-long v0, v10

    mul-long v28, v0, v12

    mul-long v32, v0, v26

    shr-long v32, v32, v18

    add-long v28, v28, v32

    move-wide/from16 v32, v0

    shr-long v0, v28, v5

    long-to-int v1, v0

    move v14, v1

    int-to-long v0, v11

    mul-long v28, v0, v12

    mul-long v0, v0, v26

    shr-long v0, v0, v18

    add-long v28, v28, v0

    shr-long v0, v28, v5

    long-to-int v1, v0

    move v11, v1

    int-to-long v0, v3

    mul-long v12, v12, v0

    mul-long v0, v0, v26

    shr-long v0, v0, v18

    add-long/2addr v12, v0

    shr-long v0, v12, v5

    long-to-int v1, v0

    if-eqz v2, :cond_267

    add-int/lit8 v0, v11, -0x1

    .line 274
    div-int/2addr v0, v15

    div-int/lit8 v5, v1, 0xa

    if-gt v0, v5, :cond_267

    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v5, v2, -0x1

    if-nez v0, :cond_243

    const/4 v8, 0x1

    goto :goto_24b

    :cond_243
    int-to-long v12, v0

    mul-long v12, v12, v24

    add-long v12, v12, v21

    .line 276
    div-long v12, v12, v16

    long-to-int v8, v12

    :goto_24b
    add-int/lit8 v8, v8, -0x3d

    sub-int/2addr v5, v8

    .line 278
    aget-object v0, v4, v0

    aget v4, v0, v30

    int-to-long v12, v4

    mul-long v12, v12, v32

    aget v0, v0, v31

    move v4, v1

    int-to-long v0, v0

    mul-long v0, v0, v32

    shr-long v0, v0, v18

    add-long/2addr v12, v0

    add-int/lit8 v5, v5, -0x1f

    shr-long v0, v12, v5

    const-wide/16 v12, 0xa

    .line 279
    rem-long/2addr v0, v12

    long-to-int v1, v0

    goto :goto_269

    :cond_267
    move v4, v1

    const/4 v1, 0x0

    :goto_269
    add-int v5, v2, v6

    const/4 v0, 0x1

    if-lt v0, v2, :cond_270

    const/4 v6, 0x1

    goto :goto_271

    :cond_270
    const/4 v6, 0x0

    :goto_271
    const/16 v8, 0x17

    if-ge v2, v8, :cond_27f

    add-int/lit8 v8, v2, -0x1

    shl-int v8, v0, v8

    sub-int/2addr v8, v0

    and-int/2addr v8, v10

    if-nez v8, :cond_27f

    const/4 v8, 0x1

    goto :goto_280

    :cond_27f
    const/4 v8, 0x0

    .line 285
    :goto_280
    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v0, :cond_286

    const/4 v0, 0x0

    goto :goto_287

    :cond_286
    const/4 v0, 0x1

    :goto_287
    if-lt v0, v2, :cond_28b

    const/4 v0, 0x1

    goto :goto_28c

    :cond_28b
    const/4 v0, 0x0

    :goto_28c
    move v3, v0

    move v2, v1

    move v0, v6

    move v1, v11

    :goto_290
    const v6, 0x3b9aca00

    const/16 v13, 0xa

    :goto_295
    if-lez v13, :cond_29f

    if-lt v1, v6, :cond_29a

    goto :goto_29f

    .line 303
    :cond_29a
    div-int/lit8 v6, v6, 0xa

    add-int/lit8 v13, v13, -0x1

    goto :goto_295

    :cond_29f
    :goto_29f
    add-int/2addr v5, v13

    add-int/lit8 v6, v5, -0x1

    const/4 v10, -0x3

    if-lt v6, v10, :cond_2ab

    const/4 v10, 0x7

    if-lt v6, v10, :cond_2a9

    goto :goto_2ab

    :cond_2a9
    const/4 v10, 0x0

    goto :goto_2ac

    :cond_2ab
    :goto_2ab
    const/4 v10, 0x1

    :goto_2ac
    if-eqz v0, :cond_2b2

    if-nez v9, :cond_2b2

    add-int/lit8 v1, v1, -0x1

    :cond_2b2
    const/4 v0, 0x0

    .line 315
    :goto_2b3
    div-int/lit8 v11, v1, 0xa

    div-int/lit8 v12, v4, 0xa

    const/16 v16, 0xa

    if-le v11, v12, :cond_2d5

    const/16 v15, 0x64

    if-ge v1, v15, :cond_2c2

    if-eqz v10, :cond_2c2

    goto :goto_2d5

    .line 320
    :cond_2c2
    rem-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_2c8

    const/4 v1, 0x1

    goto :goto_2c9

    :cond_2c8
    const/4 v1, 0x0

    :goto_2c9
    and-int/2addr v3, v1

    .line 322
    rem-int/lit8 v2, v14, 0xa

    .line 323
    div-int/lit8 v14, v14, 0xa

    add-int/lit8 v0, v0, 0x1

    move v1, v11

    move v4, v12

    const/16 v15, 0xa

    goto :goto_2b3

    :cond_2d5
    :goto_2d5
    if-eqz v3, :cond_2ef

    if-eqz v9, :cond_2ef

    .line 328
    :goto_2d9
    rem-int/lit8 v11, v4, 0xa

    if-nez v11, :cond_2ef

    const/16 v11, 0x64

    if-ge v1, v11, :cond_2e4

    if-eqz v10, :cond_2e4

    goto :goto_2ef

    .line 333
    :cond_2e4
    div-int/lit8 v1, v1, 0xa

    .line 334
    rem-int/lit8 v2, v14, 0xa

    .line 335
    div-int/lit8 v14, v14, 0xa

    .line 336
    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d9

    :cond_2ef
    :goto_2ef
    const/4 v1, 0x5

    if-eqz v8, :cond_2f9

    if-ne v2, v1, :cond_2f9

    .line 341
    rem-int/lit8 v8, v14, 0x2

    if-nez v8, :cond_2f9

    const/4 v2, 0x4

    :cond_2f9
    if-ne v14, v4, :cond_2ff

    if-eqz v3, :cond_301

    if-eqz v9, :cond_301

    :cond_2ff
    if-lt v2, v1, :cond_303

    :cond_301
    const/4 v1, 0x1

    goto :goto_304

    :cond_303
    const/4 v1, 0x0

    :goto_304
    add-int/2addr v14, v1

    sub-int v0, v13, v0

    if-eqz v7, :cond_30e

    add-int/lit8 v1, p2, 0x1

    .line 352
    aput-char v19, p1, p2

    goto :goto_310

    :cond_30e
    move/from16 v1, p2

    :goto_310
    if-eqz v10, :cond_364

    const/4 v7, 0x0

    :goto_313
    add-int/lit8 v2, v0, -0x1

    if-ge v7, v2, :cond_326

    .line 358
    rem-int/lit8 v2, v14, 0xa

    .line 359
    div-int/lit8 v14, v14, 0xa

    add-int v3, v1, v0

    sub-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 360
    aput-char v2, p1, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_313

    .line 362
    :cond_326
    rem-int/lit8 v14, v14, 0xa

    add-int/lit8 v14, v14, 0x30

    int-to-char v2, v14

    aput-char v2, p1, v1

    add-int/lit8 v2, v1, 0x1

    .line 363
    aput-char p0, p1, v2

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_33c

    add-int/lit8 v0, v1, 0x1

    .line 366
    aput-char v23, p1, v1

    move v1, v0

    :cond_33c
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x45

    .line 370
    aput-char v2, p1, v1

    if-gez v6, :cond_34a

    add-int/lit8 v1, v1, 0x2

    .line 372
    aput-char v19, p1, v0

    neg-int v6, v6

    move v0, v1

    :cond_34a
    const/16 v13, 0xa

    if-lt v6, v13, :cond_358

    add-int/lit8 v1, v0, 0x1

    .line 376
    div-int/lit8 v2, v6, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, p1, v0

    move v0, v1

    :cond_358
    add-int/lit8 v1, v0, 0x1

    const/16 v13, 0xa

    .line 378
    rem-int/2addr v6, v13

    add-int/lit8 v6, v6, 0x30

    int-to-char v2, v6

    aput-char v2, p1, v0

    goto/16 :goto_3ef

    :cond_364
    if-gez v6, :cond_395

    add-int/lit8 v2, v1, 0x1

    .line 383
    aput-char v23, p1, v1

    add-int/lit8 v1, v1, 0x2

    .line 384
    aput-char p0, p1, v2

    const/4 v2, -0x1

    :goto_36f
    if-le v2, v6, :cond_379

    add-int/lit8 v3, v1, 0x1

    .line 386
    aput-char v23, p1, v1

    add-int/lit8 v2, v2, -0x1

    move v1, v3

    goto :goto_36f

    :cond_379
    move v2, v1

    const/4 v7, 0x0

    :goto_37b
    if-ge v7, v0, :cond_393

    add-int v3, v1, v0

    sub-int/2addr v3, v7

    const/16 v31, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 390
    rem-int/lit8 v4, v14, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, p1, v3

    const/16 v13, 0xa

    .line 391
    div-int/2addr v14, v13

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_37b

    :cond_393
    move v1, v2

    goto :goto_3ef

    :cond_395
    if-lt v5, v0, :cond_3c2

    const/4 v7, 0x0

    :goto_398
    if-ge v7, v0, :cond_3ae

    add-int v2, v1, v0

    sub-int/2addr v2, v7

    const/16 v31, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 397
    rem-int/lit8 v3, v14, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, p1, v2

    const/16 v13, 0xa

    .line 398
    div-int/2addr v14, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_398

    :cond_3ae
    add-int/2addr v1, v0

    :goto_3af
    if-ge v0, v5, :cond_3b9

    add-int/lit8 v2, v1, 0x1

    .line 402
    aput-char v23, p1, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_3af

    :cond_3b9
    add-int/lit8 v0, v1, 0x1

    .line 404
    aput-char p0, p1, v1

    add-int/lit8 v1, v1, 0x2

    .line 405
    aput-char v23, p1, v0

    goto :goto_3ef

    :cond_3c2
    add-int/lit8 v2, v1, 0x1

    const/4 v7, 0x0

    :goto_3c5
    if-ge v7, v0, :cond_3ea

    sub-int v3, v0, v7

    const/16 v31, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v3, v6, :cond_3d8

    add-int v3, v2, v0

    sub-int/2addr v3, v7

    add-int/lit8 v3, v3, -0x1

    .line 411
    aput-char p0, p1, v3

    add-int/lit8 v2, v2, -0x1

    :cond_3d8
    add-int v3, v2, v0

    sub-int/2addr v3, v7

    add-int/lit8 v3, v3, -0x1

    .line 414
    rem-int/lit8 v4, v14, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, p1, v3

    const/16 v13, 0xa

    .line 415
    div-int/2addr v14, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_3c5

    :cond_3ea
    const/16 v31, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    :goto_3ef
    sub-int v1, v1, p2

    return v1
.end method

.method public static toString(F)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xf

    .line 106
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 107
    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F[CI)I

    move-result p0

    .line 108
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method
