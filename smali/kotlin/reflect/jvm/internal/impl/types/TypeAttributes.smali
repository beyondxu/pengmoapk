###### Class kotlin.reflect.jvm.internal.impl.types.TypeAttributes (kotlin.reflect.jvm.internal.impl.types.TypeAttributes)
.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
.super Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;
.source "TypeAttributes.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner<",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
        "*>;",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
        "*>;>;",
        "Ljava/lang/Iterable<",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
        "*>;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeAttributes.kt\norg/jetbrains/kotlin/types/TypeAttributes\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n105#1,9:134\n105#1,9:143\n105#1,9:152\n774#2:161\n865#2,2:162\n*S KotlinDebug\n*F\n+ 1 TypeAttributes.kt\norg/jetbrains/kotlin/types/TypeAttributes\n*L\n74#1:134,9\n78#1:143,9\n82#1:152,9\n99#1:161\n99#1:162,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

.field private static final Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    .line 54
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    .line 69
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->getKey()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->registerComponent(Lkotlin/reflect/KClass;Ljava/lang/Object;)V

    goto :goto_7

    :cond_1b
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;)V"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .registers 1

    .line 36
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-object v0
.end method


# virtual methods
.method public final add(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .registers 7

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    return-object p0

    .line 153
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 154
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->access$getIndices(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 155
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    .line 156
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    if-nez v3, :cond_52

    if-eqz v2, :cond_50

    .line 82
    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->add(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    move-result-object v2

    goto :goto_56

    :cond_50
    const/4 v2, 0x0

    goto :goto_56

    :cond_52
    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->add(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    move-result-object v2

    .line 158
    :goto_56
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/utils/CollectionsKt;->addIfNotNull(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_23

    .line 160
    :cond_5d
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "attribute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->getKey()Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getId(Lkotlin/reflect/KClass;)I

    move-result p1

    .line 87
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method protected getTypeRegistry()Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;>;"
        }
    .end annotation

    .line 117
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;

    return-object v0
.end method

.method public final intersect(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .registers 7

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    return-object p0

    .line 144
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 145
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->access$getIndices(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 146
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    .line 147
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    if-nez v3, :cond_52

    if-eqz v2, :cond_50

    .line 78
    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->intersect(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    move-result-object v2

    goto :goto_56

    :cond_50
    const/4 v2, 0x0

    goto :goto_56

    :cond_52
    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->intersect(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    move-result-object v2

    .line 149
    :goto_56
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/utils/CollectionsKt;->addIfNotNull(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_23

    .line 151
    :cond_5d
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;"
        }
    .end annotation

    const-string v0, "attribute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->contains(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p0

    .line 92
    :cond_c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)V

    return-object v0

    .line 93
    :cond_18
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 94
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;"
        }
    .end annotation

    const-string v0, "attribute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_44

    .line 99
    :cond_c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 162
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    .line 99
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 162
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 163
    :cond_34
    check-cast v1, Ljava/util/List;

    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->getSize()I

    move-result v0

    if-ne p1, v0, :cond_45

    :goto_44
    return-object p0

    .line 101
    :cond_45
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.TypeAttributes.Companion (kotlin.reflect.jvm.internal.impl.types.TypeAttributes$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;
.super Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;
.source "TypeAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry<",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
        "*>;",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeAttributes.kt\norg/jetbrains/kotlin/types/TypeAttributes$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getIndices(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;)Ljava/util/Collection;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getIndices()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;>;)",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;"
        }
    .end annotation

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 58
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getEmpty()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p1

    return-object p1

    .line 60
    :cond_10
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public customComputeIfAbsent(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compute"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1c
    monitor-enter p1

    .line 50
    :try_start_1d
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_42

    :cond_2a
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_44

    .line 49
    :goto_42
    monitor-exit p1

    return p2

    :catchall_44
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final getEmpty()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .registers 2

    .line 54
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->access$getEmpty$cp()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    return-object v0
.end method
