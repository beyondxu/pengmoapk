###### Class kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKindExtractor (kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKindExtractor)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;
.super Ljava/lang/Object;
.source "FunctionTypeKindExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;,
        Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFunctionTypeKindExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionTypeKindExtractor.kt\norg/jetbrains/kotlin/builtins/functions/FunctionTypeKindExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,70:1\n1491#2:71\n1516#2,3:72\n1519#2,3:82\n1761#2,3:85\n382#3,7:75\n*S KotlinDebug\n*F\n+ 1 FunctionTypeKindExtractor.kt\norg/jetbrains/kotlin/builtins/functions/FunctionTypeKindExtractor\n*L\n32#1:71\n32#1:72,3\n32#1:82,3\n54#1:85,3\n32#1:75,7\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;

.field private static final Default:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;


# instance fields
.field private final kinds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;",
            ">;"
        }
    .end annotation
.end field

.field private final knownKindsByPackageFqName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;

    .line 22
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;

    const/4 v1, 0x4

    .line 24
    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    const/4 v2, 0x0

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$Function;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$Function;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 25
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$SuspendFunction;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$SuspendFunction;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 26
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KFunction;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KFunction;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 27
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KSuspendFunction;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$KSuspendFunction;

    aput-object v3, v1, v2

    .line 23
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;-><init>(Ljava/util/List;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->Default:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;",
            ">;)V"
        }
    .end annotation

    const-string v0, "kinds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->kinds:Ljava/util/List;

    .line 32
    check-cast p1, Ljava/lang/Iterable;

    .line 71
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 72
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 73
    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    .line 32
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    .line 75
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_38

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 78
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_38
    check-cast v3, Ljava/util/List;

    .line 82
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 32
    :cond_3e
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->knownKindsByPackageFqName:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;
    .registers 1

    .line 13
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->Default:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;

    return-object v0
.end method

.method private final toInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8

    .line 59
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    .line 62
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v2, v0, :cond_26

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_25

    const/16 v5, 0xa

    if-ge v4, v5, :cond_25

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_25
    return-object v1

    .line 67
    :cond_26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getFunctionalClassKind(Lkotlin/reflect/jvm/internal/impl/name/FqName;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;
    .registers 4

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "className"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->getFunctionalClassKindWithArity(Lkotlin/reflect/jvm/internal/impl/name/FqName;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->getKind()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    move-result-object p1

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFunctionalClassKindWithArity(Lkotlin/reflect/jvm/internal/impl/name/FqName;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;
    .registers 8

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "className"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->knownKindsByPackageFqName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_16

    return-object v0

    .line 40
    :cond_16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    .line 41
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;->getClassNamePrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p2, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 42
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;->getClassNamePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->toInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 43
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;

    invoke-direct {p2, v1, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;I)V

    return-object p2

    :cond_53
    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKindExtractor.Companion (kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKindExtractor$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;
.super Ljava/lang/Object;
.source "FunctionTypeKindExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;
    .registers 2

    .line 20
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;->access$getDefault$cp()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKindExtractor.KindWithArity (kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKindExtractor$KindWithArity)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;
.super Ljava/lang/Object;
.source "FunctionTypeKindExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KindWithArity"
.end annotation


# instance fields
.field private final arity:I

.field private final kind:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;I)V
    .registers 4

    const-string v0, "kind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->kind:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->arity:I

    return-void
.end method


# virtual methods
.method public final component1()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->kind:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->arity:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->kind:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->kind:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->arity:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->arity:I

    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getKind()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;
    .registers 2

    .line 56
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->kind:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->kind:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->arity:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KindWithArity(kind="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->kind:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", arity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKindExtractor$KindWithArity;->arity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
