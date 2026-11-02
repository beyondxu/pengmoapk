###### Class io.dcloud.uts.BooleanKt (io.dcloud.uts.BooleanKt)
.class public final Lio/dcloud/uts/BooleanKt;
.super Ljava/lang/Object;
.source "Boolean.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBoolean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Boolean.kt\nio/dcloud/uts/BooleanKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003\u001a\u0017\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0002\u0008\u0005\u001a\u0017\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0002\u0008\u0007\u001a\u0017\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0002\u0008\t\u001a\u0017\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\nH\u0007\u00a2\u0006\u0002\u0008\u000b\u001a\u001b\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000cH\u0007\u00a2\u0006\u0002\u0008\r\u001a\u0017\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u000eH\u0007\u00a2\u0006\u0002\u0008\u000f\u001a%\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0002\u0008\u0003\u0018\u00010\u0010j\u0008\u0012\u0002\u0008\u0003\u0018\u0001`\u0011H\u0007\u00a2\u0006\u0002\u0008\u0012\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0010\u0010\u0002\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0013H\u0007\u00a2\u0006\u0002\u0008\u0014\u001a\u0017\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0002\u0008\u0016\u001a\u0017\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0008\u0018\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "isTruthy",
        "",
        "value",
        "(Ljava/lang/Boolean;)Z",
        "",
        "isTruthy_string",
        "",
        "isTruthy_number",
        "Lio/dcloud/uts/UTSJSONObject;",
        "isTruthy_json",
        "Lio/dcloud/uts/UTSObject;",
        "isTruthy_utsobj",
        "Lio/dcloud/uts/UTSArray;",
        "isTruthy_array",
        "Lio/dcloud/uts/ArrayBuffer;",
        "isTruthy_arraybuffer",
        "Ljava/util/LinkedHashSet;",
        "Lio/dcloud/uts/Set;",
        "isTruthy_set",
        "Lio/dcloud/uts/Map;",
        "isTruthy_map",
        "Lio/dcloud/uts/UTSRegExp;",
        "isTruthy_regexp",
        "Lio/dcloud/uts/Date;",
        "isTruthy_date",
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


# direct methods
.method public static final isTruthy(Ljava/lang/Boolean;)Z
    .registers 2

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isTruthy(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 80
    :cond_4
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 81
    :cond_f
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1a

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lio/dcloud/uts/BooleanKt;->isTruthy_number(Ljava/lang/Number;)Z

    move-result p0

    return p0

    .line 82
    :cond_1a
    instance-of v1, p0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_28

    return v2

    :cond_28
    return v0

    .line 83
    :cond_29
    instance-of p0, p0, Lkotlin/Unit;

    if-eqz p0, :cond_2e

    return v0

    :cond_2e
    return v2
.end method

.method public static final isTruthy_array(Lio/dcloud/uts/UTSArray;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final isTruthy_arraybuffer(Lio/dcloud/uts/ArrayBuffer;)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final isTruthy_date(Lio/dcloud/uts/Date;)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final isTruthy_json(Lio/dcloud/uts/UTSJSONObject;)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final isTruthy_map(Lio/dcloud/uts/Map;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/Map<",
            "**>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final isTruthy_number(Ljava/lang/Number;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 24
    :cond_4
    instance-of v1, p0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_20

    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-static {v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Double;D)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_1f

    return v4

    :cond_1f
    return v0

    .line 25
    :cond_20
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_3a

    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_39

    return v4

    :cond_39
    return v0

    .line 26
    :cond_3a
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_4a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    return v4

    :cond_49
    return v0

    .line 27
    :cond_4a
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_5c

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    return v4

    :cond_5b
    return v0

    .line 28
    :cond_5c
    instance-of v1, p0, Ljava/lang/Short;

    if-eqz v1, :cond_68

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    if-eqz p0, :cond_67

    return v4

    :cond_67
    return v0

    .line 29
    :cond_68
    instance-of v1, p0, Ljava/lang/Byte;

    if-eqz v1, :cond_74

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    if-eqz p0, :cond_73

    return v4

    :cond_73
    return v0

    .line 30
    :cond_74
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double p0, v5, v2

    if-nez p0, :cond_7d

    goto :goto_84

    :cond_7d
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_84

    return v4

    :cond_84
    :goto_84
    return v0
.end method

.method public static final isTruthy_regexp(Lio/dcloud/uts/UTSRegExp;)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final isTruthy_set(Ljava/util/LinkedHashSet;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final isTruthy_string(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_c

    .line 17
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static final isTruthy_utsobj(Lio/dcloud/uts/UTSObject;)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
