###### Class io.dcloud.uts.NumberKt (io.dcloud.uts.NumberKt)
.class public final Lio/dcloud/uts/NumberKt;
.super Ljava/lang/Object;
.source "Number.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\u001a\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u001a\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u001a\u0016\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u0001\u001a\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0001\u001a\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0001\u001a\u0010\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a\u000e\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0013\u001a\u001a\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0001\u001a\u001a\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0001\u001a\u0014\u0010\u0018\u001a\u00020\u0013*\u00020\u00012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0001\u001a\n\u0010\u001a\u001a\u00020\u0013*\u00020\u0001\u001a\u0014\u0010\u001b\u001a\u00020\u0013*\u00020\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0001\u001a\u001d\u0010\u001b\u001a\u00020\u0013*\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0008\u001c\u001a\u0014\u0010\u001b\u001a\u00020\u0013*\u00020\u00012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0001\u001a\u001d\u0010\u001b\u001a\u00020\u0013*\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0008\u001c\u001a\u0016\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u001f\u001a\u0016\u0010 \u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u001f\u001a\u0016\u0010\"\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u001f\u001a\u0012\u0010$\u001a\u00020\u0013*\u00020\u00012\u0006\u0010%\u001a\u00020\u0001\u001a\n\u0010&\u001a\u00020\u0001*\u00020\u0001\u001a\u0015\u0010\'\u001a\u00020\u001f*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0086\u0002\u001a\u0015\u0010)\u001a\u00020\u0001*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0086\u0002\u001a\u0015\u0010)\u001a\u00020\u0013*\u00020\u00012\u0006\u0010(\u001a\u00020\u0013H\u0086\u0002\u001a\u0015\u0010*\u001a\u00020\u0001*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0086\u0002\u001a\u0015\u0010+\u001a\u00020\u0001*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0086\u0002\u001a\u0015\u0010,\u001a\u00020\u0001*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0086\u0002\u001a\u0015\u0010-\u001a\u00020\u0001*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0086\u0002\u001a\r\u0010.\u001a\u00020\u0001*\u00020\u0001H\u0086\u0002\u001a\r\u0010/\u001a\u00020\u0001*\u00020\u0001H\u0086\u0002\u001a\r\u00100\u001a\u00020\u0001*\u00020\u0001H\u0086\u0002\u001a\r\u00101\u001a\u00020\u0001*\u00020\u0001H\u0086\u0002\u001a\u0015\u00102\u001a\u00020\u0001*\u00020\u00012\u0006\u00103\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u00104\u001a\u00020\u0001*\u00020\u00012\u0006\u00103\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u00105\u001a\u00020\u0001*\u00020\u00012\u0006\u00103\u001a\u00020\u0001H\u0086\u0004\u001a\n\u00106\u001a\u00020\u0001*\u00020\u0001\u001a\u0015\u00107\u001a\u00020\u0001*\u00020\u00012\u0006\u00103\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u00108\u001a\u00020\u0001*\u00020\u00012\u0006\u00103\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u00109\u001a\u00020\u0001*\u00020\u00012\u0006\u00103\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010:\u001a\u00020;*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0086\u0002\u001a\u0015\u0010:\u001a\u00020;*\u00020\u00012\u0006\u0010(\u001a\u00020\u001fH\u0086\u0002\u001a\u0015\u0010:\u001a\u00020<*\u00020\u00012\u0006\u0010(\u001a\u00020=H\u0086\u0002\u001a\u0015\u0010:\u001a\u00020;*\u00020\u001f2\u0006\u0010(\u001a\u00020\u0001H\u0086\u0002\u001a\u0015\u0010:\u001a\u00020<*\u00020=2\u0006\u0010(\u001a\u00020\u0001H\u0086\u0002\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\u00a8\u0006>"
    }
    d2 = {
        "NaN",
        "",
        "getNaN",
        "()Ljava/lang/Number;",
        "Infinity",
        "getInfinity",
        "UTSNumber",
        "input",
        "numberEquals",
        "",
        "a",
        "",
        "b",
        "numberEqualsImpl",
        "isFinite",
        "number",
        "isNaN",
        "parseFloatInternal",
        "string",
        "",
        "parseFloat",
        "parseIntInternal",
        "radix",
        "parseInt",
        "toFixed",
        "fractionDigits",
        "toStringAsJS",
        "toString",
        "toString_number_nullable",
        "intToString",
        "value",
        "",
        "bigIntToString",
        "Ljava/math/BigDecimal;",
        "doubleToString",
        "",
        "toPrecision",
        "precision",
        "valueOf",
        "compareTo",
        "other",
        "plus",
        "minus",
        "times",
        "div",
        "rem",
        "inc",
        "dec",
        "unaryPlus",
        "unaryMinus",
        "and",
        "next",
        "or",
        "xor",
        "inv",
        "shl",
        "shr",
        "ushr",
        "rangeTo",
        "Lkotlin/ranges/IntRange;",
        "Lkotlin/ranges/LongRange;",
        "",
        "utsplugin_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Infinity:Ljava/lang/Number;

.field private static final NaN:Ljava/lang/Number;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    sget-object v0, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSNumber;->getNaN()Ljava/lang/Number;

    move-result-object v0

    sput-object v0, Lio/dcloud/uts/NumberKt;->NaN:Ljava/lang/Number;

    .line 11
    sget-object v0, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSNumber;->getPOSITIVE_INFINITY()Ljava/lang/Number;

    move-result-object v0

    sput-object v0, Lio/dcloud/uts/NumberKt;->Infinity:Ljava/lang/Number;

    return-void
.end method

.method public static final UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "use kotlin.Number instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "kotlin.Number"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final and(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/2addr p0, p1

    .line 1256
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final bigIntToString(Ljava/math/BigDecimal;I)Ljava/lang/String;
    .registers 8

    const-string v0, "number"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "toCharArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v1

    .line 630
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    .line 633
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(I)V

    const-string p1, ""

    .line 635
    :goto_1f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v3, v5}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v3

    if-lez v3, :cond_52

    .line 636
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v1

    .line 637
    aget-object v3, v1, v4

    const/4 v4, 0x1

    .line 638
    aget-object v1, v1, v4

    .line 639
    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, v3

    goto :goto_1f

    :cond_52
    if-nez p0, :cond_63

    .line 645
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_63
    return-object p1
.end method

.method public static final compareTo(Ljava/lang/Number;Ljava/lang/Number;)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5f

    .line 748
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    .line 750
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    .line 751
    :cond_1f
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    .line 752
    :cond_2c
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    .line 753
    :cond_39
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_47

    int-to-long v0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0

    .line 754
    :cond_47
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_55

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    :cond_55
    int-to-double v0, p0

    .line 755
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 758
    :cond_5f
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_b4

    .line 759
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    .line 761
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_74

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    .line 762
    :cond_74
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_81

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    .line 763
    :cond_81
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_8e

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    .line 764
    :cond_8e
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9c

    int-to-long v0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0

    .line 765
    :cond_9c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_aa

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    :cond_aa
    int-to-double v0, p0

    .line 766
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 769
    :cond_b4
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_109

    .line 770
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 772
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_c9

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    .line 773
    :cond_c9
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_d6

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    .line 774
    :cond_d6
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_e3

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0

    .line 775
    :cond_e3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_f1

    int-to-long v0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0

    .line 776
    :cond_f1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_ff

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    :cond_ff
    int-to-double v0, p0

    .line 777
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 780
    :cond_109
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_160

    .line 781
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 783
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_11f

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0

    .line 784
    :cond_11f
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_12d

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0

    .line 785
    :cond_12d
    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_13b

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0

    .line 786
    :cond_13b
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_148

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0

    .line 787
    :cond_148
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_156

    long-to-float p0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    :cond_156
    long-to-double v0, v0

    .line 788
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 791
    :cond_160
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1b7

    .line 792
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 794
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_176

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    .line 795
    :cond_176
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_184

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    .line 796
    :cond_184
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_192

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    .line 797
    :cond_192
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1a0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    .line 798
    :cond_1a0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1ad

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    :cond_1ad
    float-to-double v0, p0

    .line 799
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 803
    :cond_1b7
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 805
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_1c9

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 806
    :cond_1c9
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_1d7

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 807
    :cond_1d7
    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_1e5

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 808
    :cond_1e5
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_1f3

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 809
    :cond_1f3
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_201

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 810
    :cond_201
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static final dec(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1219
    :cond_16
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1220
    :cond_28
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1221
    :cond_3a
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1222
    :cond_4c
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 v0, -0x40800000    # -1.0f

    add-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1223
    :cond_5e
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final div(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 16

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_1f

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1f

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 1062
    :goto_20
    instance-of v3, p0, Ljava/lang/Byte;

    if-nez v3, :cond_32

    instance-of v3, p0, Ljava/lang/Short;

    if-nez v3, :cond_32

    instance-of v3, p0, Ljava/lang/Integer;

    if-nez v3, :cond_32

    instance-of v3, p0, Ljava/lang/Long;

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :cond_32
    :goto_32
    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    if-eqz v0, :cond_63

    .line 1068
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_8e

    .line 1069
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long v0, p0, v11

    if-nez v0, :cond_53

    .line 1071
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_53
    if-lez v0, :cond_5c

    .line 1073
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1075
    :cond_5c
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1080
    :cond_63
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpg-double v13, v9, v11

    if-nez v13, :cond_8e

    .line 1081
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double v0, p0, v11

    if-nez v0, :cond_7c

    .line 1083
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_7c
    cmpl-double v0, p0, v11

    if-lez v0, :cond_87

    .line 1085
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1087
    :cond_87
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_8e
    if-eqz v0, :cond_bc

    if-eqz v1, :cond_bc

    .line 1094
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->rem(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1096
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    div-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_c9

    .line 1099
    :cond_ae
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_c9

    .line 1103
    :cond_bc
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 1106
    :goto_c9
    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final doubleToString(DI)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x2

    .line 652
    const-string v1, ""

    if-lt p2, v0, :cond_d6

    const/16 v0, 0x24

    if-le p2, v0, :cond_b

    goto/16 :goto_d6

    .line 656
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 657
    const-string p0, "NaN"

    return-object p0

    :cond_14
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v0, p0, v2

    if-nez v0, :cond_1d

    .line 660
    const-string p0, "Infinity"

    return-object p0

    :cond_1d
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpg-double v0, p0, v2

    if-nez v0, :cond_26

    .line 663
    const-string p0, "-Infinity"

    return-object p0

    :cond_26
    const/16 v0, 0xa

    if-ne p2, v0, :cond_35

    .line 666
    sget-object p2, Lio/dcloud/uts/android/ClassLogWrapper;->INSTANCE:Lio/dcloud/uts/android/ClassLogWrapper;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/dcloud/uts/android/ClassLogWrapper;->wrapNumberText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_46

    .line 675
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    sub-double v6, v4, p0

    .line 676
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    goto :goto_4c

    .line 679
    :cond_46
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double v6, p0, v4

    :goto_4c
    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v4, v8

    if-lez v0, :cond_60

    .line 686
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "valueOf(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lio/dcloud/uts/NumberKt;->bigIntToString(Ljava/math/BigDecimal;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6a

    .line 689
    :cond_60
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p2}, Lio/dcloud/uts/NumberKt;->intToString(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p0

    :goto_6a
    cmpl-double p1, v6, v2

    if-lez p1, :cond_b7

    .line 694
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_b7

    int-to-double v4, p2

    mul-double v6, v6, v4

    .line 696
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double p1, v4, v8

    if-lez p1, :cond_9a

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v0, p2}, Lio/dcloud/uts/NumberKt;->bigIntToString(Ljava/math/BigDecimal;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b4

    .line 700
    :cond_9a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-long v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, p2}, Lio/dcloud/uts/NumberKt;->intToString(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b4
    move-object v1, p1

    sub-double/2addr v6, v4

    goto :goto_6a

    .line 705
    :cond_b7
    move-object p1, v1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_c1

    return-object p0

    .line 709
    :cond_c1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d6
    :goto_d6
    return-object v1
.end method

.method public static final getInfinity()Ljava/lang/Number;
    .registers 1

    .line 11
    sget-object v0, Lio/dcloud/uts/NumberKt;->Infinity:Ljava/lang/Number;

    return-object v0
.end method

.method public static final getNaN()Ljava/lang/Number;
    .registers 1

    .line 10
    sget-object v0, Lio/dcloud/uts/NumberKt;->NaN:Ljava/lang/Number;

    return-object v0
.end method

.method public static final inc(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1203
    :cond_16
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1204
    :cond_28
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1205
    :cond_3a
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1206
    :cond_4c
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1207
    :cond_5e
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final intToString(Ljava/lang/Number;I)Ljava/lang/String;
    .registers 10

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 600
    const-string v1, ""

    if-lt p1, v0, :cond_5e

    const/16 v0, 0x24

    if-le p1, v0, :cond_f

    goto :goto_5e

    :cond_f
    const/16 v0, 0xa

    if-ne p1, v0, :cond_18

    .line 605
    invoke-virtual {p0}, Ljava/lang/Number;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 610
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    :cond_20
    int-to-long v4, p1

    .line 613
    rem-long v6, v2, v4

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    const-string v7, "0123456789abcdefghijklmnopqrstuvwxyz"

    invoke-static {v7, v6}, Lio/dcloud/uts/StringKt;->get(Ljava/lang/String;Ljava/lang/Number;)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_20

    .line 618
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_5e

    .line 619
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public static final inv(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    not-int p0, p0

    .line 1281
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final isFinite(Ljava/lang/Number;)Z
    .registers 2

    const-string v0, "number"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    sget-object v0, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    invoke-virtual {v0, p0}, Lio/dcloud/uts/UTSNumber;->isFinite(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isNaN(Ljava/lang/Number;)Z
    .registers 2

    const-string v0, "number"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    sget-object v0, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    invoke-virtual {v0, p0}, Lio/dcloud/uts/UTSNumber;->isNaN(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_10b

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_10b

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    goto/16 :goto_10b

    .line 929
    :cond_18
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_69

    .line 930
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 932
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_4d

    instance-of p0, p1, Ljava/lang/Byte;

    if-nez p0, :cond_4d

    instance-of p0, p1, Ljava/lang/Short;

    if-nez p0, :cond_4d

    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_31

    goto :goto_4d

    .line 941
    :cond_31
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_41

    long-to-float p0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    :cond_41
    long-to-double v0, v0

    .line 942
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_157

    .line 934
    :cond_4d
    :goto_4d
    :try_start_4d
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$2(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;
    :try_end_5b
    .catch Ljava/lang/ArithmeticException; {:try_start_4d .. :try_end_5b} :catch_5c

    return-object p0

    :catch_5c
    long-to-double v0, v0

    .line 937
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 945
    :cond_69
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_cc

    .line 946
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 948
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_81

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    .line 949
    :cond_81
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    .line 950
    :cond_91
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_a1

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    .line 951
    :cond_a1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_b1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    .line 952
    :cond_b1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    :cond_c0
    float-to-double v0, p0

    .line 953
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_157

    .line 957
    :cond_cc
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 959
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_db

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_d8
    int-to-double p0, p0

    :goto_d9
    sub-double/2addr v0, p0

    goto :goto_106

    .line 960
    :cond_db
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_e4

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    goto :goto_d8

    .line 961
    :cond_e4
    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_ed

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    goto :goto_d8

    .line 962
    :cond_ed
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_f7

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    goto :goto_d9

    .line 963
    :cond_f7
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_101

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double p0, p0

    goto :goto_d9

    .line 964
    :cond_101
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_d9

    :goto_106
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_157

    .line 904
    :cond_10b
    :goto_10b
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 906
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_15a

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_15a

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_11c

    goto :goto_15a

    .line 915
    :cond_11c
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_13e

    int-to-long v0, p0

    .line 917
    :try_start_121
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$2(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_12f
    .catch Ljava/lang/ArithmeticException; {:try_start_121 .. :try_end_12f} :catch_130

    return-object v0

    :catch_130
    int-to-double v0, p0

    .line 920
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 924
    :cond_13e
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_14d

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_157

    :cond_14d
    int-to-double v0, p0

    .line 925
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 973
    :goto_157
    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 908
    :cond_15a
    :goto_15a
    :try_start_15a
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$2(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_168
    .catch Ljava/lang/ArithmeticException; {:try_start_15a .. :try_end_168} :catch_169

    return-object v0

    :catch_169
    int-to-long v0, p0

    .line 911
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p1, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-eqz v2, :cond_11

    if-eqz v3, :cond_11

    return v0

    :cond_11
    if-nez v2, :cond_34

    if-eqz v3, :cond_16

    goto :goto_34

    .line 185
    :cond_16
    instance-of v0, p0, Ljava/lang/Number;

    .line 186
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    .line 189
    const-string v0, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->numberEqualsImpl(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0

    .line 195
    :cond_2f
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_34
    :goto_34
    return v1
.end method

.method public static final numberEqualsImpl(Ljava/lang/Number;Ljava/lang/Number;)Z
    .registers 14

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    instance-of v0, p0, Ljava/lang/Double;

    .line 207
    instance-of v1, p1, Ljava/lang/Double;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    if-eqz v1, :cond_22

    .line 210
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double v4, v0, p0

    if-nez v4, :cond_21

    return v2

    :cond_21
    return v3

    .line 213
    :cond_22
    instance-of v4, p0, Ljava/lang/Integer;

    .line 214
    instance-of v5, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_2f

    if-eqz v5, :cond_2f

    .line 217
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 220
    :cond_2f
    instance-of v5, p0, Ljava/lang/Long;

    .line 221
    instance-of v6, p1, Ljava/lang/Long;

    if-eqz v5, :cond_3c

    if-eqz v6, :cond_3c

    .line 224
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 227
    :cond_3c
    instance-of v7, p0, Ljava/lang/Float;

    .line 228
    instance-of v8, p1, Ljava/lang/Float;

    if-eqz v7, :cond_52

    if-eqz v8, :cond_52

    .line 231
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_51

    return v2

    :cond_51
    return v3

    .line 234
    :cond_52
    instance-of v9, p0, Ljava/lang/Byte;

    .line 235
    instance-of v10, p1, Ljava/lang/Byte;

    if-eqz v9, :cond_66

    if-eqz v10, :cond_66

    .line 238
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    if-ne p0, p1, :cond_65

    return v2

    :cond_65
    return v3

    .line 241
    :cond_66
    instance-of v10, p0, Ljava/lang/Short;

    .line 242
    instance-of v11, p1, Ljava/lang/Short;

    if-eqz v10, :cond_7a

    if-eqz v11, :cond_7a

    .line 245
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    if-ne p0, p1, :cond_79

    return v2

    :cond_79
    return v3

    :cond_7a
    if-eqz v0, :cond_9b

    if-eqz v8, :cond_8d

    .line 271
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_8c

    return v2

    :cond_8c
    return v3

    .line 276
    :cond_8d
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double v4, v0, p0

    if-nez v4, :cond_9a

    return v2

    :cond_9a
    return v3

    :cond_9b
    if-eqz v7, :cond_bc

    if-eqz v1, :cond_ae

    .line 280
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float p1, v0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_ad

    return v2

    :cond_ad
    return v3

    .line 285
    :cond_ae
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_bb

    return v2

    :cond_bb
    return v3

    :cond_bc
    if-eqz v5, :cond_ed

    if-eqz v1, :cond_cf

    .line 289
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double v4, v0, p0

    if-nez v4, :cond_ce

    return v2

    :cond_ce
    return v3

    :cond_cf
    if-eqz v8, :cond_e0

    .line 291
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-float p0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_df

    return v2

    :cond_df
    return v3

    .line 296
    :cond_e0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_ed
    if-eqz v4, :cond_132

    if-eqz v1, :cond_100

    .line 300
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-double v0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double v4, v0, p0

    if-nez v4, :cond_ff

    return v2

    :cond_ff
    return v3

    :cond_100
    if-eqz v8, :cond_111

    .line 302
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_110

    return v2

    :cond_110
    return v3

    :cond_111
    if-eqz v6, :cond_125

    .line 304
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long v0, p0

    if-nez v6, :cond_11b

    goto :goto_124

    :cond_11b
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long v4, v0, p0

    if-nez v4, :cond_124

    return v2

    :cond_124
    :goto_124
    return v3

    .line 309
    :cond_125
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_132
    if-eqz v10, :cond_176

    if-eqz v1, :cond_145

    .line 313
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    int-to-double v0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double v4, v0, p0

    if-nez v4, :cond_144

    return v2

    :cond_144
    return v3

    :cond_145
    if-eqz v8, :cond_156

    .line 315
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_155

    return v2

    :cond_155
    return v3

    :cond_156
    if-eqz v6, :cond_16a

    .line 317
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    int-to-long v0, p0

    if-nez v6, :cond_160

    goto :goto_169

    :cond_160
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long v4, v0, p0

    if-nez v4, :cond_169

    return v2

    :cond_169
    :goto_169
    return v3

    .line 322
    :cond_16a
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_175

    return v2

    :cond_175
    return v3

    :cond_176
    if-eqz v9, :cond_1ba

    if-eqz v1, :cond_189

    .line 326
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    int-to-double v0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double v4, v0, p0

    if-nez v4, :cond_188

    return v2

    :cond_188
    return v3

    :cond_189
    if-eqz v8, :cond_19a

    .line 328
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_199

    return v2

    :cond_199
    return v3

    :cond_19a
    if-eqz v6, :cond_1ae

    .line 330
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    int-to-long v0, p0

    if-nez v6, :cond_1a4

    goto :goto_1ad

    :cond_1a4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long v4, v0, p0

    if-nez v4, :cond_1ad

    return v2

    :cond_1ad
    :goto_1ad
    return v3

    .line 335
    :cond_1ae
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_1b9

    return v2

    :cond_1b9
    return v3

    .line 339
    :cond_1ba
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_1c5

    return v2

    :cond_1c5
    return v3
.end method

.method public static final or(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1262
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_2a

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_2a

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_2a

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2a

    .line 1263
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    or-int/2addr p0, p1

    .line 1264
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1267
    :cond_2a
    sget-object v0, Lio/dcloud/uts/JSNumberUtil;->INSTANCE:Lio/dcloud/uts/JSNumberUtil;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/JSNumberUtil;->doubleToInt32(D)I

    move-result p0

    .line 1268
    sget-object v0, Lio/dcloud/uts/JSNumberUtil;->INSTANCE:Lio/dcloud/uts/JSNumberUtil;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/JSNumberUtil;->doubleToInt32(D)I

    move-result p1

    or-int/2addr p0, p1

    .line 1269
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final parseFloat(Ljava/lang/String;)Ljava/lang/Number;
    .registers 2

    const-string v0, "string"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-static {p0}, Lio/dcloud/uts/NumberKt;->parseFloatInternal(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private static final parseFloatInternal(Ljava/lang/String;)Ljava/lang/Number;
    .registers 7

    .line 367
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[^\\d+-.Ee]"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 373
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {p0, v0, v1}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 376
    :cond_36
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 378
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "E"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "e"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_84

    .line 383
    :cond_58
    const-string v1, "."

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_74

    .line 385
    invoke-static {p0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_6d

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_6d
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 388
    :cond_74
    invoke-static {p0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_7d

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_7d
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 379
    :cond_84
    :goto_84
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final parseInt(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    const-string v0, "string"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->parseIntInternal(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic parseInt$default(Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_b

    const/4 p1, 0x0

    .line 501
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    :cond_b
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->parseInt(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static final parseIntInternal(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 16

    const-string v0, "string"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 410
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    if-eqz v0, :cond_16

    check-cast v1, Ljava/lang/Number;

    return-object v1

    :cond_16
    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_3c

    .line 414
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_3c

    .line 416
    :cond_25
    new-instance v3, Lkotlin/ranges/IntRange;

    const/16 v4, 0x24

    invoke-direct {v3, v2, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 417
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_3d

    .line 420
    :cond_39
    check-cast v1, Ljava/lang/Number;

    return-object v1

    :cond_3c
    :goto_3c
    const/4 p1, 0x0

    .line 424
    :goto_3d
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/uts/StringKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 428
    const-string v3, "+"

    const/4 v4, 0x0

    invoke-static {p0, v3, v0, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    const-string v5, "-"

    if-nez v3, :cond_5f

    invoke-static {p0, v5, v0, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    goto :goto_5f

    :cond_5b
    const-string v3, ""

    move-object v6, p0

    goto :goto_7a

    .line 429
    :cond_5f
    :goto_5f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-static {p0, v3, v7}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-static {p0, v6, v4, v2, v4}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 436
    :goto_7a
    const-string v7, "0x"

    const/16 v8, 0x10

    if-nez p1, :cond_9c

    .line 438
    invoke-static {v6, v7, v0, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_99

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v2, :cond_99

    .line 440
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {v6, p0, v4, v2, v4}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 p1, 0x10

    goto :goto_ae

    :cond_99
    const/16 p1, 0xa

    goto :goto_ae

    :cond_9c
    if-ne p1, v8, :cond_ae

    .line 447
    invoke-static {p0, v7, v0, v2, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ae

    .line 451
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {v6, p0, v4, v2, v4}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 458
    :cond_ae
    :goto_ae
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v2, "0123456789abcdefghijklmnopqrstuvwxyz"

    invoke-static {v2, p0, v0}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    .line 462
    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->withIndex(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v6, 0x0

    :goto_cc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fe

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/collections/IndexedValue;

    .line 463
    move-object v8, p0

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v9

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_f8

    .line 465
    invoke-virtual {v2}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result p0

    if-nez p0, :cond_fe

    .line 480
    check-cast v1, Ljava/lang/Number;

    return-object v1

    :cond_f8
    int-to-double v8, p1

    mul-double v6, v6, v8

    int-to-double v8, v4

    add-double/2addr v6, v8

    goto :goto_cc

    :cond_fe
    const-wide p0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v0, v6, p0

    if-gez v0, :cond_10f

    double-to-int p0, v6

    .line 486
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    goto :goto_123

    :cond_10f
    const-wide/high16 p0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, v6, p0

    if-gez v0, :cond_11d

    double-to-long p0, v6

    .line 488
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    goto :goto_123

    .line 490
    :cond_11d
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 493
    :goto_123
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12d

    .line 494
    invoke-static {p0}, Lio/dcloud/uts/NumberKt;->unaryMinus(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    :cond_12d
    return-object p0
.end method

.method public static synthetic parseIntInternal$default(Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_b

    const/4 p1, 0x0

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    :cond_b
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->parseIntInternal(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static final plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_10b

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_10b

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    goto/16 :goto_10b

    .line 848
    :cond_18
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_69

    .line 849
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 851
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_4d

    instance-of p0, p1, Ljava/lang/Byte;

    if-nez p0, :cond_4d

    instance-of p0, p1, Ljava/lang/Short;

    if-nez p0, :cond_4d

    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_31

    goto :goto_4d

    .line 860
    :cond_31
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_41

    long-to-float p0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    :cond_41
    long-to-double v0, v0

    .line 861
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_157

    .line 853
    :cond_4d
    :goto_4d
    :try_start_4d
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;
    :try_end_5b
    .catch Ljava/lang/ArithmeticException; {:try_start_4d .. :try_end_5b} :catch_5c

    return-object p0

    :catch_5c
    long-to-double v0, v0

    .line 856
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 864
    :cond_69
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_cc

    .line 865
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 867
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_81

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    .line 868
    :cond_81
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    .line 869
    :cond_91
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_a1

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    .line 870
    :cond_a1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_b1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    .line 871
    :cond_b1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_157

    :cond_c0
    float-to-double v0, p0

    .line 872
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_157

    .line 876
    :cond_cc
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 878
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_db

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_d8
    int-to-double p0, p0

    :goto_d9
    add-double/2addr v0, p0

    goto :goto_106

    .line 879
    :cond_db
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_e4

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    goto :goto_d8

    .line 880
    :cond_e4
    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_ed

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    goto :goto_d8

    .line 881
    :cond_ed
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_f7

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    goto :goto_d9

    .line 882
    :cond_f7
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_101

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double p0, p0

    goto :goto_d9

    .line 883
    :cond_101
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_d9

    :goto_106
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_157

    .line 823
    :cond_10b
    :goto_10b
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 825
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_15a

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_15a

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_11c

    goto :goto_15a

    .line 834
    :cond_11c
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_13e

    int-to-long v0, p0

    .line 836
    :try_start_121
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_12f
    .catch Ljava/lang/ArithmeticException; {:try_start_121 .. :try_end_12f} :catch_130

    return-object v0

    :catch_130
    int-to-double v0, p0

    .line 839
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 843
    :cond_13e
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_14d

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_157

    :cond_14d
    int-to-double v0, p0

    .line 844
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 892
    :goto_157
    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 827
    :cond_15a
    :goto_15a
    :try_start_15a
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_168
    .catch Ljava/lang/ArithmeticException; {:try_start_15a .. :try_end_168} :catch_169

    return-object v0

    :catch_169
    int-to-long v0, p0

    .line 830
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final plus(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final rangeTo(ILjava/lang/Number;)Lkotlin/ranges/IntRange;
    .registers 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1336
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final rangeTo(Ljava/lang/Number;I)Lkotlin/ranges/IntRange;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1328
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final rangeTo(Ljava/lang/Number;Ljava/lang/Number;)Lkotlin/ranges/IntRange;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->rangeTo(ILjava/lang/Number;)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static final rangeTo(JLjava/lang/Number;)Lkotlin/ranges/LongRange;
    .registers 6

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1340
    new-instance v0, Lkotlin/ranges/LongRange;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    return-object v0
.end method

.method public static final rangeTo(Ljava/lang/Number;J)Lkotlin/ranges/LongRange;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    new-instance v0, Lkotlin/ranges/LongRange;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    return-object v0
.end method

.method public static final rem(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1119
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_6b

    .line 1120
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    .line 1122
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_22e

    .line 1123
    :cond_21
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_22e

    .line 1124
    :cond_30
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_22e

    .line 1125
    :cond_3f
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4f

    int-to-long v0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    rem-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_22e

    .line 1126
    :cond_4f
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5f

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_22e

    :cond_5f
    int-to-double v0, p0

    .line 1127
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    rem-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_22e

    .line 1130
    :cond_6b
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_cc

    .line 1131
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    .line 1133
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_82

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_22e

    .line 1134
    :cond_82
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_22e

    .line 1135
    :cond_91
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_a0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_22e

    .line 1136
    :cond_a0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_b0

    int-to-long v0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    rem-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_22e

    .line 1137
    :cond_b0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c0

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_22e

    :cond_c0
    int-to-double v0, p0

    .line 1138
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    rem-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_22e

    .line 1141
    :cond_cc
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_12d

    .line 1142
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 1144
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_e3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_22e

    .line 1145
    :cond_e3
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_f2

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_22e

    .line 1146
    :cond_f2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_101

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    rem-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_22e

    .line 1147
    :cond_101
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_111

    int-to-long v0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    rem-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_22e

    .line 1148
    :cond_111
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_121

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_22e

    :cond_121
    int-to-double v0, p0

    .line 1149
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    rem-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_22e

    .line 1152
    :cond_12d
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_190

    .line 1153
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1155
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_145

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long p0, p0

    rem-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_22e

    .line 1156
    :cond_145
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_155

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    int-to-long p0, p0

    rem-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_22e

    .line 1157
    :cond_155
    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_165

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    int-to-long p0, p0

    rem-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_22e

    .line 1158
    :cond_165
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_174

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    rem-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_22e

    .line 1159
    :cond_174
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_184

    long-to-float p0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_22e

    :cond_184
    long-to-double v0, v0

    .line 1160
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    rem-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_22e

    .line 1163
    :cond_190
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1f0

    .line 1164
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 1166
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1a8

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_22e

    .line 1167
    :cond_1a8
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1b8

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    int-to-float p1, p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_22e

    .line 1168
    :cond_1b8
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1c8

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    int-to-float p1, p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_22e

    .line 1169
    :cond_1c8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1d7

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    rem-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_22e

    .line 1170
    :cond_1d7
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1e5

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    rem-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_22e

    :cond_1e5
    float-to-double v0, p0

    .line 1171
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    rem-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_22e

    .line 1175
    :cond_1f0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1177
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_1ff

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_1fc
    int-to-double p0, p0

    :goto_1fd
    rem-double/2addr v0, p0

    goto :goto_22a

    .line 1178
    :cond_1ff
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_208

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    goto :goto_1fc

    .line 1179
    :cond_208
    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_211

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    goto :goto_1fc

    .line 1180
    :cond_211
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_21b

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    goto :goto_1fd

    .line 1181
    :cond_21b
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_225

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double p0, p0

    goto :goto_1fd

    .line 1182
    :cond_225
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_1fd

    :goto_22a
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 1191
    :goto_22e
    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final shl(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    shl-int/2addr p0, p1

    .line 1292
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final shr(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    shr-int/2addr p0, p1

    .line 1299
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_115

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_115

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    goto/16 :goto_115

    .line 1008
    :cond_18
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_6c

    .line 1009
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1011
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_4f

    instance-of p0, p1, Ljava/lang/Byte;

    if-nez p0, :cond_4f

    instance-of p0, p1, Ljava/lang/Short;

    if-nez p0, :cond_4f

    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_31

    goto :goto_4f

    .line 1020
    :cond_31
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_42

    long-to-float p0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_164

    :cond_42
    long-to-double v0, v0

    .line 1021
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_164

    .line 1013
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$1(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;
    :try_end_5d
    .catch Ljava/lang/ArithmeticException; {:try_start_4f .. :try_end_5d} :catch_5e

    return-object p0

    :catch_5e
    long-to-double v0, v0

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1024
    :cond_6c
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_d5

    .line 1025
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 1027
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_85

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_164

    .line 1028
    :cond_85
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_96

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    int-to-float p1, p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_164

    .line 1029
    :cond_96
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_a7

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    int-to-float p1, p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_164

    .line 1030
    :cond_a7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_b8

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_164

    .line 1031
    :cond_b8
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c8

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_164

    :cond_c8
    float-to-double v0, p0

    .line 1032
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_164

    .line 1036
    :cond_d5
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1038
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_e5

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_e1
    int-to-double p0, p0

    :goto_e2
    mul-double v0, v0, p0

    goto :goto_110

    .line 1039
    :cond_e5
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_ee

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    goto :goto_e1

    .line 1040
    :cond_ee
    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_f7

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    goto :goto_e1

    .line 1041
    :cond_f7
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_101

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    goto :goto_e2

    .line 1042
    :cond_101
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_10b

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double p0, p0

    goto :goto_e2

    .line 1043
    :cond_10b
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_e2

    :goto_110
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_164

    .line 983
    :cond_115
    :goto_115
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 985
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_167

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_167

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_126

    goto :goto_167

    .line 994
    :cond_126
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_149

    int-to-long v0, p0

    .line 996
    :try_start_12b
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$1(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_139
    .catch Ljava/lang/ArithmeticException; {:try_start_12b .. :try_end_139} :catch_13a

    return-object v0

    :catch_13a
    int-to-double v0, p0

    .line 999
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1003
    :cond_149
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_159

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_164

    :cond_159
    int-to-double v0, p0

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 1051
    :goto_164
    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 987
    :cond_167
    :goto_167
    :try_start_167
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$1(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_175
    .catch Ljava/lang/ArithmeticException; {:try_start_167 .. :try_end_175} :catch_176

    return-object v0

    :catch_176
    int-to-long v0, p0

    .line 990
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    mul-long v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final toFixed(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fractionDigits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_78

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 524
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 525
    const-string p0, "-Infinity"

    return-object p0

    :cond_1f
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 528
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 529
    const-string p0, "Infinity"

    return-object p0

    .line 532
    :cond_2e
    sget-object v0, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    invoke-virtual {v0, p0}, Lio/dcloud/uts/UTSNumber;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 533
    const-string p0, "NaN"

    return-object p0

    .line 538
    :cond_39
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_74

    .line 542
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-nez p0, :cond_74

    .line 547
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 549
    :cond_74
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 554
    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x66

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic toFixed$default(Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_b

    const/4 p1, 0x0

    .line 518
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    :cond_b
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->toFixed(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toPrecision(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "precision"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_18

    goto :goto_20

    :cond_18
    const/16 p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    :goto_20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x67

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e+0"

    const-string v0, "e+"

    invoke-static {p0, p1, v0}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 728
    const-string p1, "e-0"

    const-string v0, "e-"

    invoke-static {p0, p1, v0}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "radix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1c

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_13

    goto :goto_1c

    .line 587
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->intToString(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 584
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {v0, v1, p0}, Lio/dcloud/uts/NumberKt;->doubleToString(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "radix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_15

    .line 568
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 570
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toString$default(Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_c

    const/16 p1, 0xa

    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toString$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_c

    const/16 p1, 0xa

    .line 566
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toStringAsJS(Ljava/lang/Number;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 563
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p0, v0}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString_number_nullable(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;
    .registers 3

    const-string v0, "radix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_a

    .line 593
    const-string p0, "null"

    return-object p0

    .line 596
    :cond_a
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;
    .registers 3

    const-string v0, "radix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_a

    .line 575
    const-string p0, "null"

    return-object p0

    .line 577
    :cond_a
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toString_number_nullable$default(Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_c

    const/16 p1, 0xa

    .line 590
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 589
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_c

    const/16 p1, 0xa

    .line 573
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 572
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unaryMinus(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1245
    :cond_15
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1246
    :cond_25
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1247
    :cond_35
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1248
    :cond_45
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    neg-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1249
    :cond_55
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final unaryPlus(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1231
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1232
    :cond_14
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1233
    :cond_23
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1234
    :cond_32
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1235
    :cond_41
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 1236
    :cond_50
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final ushr(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1305
    instance-of v0, p0, Ljava/lang/Double;

    const-wide v1, 0xffffffffL

    if-nez v0, :cond_1f

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_18

    goto :goto_1f

    .line 1306
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    and-long/2addr v3, v1

    long-to-int p0, v3

    goto :goto_29

    .line 1305
    :cond_1f
    :goto_1f
    sget-object v0, Lio/dcloud/uts/JSNumberUtil;->INSTANCE:Lio/dcloud/uts/JSNumberUtil;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lio/dcloud/uts/JSNumberUtil;->doubleToInt32(D)I

    move-result p0

    .line 1310
    :goto_29
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    ushr-int/2addr p0, p1

    if-gez p0, :cond_3b

    int-to-long p0, p0

    and-long/2addr p0, v1

    .line 1317
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_3b
    int-to-long p0, p0

    .line 1319
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static final valueOf(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final xor(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    xor-int/2addr p0, p1

    .line 1276
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method
