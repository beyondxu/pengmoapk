###### Class io.dcloud.uts.UTSKeyIterable (io.dcloud.uts.UTSKeyIterable)
.class public interface abstract Lio/dcloud/uts/UTSKeyIterable;
.super Ljava/lang/Object;
.source "UTSIterator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/UTSKeyIterable$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSIterator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSIterator.kt\nio/dcloud/uts/UTSKeyIterable\n+ 2 UTSArray.kt\nio/dcloud/uts/UTSArrayKt\n*L\n1#1,202:1\n39#2:203\n*S KotlinDebug\n*F\n+ 1 UTSIterator.kt\nio/dcloud/uts/UTSKeyIterable\n*L\n59#1:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\tH\u0002J\u0013\u0010\n\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0096\u0002J\u001b\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010H\u0016\u00a8\u0006\u0011\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/dcloud/uts/UTSKeyIterable;",
        "",
        "ignoredKeys",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "getAllFields",
        "",
        "Ljava/lang/reflect/Field;",
        "clazz",
        "Ljava/lang/Class;",
        "get",
        "propertyName",
        "set",
        "",
        "value",
        "keyIterator",
        "Lio/dcloud/uts/UTSIterator;",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract ignoredKeys()Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract keyIterator()Lio/dcloud/uts/UTSIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/UTSIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

###### Class io.dcloud.uts.UTSKeyIterable.CC (io.dcloud.uts.UTSKeyIterable$-CC)
.class public final synthetic Lio/dcloud/uts/UTSKeyIterable$-CC;
.super Ljava/lang/Object;
.source "UTSIterator.kt"


# direct methods
.method public static $default$get(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "_this"    # Lio/dcloud/uts/UTSKeyIterable;

    .line 0
    const-string v0, "propertyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lio/dcloud/uts/UTSKeyIterable$-CC;->$private$getAllFields(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Field;

    .line 80
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_2e

    :cond_2d
    move-object v3, v1

    .line 79
    :goto_2e
    check-cast v3, Ljava/lang/reflect/Field;

    if-nez v3, :cond_33

    return-object v1

    .line 83
    :cond_33
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_3b

    return-object p1

    :catch_3b
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    sget-object v2, Lio/dcloud/uts/console;->INSTANCE:Lio/dcloud/uts/console;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-virtual {v2, v0}, Lio/dcloud/uts/console;->errorV1([Ljava/lang/Object;)V

    return-object v1
.end method

.method public static $default$ignoredKeys(Lio/dcloud/uts/UTSKeyIterable;)Lio/dcloud/uts/UTSArray;
    .registers 2
    .param p0, "_this"    # Lio/dcloud/uts/UTSKeyIterable;

    .line 203
    new-instance v0, Lio/dcloud/uts/UTSArray;

    invoke-direct {v0}, Lio/dcloud/uts/UTSArray;-><init>()V

    return-object v0
.end method

.method public static $default$keyIterator(Lio/dcloud/uts/UTSKeyIterable;)Lio/dcloud/uts/UTSIterator;
    .registers 6
    .param p0, "_this"    # Lio/dcloud/uts/UTSKeyIterable;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 119
    invoke-interface {p0}, Lio/dcloud/uts/UTSKeyIterable;->ignoredKeys()Lio/dcloud/uts/UTSArray;

    move-result-object v1

    .line 121
    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 124
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KProperty1;

    .line 126
    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/dcloud/uts/UTSArray;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_1b

    .line 129
    :cond_32
    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 135
    :cond_3a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    new-instance v1, Lio/dcloud/uts/UTSIterator;

    new-instance v2, Lio/dcloud/uts/UTSKeyIterable$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lio/dcloud/uts/UTSKeyIterable$$ExternalSyntheticLambda0;-><init>(Ljava/util/Iterator;)V

    invoke-direct {v1, v2}, Lio/dcloud/uts/UTSIterator;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v1
.end method

.method public static $default$set(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p0, "_this"    # Lio/dcloud/uts/UTSKeyIterable;

    .line 0
    const-string v0, "propertyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 96
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lio/dcloud/uts/UTSKeyIterable$-CC;->$private$getAllFields(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Field;

    .line 97
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    .line 96
    :goto_2e
    check-cast v3, Ljava/lang/reflect/Field;

    if-nez v3, :cond_4d

    .line 101
    sget-object p2, Lio/dcloud/uts/console;->INSTANCE:Lio/dcloud/uts/console;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not found field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {p2, v2}, Lio/dcloud/uts/console;->errorV1([Ljava/lang/Object;)V

    return-void

    .line 104
    :cond_4d
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    invoke-virtual {v3, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_53} :catch_54

    return-void

    :catch_54
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    sget-object p2, Lio/dcloud/uts/console;->INSTANCE:Lio/dcloud/uts/console;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Lio/dcloud/uts/console;->errorV1([Ljava/lang/Object;)V

    return-void
.end method

.method public static $private$getAllFields(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .param p0, "_this"    # Lio/dcloud/uts/UTSKeyIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_7
    if-eqz p1, :cond_29

    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 68
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 70
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_7

    :cond_29
    return-object v0
.end method

.method public static synthetic access$get$jd(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-static {p0, p1}, Lio/dcloud/uts/UTSKeyIterable$-CC;->$default$get(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$ignoredKeys$jd(Lio/dcloud/uts/UTSKeyIterable;)Lio/dcloud/uts/UTSArray;
    .registers 1

    .line 55
    invoke-static {p0}, Lio/dcloud/uts/UTSKeyIterable$-CC;->$default$ignoredKeys(Lio/dcloud/uts/UTSKeyIterable;)Lio/dcloud/uts/UTSArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$keyIterator$jd(Lio/dcloud/uts/UTSKeyIterable;)Lio/dcloud/uts/UTSIterator;
    .registers 1

    .line 55
    invoke-static {p0}, Lio/dcloud/uts/UTSKeyIterable$-CC;->$default$keyIterator(Lio/dcloud/uts/UTSKeyIterable;)Lio/dcloud/uts/UTSIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$set$jd(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 55
    invoke-static {p0, p1, p2}, Lio/dcloud/uts/UTSKeyIterable$-CC;->$default$set(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static keyIterator$lambda$2(Ljava/util/Iterator;)Lio/dcloud/uts/UTSIteratorResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/dcloud/uts/UTSIteratorResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 141
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 142
    new-instance v0, Lio/dcloud/uts/UTSIteratorResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/dcloud/uts/UTSIteratorResult;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 144
    :cond_13
    new-instance p0, Lio/dcloud/uts/UTSIteratorResult;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lio/dcloud/uts/UTSIteratorResult;-><init>(ZLjava/lang/Object;)V

    return-object p0
.end method

###### Class io.dcloud.uts.UTSKeyIterable$$ExternalSyntheticLambda0 (io.dcloud.uts.UTSKeyIterable$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/uts/UTSKeyIterable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/uts/UTSKeyIterable$$ExternalSyntheticLambda0;->f$0:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/uts/UTSKeyIterable$$ExternalSyntheticLambda0;->f$0:Ljava/util/Iterator;

    invoke-static {v0}, Lio/dcloud/uts/UTSKeyIterable$-CC;->keyIterator$lambda$2(Ljava/util/Iterator;)Lio/dcloud/uts/UTSIteratorResult;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.uts.UTSKeyIterable.DefaultImpls (io.dcloud.uts.UTSKeyIterable$DefaultImpls)
.class public final Lio/dcloud/uts/UTSKeyIterable$DefaultImpls;
.super Ljava/lang/Object;
.source "UTSIterator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/UTSKeyIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static get(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "propertyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p0, p1}, Lio/dcloud/uts/UTSKeyIterable$-CC;->access$get$jd(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ignoredKeys(Lio/dcloud/uts/UTSKeyIterable;)Lio/dcloud/uts/UTSArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSKeyIterable;",
            ")",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-static {p0}, Lio/dcloud/uts/UTSKeyIterable$-CC;->access$ignoredKeys$jd(Lio/dcloud/uts/UTSKeyIterable;)Lio/dcloud/uts/UTSArray;

    move-result-object p0

    return-object p0
.end method

.method public static keyIterator(Lio/dcloud/uts/UTSKeyIterable;)Lio/dcloud/uts/UTSIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSKeyIterable;",
            ")",
            "Lio/dcloud/uts/UTSIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-static {p0}, Lio/dcloud/uts/UTSKeyIterable$-CC;->access$keyIterator$jd(Lio/dcloud/uts/UTSKeyIterable;)Lio/dcloud/uts/UTSIterator;

    move-result-object p0

    return-object p0
.end method

.method public static set(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "propertyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {p0, p1, p2}, Lio/dcloud/uts/UTSKeyIterable$-CC;->access$set$jd(Lio/dcloud/uts/UTSKeyIterable;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
