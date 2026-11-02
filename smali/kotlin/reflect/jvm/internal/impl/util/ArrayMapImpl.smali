###### Class kotlin.reflect.jvm.internal.impl.util.ArrayMapImpl (kotlin.reflect.jvm.internal.impl.util.ArrayMapImpl)
.class public final Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;
.super Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;
.source "ArrayMap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/util/ArrayMap<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayMap.kt\norg/jetbrains/kotlin/util/ArrayMapImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n11408#2,11:146\n13537#2,2:157\n13539#2:160\n11419#2:161\n1#3:159\n*S KotlinDebug\n*F\n+ 1 ArrayMap.kt\norg/jetbrains/kotlin/util/ArrayMapImpl\n*L\n140#1:146,11\n140#1:157,2\n140#1:160\n140#1:161\n140#1:159\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;


# instance fields
.field private data:[Ljava/lang/Object;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->Companion:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x14

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;I)V
    .registers 4

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    .line 85
    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->size:I

    return-void
.end method

.method public static final synthetic access$getData$p(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)[Ljava/lang/Object;
    .registers 1

    .line 74
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    return-object p0
.end method

.method private final ensureCapacity(I)V
    .registers 4

    .line 90
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    array-length v1, v0

    if-le v1, p1, :cond_6

    return-void

    .line 91
    :cond_6
    array-length v0, v0

    :cond_7
    mul-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_7

    .line 95
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .registers 2

    .line 85
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->size:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;-><init>(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public set(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->ensureCapacity(I)V

    .line 100
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_16

    .line 101
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->size:I

    .line 103
    :cond_16
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->data:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.util.ArrayMapImpl.Companion (kotlin.reflect.jvm.internal.impl.util.ArrayMapImpl$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;
.super Ljava/lang/Object;
.source "ArrayMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$Companion;-><init>()V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.util.ArrayMapImpl.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.util.ArrayMapImpl$iterator$1)
.class public final Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "ArrayMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    .line 114
    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    const/4 p1, -0x1

    .line 115
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    return-void
.end method


# virtual methods
.method protected computeNext()V
    .registers 3

    .line 119
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    .line 120
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->access$getData$p(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->access$getData$p(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 121
    :cond_1b
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->access$getData$p(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_2a

    .line 122
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->done()V

    return-void

    .line 125
    :cond_2a
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->this$0:Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;->access$getData$p(Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->index:I

    aget-object v0, v0, v1

    const-string v1, "null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMapImpl$iterator$1;->setNext(Ljava/lang/Object;)V

    return-void
.end method
