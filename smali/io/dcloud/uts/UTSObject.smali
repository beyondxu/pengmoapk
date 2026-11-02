###### Class io.dcloud.uts.UTSObject (io.dcloud.uts.UTSObject)
.class public Lio/dcloud/uts/UTSObject;
.super Ljava/lang/Object;
.source "UTSObject.kt"

# interfaces
.implements Lio/dcloud/uts/IUTSObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/UTSObject$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSObject.kt\nio/dcloud/uts/UTSObject\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,144:1\n1#2:145\n827#3:146\n855#3,2:147\n827#3:149\n855#3,2:150\n1563#3:152\n1634#3,3:153\n*S KotlinDebug\n*F\n+ 1 UTSObject.kt\nio/dcloud/uts/UTSObject\n*L\n41#1:146\n41#1:147,2\n44#1:149\n44#1:150,2\n52#1:152\n52#1:153,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\nH\u0002J\u000f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0096\u0002J\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0096\u0002J\u001b\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0096\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/dcloud/uts/UTSObject;",
        "Lio/dcloud/uts/IUTSObject;",
        "<init>",
        "()V",
        "target",
        "",
        "propertyFields",
        "",
        "Ljava/lang/reflect/Field;",
        "init",
        "",
        "iterator",
        "",
        "",
        "get",
        "propertyName",
        "set",
        "value",
        "Companion",
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


# static fields
.field public static final Companion:Lio/dcloud/uts/UTSObject$Companion;


# instance fields
.field private transient propertyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private transient target:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$9A-WwU0BMqMq8auM4R3lDkHzShk(Ljava/lang/reflect/Field;)Z
    .registers 1

    invoke-static {p0}, Lio/dcloud/uts/UTSObject;->init$lambda$0(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/dcloud/uts/UTSObject$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/uts/UTSObject$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/dcloud/uts/UTSObject;->Companion:Lio/dcloud/uts/UTSObject$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final init()V
    .registers 8

    new-instance v0, Lio/dcloud/uts/UTSObject$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/dcloud/uts/UTSObject$$ExternalSyntheticLambda0;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "__v_raw"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_27

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    const/4 v4, 0x0

    :goto_27
    if-eqz v4, :cond_75

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/uts/UTSObject;->target:Ljava/lang/Object;

    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "getDeclaredFields(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 147
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_56

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 148
    :cond_70
    check-cast v2, Ljava/util/List;

    .line 40
    iput-object v2, p0, Lio/dcloud/uts/UTSObject;->propertyFields:Ljava/util/List;

    return-void

    .line 43
    :cond_75
    iput-object p0, p0, Lio/dcloud/uts/UTSObject;->target:Ljava/lang/Object;

    .line 44
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 150
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_88
    :goto_88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_88

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 151
    :cond_a2
    check-cast v2, Ljava/util/List;

    .line 44
    iput-object v2, p0, Lio/dcloud/uts/UTSObject;->propertyFields:Ljava/util/List;

    return-void
.end method

.method private static final init$lambda$0(Ljava/lang/reflect/Field;)Z
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 30
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 31
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "$stable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "propertyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lio/dcloud/uts/UTSObject;->target:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 57
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;->init()V

    .line 60
    :cond_c
    iget-object v0, p0, Lio/dcloud/uts/UTSObject;->propertyFields:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_31

    :cond_30
    move-object v1, v2

    :goto_31
    check-cast v1, Ljava/lang/reflect/Field;

    if-nez v1, :cond_36

    return-object v2

    :cond_36
    const/4 p1, 0x1

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    iget-object p1, p0, Lio/dcloud/uts/UTSObject;->target:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/dcloud/uts/UTSObject;->target:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 50
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;->init()V

    .line 52
    :cond_7
    iget-object v0, p0, Lio/dcloud/uts/UTSObject;->propertyFields:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 154
    check-cast v2, Ljava/lang/reflect/Field;

    .line 52
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 155
    :cond_33
    check-cast v1, Ljava/util/List;

    .line 52
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const-string v0, "propertyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lio/dcloud/uts/UTSObject;->target:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 67
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;->init()V

    .line 69
    :cond_c
    iget-object v0, p0, Lio/dcloud/uts/UTSObject;->propertyFields:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    check-cast v1, Ljava/lang/reflect/Field;

    if-nez v1, :cond_35

    return-void

    :cond_35
    const/4 p1, 0x1

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    iget-object p1, p0, Lio/dcloud/uts/UTSObject;->target:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.uts.UTSObject.Companion (io.dcloud.uts.UTSObject$Companion)
.class public final Lio/dcloud/uts/UTSObject$Companion;
.super Ljava/lang/Object;
.source "UTSObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/UTSObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ#\u0010\n\u001a\u0002H\u000b\"\u0004\u0008\u0000\u0010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/dcloud/uts/UTSObject$Companion;",
        "",
        "<init>",
        "()V",
        "hasOwn",
        "",
        "obj",
        "Lio/dcloud/uts/UTSObject;",
        "key",
        "",
        "toGenericType",
        "T",
        "value",
        "type",
        "Ljava/lang/reflect/Type;",
        "(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/dcloud/uts/UTSObject$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasOwn(Lio/dcloud/uts/UTSObject;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lio/dcloud/uts/UTSObject;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public final toGenericType(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_2a

    const-class v0, Lio/dcloud/uts/UTSObject;

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-nez p1, :cond_18

    const/4 p1, 0x0

    return-object p1

    .line 89
    :cond_18
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_2a

    .line 92
    :cond_1f
    invoke-static {p1}, Lio/dcloud/uts/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lio/dcloud/uts/JSON;->parse(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_2a
    :goto_2a
    return-object p1
.end method

###### Class io.dcloud.uts.UTSObject$$ExternalSyntheticLambda0 (io.dcloud.uts.UTSObject$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/uts/UTSObject$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lio/dcloud/uts/UTSObject;->$r8$lambda$9A-WwU0BMqMq8auM4R3lDkHzShk(Ljava/lang/reflect/Field;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
