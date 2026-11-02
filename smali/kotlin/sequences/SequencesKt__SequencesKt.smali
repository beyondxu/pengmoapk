###### Class kotlin.sequences.SequencesKt__SequencesKt (kotlin.sequences.SequencesKt__SequencesKt)
.class Lkotlin/sequences/SequencesKt__SequencesKt;
.super Lkotlin/sequences/SequencesKt__SequencesJVMKt;
.source "Sequences.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0008\n\u0002\u0010\u001c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u001a.\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0014\u0008\u0004\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00050\u0004H\u0087\u0008\u00f8\u0001\u0000\u001a\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\u001a+\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\t\"\u0002H\u0002\u00a2\u0006\u0002\u0010\n\u001a!\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u000b\u001a\u0002H\u0002H\u0007\u00a2\u0006\u0002\u0010\u000c\u001a\u0015\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\u0087\u0008\u001a\u0012\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\u001a!\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001H\u0087\u0008\u001a2\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00010\u0004H\u0007\u001a\"\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00010\u0001\u001a)\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00120\u0001H\u0007\u00a2\u0006\u0002\u0008\u0013\u001aC\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0014*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00140\u00050\u0015H\u0002\u00a2\u0006\u0002\u0008\u0016\u001a@\u0010\u0017\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00140\u00190\u0018\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0014*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00140\u00180\u0001\u001a\u001e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001a&\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001cH\u0007\u001ab\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u001e\"\u0004\u0008\u0002\u0010\u00142\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0018\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u001e0!2\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u0002H\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00140\u00050\u0015H\u0000\u001a\u001c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u001a&\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020%2\u000e\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0004\u001a=\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020%2\u0008\u0010\'\u001a\u0004\u0018\u0001H\u00022\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0015H\u0007\u00a2\u0006\u0002\u0010(\u001a<\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020%2\u000e\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00042\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0015\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006*"
    }
    d2 = {
        "Sequence",
        "Lkotlin/sequences/Sequence;",
        "T",
        "iterator",
        "Lkotlin/Function0;",
        "",
        "asSequence",
        "sequenceOf",
        "elements",
        "",
        "([Ljava/lang/Object;)Lkotlin/sequences/Sequence;",
        "element",
        "(Ljava/lang/Object;)Lkotlin/sequences/Sequence;",
        "emptySequence",
        "orEmpty",
        "ifEmpty",
        "defaultValue",
        "flatten",
        "",
        "flattenSequenceOfIterable",
        "R",
        "Lkotlin/Function1;",
        "flatten$SequencesKt__SequencesKt",
        "unzip",
        "Lkotlin/Pair;",
        "",
        "shuffled",
        "random",
        "Lkotlin/random/Random;",
        "flatMapIndexed",
        "C",
        "source",
        "transform",
        "Lkotlin/Function2;",
        "",
        "constrainOnce",
        "generateSequence",
        "",
        "nextFunction",
        "seed",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;",
        "seedFunction",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x31
    xs = "kotlin/sequences/SequencesKt"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ZYYDtTr-TNi199dwYKp-UFChQ3A(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequencesKt;->flatten$lambda$4$SequencesKt__SequencesKt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gsNk3IlLxIkg3S0p5D-eswlyP2I(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequencesKt;->generateSequence$lambda$6$SequencesKt__SequencesKt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hgw4Q_3eFL-A68Db_jKdsWYueJs(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->generateSequence$lambda$5$SequencesKt__SequencesKt(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$npkZ5B6xt9ItzV16xBh3sZ6Q6Uo(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .registers 1

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequencesKt;->flatten$lambda$3$SequencesKt__SequencesKt(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q9yeNhsLElZymTg2z31PJZp_xO8(Lkotlin/sequences/Sequence;)Ljava/util/Iterator;
    .registers 1

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequencesKt;->flatten$lambda$2$SequencesKt__SequencesKt(Lkotlin/sequences/Sequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/sequences/SequencesKt__SequencesJVMKt;-><init>()V

    return-void
.end method

.method private static final Sequence(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$Sequence$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$Sequence$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method public static final asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/util/Iterator;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->constrainOnce(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final constrainOnce(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    instance-of v0, p0, Lkotlin/sequences/ConstrainedOnceSequence;

    if-eqz v0, :cond_a

    return-object p0

    :cond_a
    new-instance v0, Lkotlin/sequences/ConstrainedOnceSequence;

    invoke-direct {v0, p0}, Lkotlin/sequences/ConstrainedOnceSequence;-><init>(Lkotlin/sequences/Sequence;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method public static final emptySequence()Lkotlin/sequences/Sequence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method public static final flatMapIndexed(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+TC;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TC;+",
            "Ljava/util/Iterator<",
            "+TR;>;>;)",
            "Lkotlin/sequences/Sequence<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final flatten(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->flatten$SequencesKt__SequencesKt(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method private static final flatten$SequencesKt__SequencesKt(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/util/Iterator<",
            "+TR;>;>;)",
            "Lkotlin/sequences/Sequence<",
            "TR;>;"
        }
    .end annotation

    .line 128
    instance-of v0, p0, Lkotlin/sequences/TransformingSequence;

    if-eqz v0, :cond_b

    .line 129
    check-cast p0, Lkotlin/sequences/TransformingSequence;

    invoke-virtual {p0, p1}, Lkotlin/sequences/TransformingSequence;->flatten$kotlin_stdlib(Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0

    .line 131
    :cond_b
    new-instance v0, Lkotlin/sequences/FlatteningSequence;

    new-instance v1, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lkotlin/sequences/FlatteningSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method private static final flatten$lambda$2$SequencesKt__SequencesKt(Lkotlin/sequences/Sequence;)Ljava/util/Iterator;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static final flatten$lambda$3$SequencesKt__SequencesKt(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static final flatten$lambda$4$SequencesKt__SequencesKt(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public static final flattenSequenceOfIterable(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->flatten$SequencesKt__SequencesKt(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_c

    .line 711
    sget-object p0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    check-cast p0, Lkotlin/sequences/Sequence;

    return-object p0

    .line 713
    :cond_c
    new-instance v0, Lkotlin/sequences/GeneratorSequence;

    new-instance v1, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lkotlin/sequences/GeneratorSequence;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method public static final generateSequence(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    new-instance v0, Lkotlin/sequences/GeneratorSequence;

    new-instance v1, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {v0, p0, v1}, Lkotlin/sequences/GeneratorSequence;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->constrainOnce(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final generateSequence(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "seedFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    new-instance v0, Lkotlin/sequences/GeneratorSequence;

    invoke-direct {v0, p0, p1}, Lkotlin/sequences/GeneratorSequence;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method private static final generateSequence$lambda$5$SequencesKt__SequencesKt(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final generateSequence$lambda$6$SequencesKt__SequencesKt(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public static final ifEmpty(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method private static final orEmpty(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_6

    .line 89
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method private static final sequenceOf()Lkotlin/sequences/Sequence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static final sequenceOf(Ljava/lang/Object;)Lkotlin/sequences/Sequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/sequences/Sequence;

    return-object v0
.end method

.method public static final varargs sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final shuffled(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v0, Lkotlin/random/Random;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->shuffled(Lkotlin/sequences/Sequence;Lkotlin/random/Random;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final shuffled(Lkotlin/sequences/Sequence;Lkotlin/random/Random;)Lkotlin/sequences/Sequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/random/Random;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;-><init>(Lkotlin/sequences/Sequence;Lkotlin/random/Random;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final unzip(Lkotlin/sequences/Sequence;)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Lkotlin/Pair<",
            "+TT;+TR;>;>;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TR;>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    .line 147
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 150
    :cond_2e
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt.AnonymousClass1 (kotlin.sequences.SequencesKt__SequencesKt$Sequence$1)
.class public final Lkotlin/sequences/SequencesKt__SequencesKt$Sequence$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt__SequencesKt;->Sequence(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n*L\n1#1,731:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "kotlin/sequences/SequencesKt__SequencesKt$Sequence$1",
        "Lkotlin/sequences/Sequence;",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $iterator:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/Iterator<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$Sequence$1;->$iterator:Lkotlin/jvm/functions/Function0;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$Sequence$1;->$iterator:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt.C01301 (kotlin.sequences.SequencesKt__SequencesKt$flatMapIndexed$1)
.class final Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt__SequencesKt;->flatMapIndexed(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "Lkotlin/sequences/SequenceScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.sequences.SequencesKt__SequencesKt$flatMapIndexed$1"
    f = "Sequences.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x17f
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "element",
        "result",
        "index"
    }
    s = {
        "L$0",
        "L$2",
        "L$3",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $iterator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TC;",
            "Ljava/util/Iterator<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field final synthetic $source:Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "TT;TC;>;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+TC;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TC;+",
            "Ljava/util/Iterator<",
            "+TR;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->$source:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->$transform:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->$iterator:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;

    iget-object v1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->$source:Lkotlin/sequences/Sequence;

    iget-object v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->$transform:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->$iterator:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, v3, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 379
    iget v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    if-ne v2, v3, :cond_19

    iget v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->I$0:I

    iget-object v4, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 381
    iget-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->$source:Lkotlin/sequences/Sequence;

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v4, p1

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 382
    iget-object v5, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->$transform:Lkotlin/jvm/functions/Function2;

    add-int/lit8 v6, v2, 0x1

    if-gez v2, :cond_3f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3f
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 383
    iget-object v5, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->$iterator:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Iterator;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->L$2:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->L$3:Ljava/lang/Object;

    iput v6, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->I$0:I

    iput v3, p0, Lkotlin/sequences/SequencesKt__SequencesKt$flatMapIndexed$1;->label:I

    invoke-virtual {v0, v5, v7}, Lkotlin/sequences/SequenceScope;->yieldAll(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6d

    return-object v1

    :cond_6d
    move v2, v6

    goto :goto_2c

    .line 385
    :cond_6f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt.C01311 (kotlin.sequences.SequencesKt__SequencesKt$ifEmpty$1)
.class final Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt__SequencesKt;->ifEmpty(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.sequences.SequencesKt__SequencesKt$ifEmpty$1"
    f = "Sequences.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x66,
        0x68
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "iterator",
        "$this$sequence",
        "iterator"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $defaultValue:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/sequences/Sequence<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic $this_ifEmpty:Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$this_ifEmpty:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$defaultValue:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;

    iget-object v1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$this_ifEmpty:Lkotlin/sequences/Sequence;

    iget-object v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$defaultValue:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 99
    iget v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_23

    if-eq v2, v4, :cond_1b

    if-ne v2, v3, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6a

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$this_ifEmpty:Lkotlin/sequences/Sequence;

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 102
    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->label:I

    invoke-virtual {v0, p1, v2}, Lkotlin/sequences/SequenceScope;->yieldAll(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6a

    goto :goto_69

    .line 104
    :cond_4a
    iget-object v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$defaultValue:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/sequences/Sequence;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lkotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->label:I

    invoke-virtual {v0, v2, v4}, Lkotlin/sequences/SequenceScope;->yieldAll(Lkotlin/sequences/Sequence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6a

    :goto_69
    return-object v1

    .line 106
    :cond_6a
    :goto_6a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt.C01321 (kotlin.sequences.SequencesKt__SequencesKt$shuffled$1)
.class final Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt__SequencesKt;->shuffled(Lkotlin/sequences/Sequence;Lkotlin/random/Random;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.sequences.SequencesKt__SequencesKt$shuffled$1"
    f = "Sequences.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xb2
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "buffer",
        "last",
        "value",
        "j"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $random:Lkotlin/random/Random;

.field final synthetic $this_shuffled:Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/random/Random;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/random/Random;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$this_shuffled:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$random:Lkotlin/random/Random;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;

    iget-object v1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$this_shuffled:Lkotlin/sequences/Sequence;

    iget-object v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$random:Lkotlin/random/Random;

    invoke-direct {v0, v1, v2, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;-><init>(Lkotlin/sequences/Sequence;Lkotlin/random/Random;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 172
    iget v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_29

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$this_shuffled:Lkotlin/sequences/Sequence;

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    .line 174
    :cond_29
    :goto_29
    move-object p1, v2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6a

    .line 175
    iget-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$random:Lkotlin/random/Random;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/random/Random;->nextInt(I)I

    move-result p1

    .line 176
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    .line 177
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_4b

    invoke-interface {v2, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4c

    :cond_4b
    move-object v5, v4

    .line 178
    :goto_4c
    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$3:Ljava/lang/Object;

    iput p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->I$0:I

    iput v3, p0, Lkotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->label:I

    invoke-virtual {v0, v5, v6}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_29

    return-object v1

    .line 180
    :cond_6a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda0 (kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->$r8$lambda$gsNk3IlLxIkg3S0p5D-eswlyP2I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda1 (kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda1)
.class public final synthetic Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->$r8$lambda$hgw4Q_3eFL-A68Db_jKdsWYueJs(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda2 (kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda2)
.class public final synthetic Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda2;
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
    check-cast p1, Lkotlin/sequences/Sequence;

    invoke-static {p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->$r8$lambda$q9yeNhsLElZymTg2z31PJZp_xO8(Lkotlin/sequences/Sequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda3 (kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda3)
.class public final synthetic Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda3;
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
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->$r8$lambda$npkZ5B6xt9ItzV16xBh3sZ6Q6Uo(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda4 (kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda4)
.class public final synthetic Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda4;
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
    invoke-static {p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->$r8$lambda$ZYYDtTr-TNi199dwYKp-UFChQ3A(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1 (kotlin.sequences.SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1)
.class public final Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt\n*L\n1#1,731:1\n31#2:732\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/sequences/SequencesKt__SequencesKt$Sequence$1",
        "Lkotlin/sequences/Sequence;",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_asSequence$inlined:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;->$this_asSequence$inlined:Ljava/util/Iterator;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;->$this_asSequence$inlined:Ljava/util/Iterator;

    return-object v0
.end method

###### Class kotlin.sequences.SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1 (kotlin.sequences.SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1)
.class public final Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf(Ljava/lang/Object;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt\n*L\n1#1,731:1\n49#2,11:732\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/sequences/SequencesKt__SequencesKt$Sequence$1",
        "Lkotlin/sequences/Sequence;",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $element$inlined:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1;->$element$inlined:Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 732
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;

    iget-object v1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1;->$element$inlined:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
