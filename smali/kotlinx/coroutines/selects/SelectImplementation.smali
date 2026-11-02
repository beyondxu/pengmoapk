###### Class kotlinx.coroutines.selects.SelectImplementation (kotlinx.coroutines.selects.SelectImplementation)
.class public Lkotlinx/coroutines/selects/SelectImplementation;
.super Ljava/lang/Object;
.source "Select.kt"

# interfaces
.implements Lkotlinx/coroutines/CancelHandler;
.implements Lkotlinx/coroutines/selects/SelectBuilder;
.implements Lkotlinx/coroutines/selects/SelectInstanceInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/CancelHandler;",
        "Lkotlinx/coroutines/selects/SelectBuilder<",
        "TR;>;",
        "Lkotlinx/coroutines/selects/SelectInstanceInternal<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,879:1\n1#2:880\n2624#3,3:881\n1855#3,2:893\n1855#3,2:901\n1855#3,2:903\n318#4,9:884\n327#4,2:895\n149#5,4:897\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n512#1:881,3\n576#1:893,2\n732#1:901,2\n757#1:903,2\n552#1:884,9\n552#1:895,2\n717#1:897,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0011\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004:\u0001HB\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u001a\u0010\u001d\u001a\u00020\u001b2\u0010\u0010\u001e\u001a\u000c0\nR\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0002J\u000e\u0010\u001f\u001a\u00028\u0000H\u0082@\u00a2\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020#H\u0016J\u000e\u0010$\u001a\u00028\u0000H\u0091@\u00a2\u0006\u0002\u0010 J\u000e\u0010%\u001a\u00028\u0000H\u0082@\u00a2\u0006\u0002\u0010 J\u001c\u0010&\u001a\u000e\u0018\u00010\nR\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u0012\u0010\'\u001a\u00020\u001b2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u001c\u0010*\u001a\u00020\u001b2\n\u0010+\u001a\u0006\u0012\u0002\u0008\u00030,2\u0006\u0010-\u001a\u00020\u0014H\u0016J*\u0010.\u001a\u00028\u00002\u0010\u0010/\u001a\u000c0\nR\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0082@\u00a2\u0006\u0002\u00100J\u0010\u00101\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u0012\u00102\u001a\u00020\u001b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u00103\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u00104\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u00105\u001a\u0002062\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u00104\u001a\u0004\u0018\u00010\u000eJ\u001a\u00107\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0002J\u000e\u00108\u001a\u00020\u001bH\u0082@\u00a2\u0006\u0002\u0010 J0\u0010\'\u001a\u00020\u001b*\u0002092\u001c\u0010:\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000<\u0012\u0006\u0012\u0004\u0018\u00010\u000e0;H\u0096\u0002\u00a2\u0006\u0002\u0010=JB\u0010\'\u001a\u00020\u001b\"\u0004\u0008\u0001\u0010>*\u0008\u0012\u0004\u0012\u0002H>0?2\"\u0010:\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H>\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000<\u0012\u0006\u0012\u0004\u0018\u00010\u000e0@H\u0096\u0002\u00a2\u0006\u0002\u0010AJV\u0010\'\u001a\u00020\u001b\"\u0004\u0008\u0001\u0010B\"\u0004\u0008\u0002\u0010>*\u000e\u0012\u0004\u0012\u0002HB\u0012\u0004\u0012\u0002H>0C2\u0006\u0010D\u001a\u0002HB2\"\u0010:\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H>\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000<\u0012\u0006\u0012\u0004\u0018\u00010\u000e0@H\u0096\u0002\u00a2\u0006\u0002\u0010EJ \u0010F\u001a\u00020\u001b*\u000c0\nR\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010G\u001a\u00020\u0010H\u0001R$\u0010\u0008\u001a\u0014\u0012\u000e\u0012\u000c0\nR\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0018\u00010\t8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0012R\u000f\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0019X\u0082\u0004\u00a8\u0006I"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/SelectImplementation;",
        "R",
        "Lkotlinx/coroutines/CancelHandler;",
        "Lkotlinx/coroutines/selects/SelectBuilder;",
        "Lkotlinx/coroutines/selects/SelectInstanceInternal;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "clauses",
        "",
        "Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "disposableHandleOrSegment",
        "",
        "inRegistrationPhase",
        "",
        "getInRegistrationPhase",
        "()Z",
        "indexInSegment",
        "",
        "internalResult",
        "isCancelled",
        "isSelected",
        "state",
        "Lkotlinx/atomicfu/AtomicRef;",
        "checkClauseObject",
        "",
        "clauseObject",
        "cleanup",
        "selectedClause",
        "complete",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disposeOnCompletion",
        "disposableHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "doSelect",
        "doSelectSuspend",
        "findClause",
        "invoke",
        "cause",
        "",
        "invokeOnCancellation",
        "segment",
        "Lkotlinx/coroutines/internal/Segment;",
        "index",
        "processResultAndInvokeBlockRecoveringException",
        "clause",
        "(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reregisterClause",
        "selectInRegistrationPhase",
        "trySelect",
        "result",
        "trySelectDetailed",
        "Lkotlinx/coroutines/selects/TrySelectDetailedResult;",
        "trySelectInternal",
        "waitUntilSelected",
        "Lkotlinx/coroutines/selects/SelectClause0;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V",
        "Q",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "Lkotlin/Function2;",
        "(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V",
        "P",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "param",
        "(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "register",
        "reregister",
        "ClauseData",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private clauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>.ClauseData;>;"
        }
    .end annotation
.end field

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private disposableHandleOrSegment:Ljava/lang/Object;

.field private indexInSegment:I

.field private internalResult:Ljava/lang/Object;

.field private volatile synthetic state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "state$volatile"

    const-class v2, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .registers 3

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    .line 348
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile:Ljava/lang/Object;

    .line 377
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    const/4 p1, -0x1

    .line 397
    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    .line 418
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$complete(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 239
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$doSelectSuspend(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 239
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInRegistrationPhase(Lkotlinx/coroutines/selects/SelectImplementation;)Z
    .registers 1

    .line 239
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->getInRegistrationPhase()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getInternalResult$p(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;
    .registers 1

    .line 239
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    .line 239
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isCancelled(Lkotlinx/coroutines/selects/SelectImplementation;)Z
    .registers 1

    .line 239
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$processResultAndInvokeBlockRecoveringException(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 239
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/selects/SelectImplementation;->processResultAndInvokeBlockRecoveringException(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$reregisterClause(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;)V
    .registers 2

    .line 239
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->reregisterClause(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$waitUntilSelected(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 239
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->waitUntilSelected(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final checkClauseObject(Ljava/lang/Object;)V
    .registers 4

    .line 510
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 512
    check-cast v0, Ljava/lang/Iterable;

    .line 881
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 882
    :cond_15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 512
    iget-object v1, v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    if-eq v1, p1, :cond_2a

    goto :goto_19

    .line 513
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot use select clauses on the same object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    return-void
.end method

.method private final cleanup(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>.ClauseData;)V"
        }
    .end annotation

    .line 726
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 880
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 726
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1b

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 729
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    if-nez v0, :cond_20

    return-void

    .line 732
    :cond_20
    check-cast v0, Ljava/lang/Iterable;

    .line 901
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eq v1, p1, :cond_26

    .line 733
    invoke-virtual {v1}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->dispose()V

    goto :goto_26

    .line 902
    :cond_38
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    .line 736
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_COMPLETED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 737
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 738
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    return-void
.end method

.method private final complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 684
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_13
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 687
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 691
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 692
    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->cleanup(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;)V

    .line 694
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v2

    if-nez v2, :cond_36

    .line 697
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->processResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 698
    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->invokeBlock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 705
    :cond_36
    invoke-direct {p0, v0, v1, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->processResultAndInvokeBlockRecoveringException(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic doSelect$suspendImpl(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 429
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 430
    :cond_b
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    iget v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 435
    iget v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3d

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 438
    iput-object p0, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->waitUntilSelected(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4b

    goto :goto_57

    :cond_4b
    move-object v2, p0

    :goto_4c
    const/4 p1, 0x0

    .line 441
    iput-object p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    invoke-direct {v2, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_58

    :goto_57
    return-object v1

    :cond_58
    return-object p1
.end method

.method private final findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>.ClauseData;"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 664
    :cond_6
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    iget-object v3, v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    if-ne v3, p1, :cond_c

    move-object v1, v2

    :cond_1e
    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clause with object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getInRegistrationPhase()Z
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 354
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 355
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_15

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method private final synthetic getState$volatile()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final isCancelled()Z
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 367
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_CANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private final isSelected()Z
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    return v0
.end method

.method private final synthetic loop$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final processResultAndInvokeBlockRecoveringException(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>.ClauseData;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;

    if-eqz v0, :cond_14

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;

    iget v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p3, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;

    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p3, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 709
    iget v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    if-ne v2, v3, :cond_2c

    :try_start_26
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    return-object p3

    :catchall_2a
    move-exception p1

    goto :goto_45

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 711
    :try_start_37
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->processResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 712
    iput v3, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->invokeBlock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_2a

    if-ne p1, v1, :cond_44

    return-object v1

    :cond_44
    return-object p1

    .line 897
    :goto_45
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 899
    instance-of p2, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez p2, :cond_50

    throw p1

    .line 900
    :cond_50
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 897
    :cond_57
    throw p1
.end method

.method public static synthetic register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 471
    :cond_7
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: register"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final reregisterClause(Ljava/lang/Object;)V
    .registers 3

    .line 596
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 597
    iput-object v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 598
    iput v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    const/4 v0, 0x1

    .line 599
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    return-void
.end method

.method private final synthetic setState$volatile(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    .line 618
    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 619
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 621
    instance-of v1, v0, Lkotlinx/coroutines/CancellableContinuation;

    const/4 v2, 0x2

    if-eqz v1, :cond_38

    .line 622
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_0

    .line 623
    :cond_14
    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-virtual {v1, v3, p2}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->createOnCancellationAction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 624
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 629
    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 630
    invoke-static {v0, v3}, Lkotlinx/coroutines/selects/SelectKt;->access$tryResume(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    return p1

    .line 632
    :cond_31
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return v2

    .line 637
    :cond_38
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_COMPLETED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    goto :goto_47

    :cond_45
    instance-of v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    :goto_47
    if-eqz v1, :cond_4b

    const/4 p1, 0x3

    return p1

    .line 639
    :cond_4b
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_CANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    return v2

    .line 643
    :cond_56
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 647
    :cond_6f
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_85

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_85
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 649
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected state: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final synthetic update$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private final waitUntilSelected(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 885
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 891
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 892
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 552
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    :cond_14
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 558
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v3, v4, :cond_2f

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, p0, v3, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 568
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/CancelHandler;

    invoke-static {v1, v2}, Lkotlinx/coroutines/CancellableContinuationKt;->invokeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/CancelHandler;)V

    goto :goto_6e

    .line 573
    :cond_2f
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_58

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    invoke-static {v4, p0, v3, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 575
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 576
    check-cast v3, Ljava/lang/Iterable;

    .line 893
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 576
    invoke-static {p0, v4}, Lkotlinx/coroutines/selects/SelectImplementation;->access$reregisterClause(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;)V

    goto :goto_4a

    .line 579
    :cond_58
    instance-of v2, v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v2, :cond_85

    .line 580
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-static {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getInternalResult$p(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->createOnCancellationAction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 895
    :goto_6e
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 884
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_7b

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_7b
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_82

    return-object v0

    .line 896
    :cond_82
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 581
    :cond_85
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public disposeOnCompletion(Lkotlinx/coroutines/DisposableHandle;)V
    .registers 2

    .line 518
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    return-void
.end method

.method public doSelect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelect$suspendImpl(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    .line 241
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .registers 4

    .line 742
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 750
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_COMPLETED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_f

    goto :goto_1d

    .line 751
    :cond_f
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_CANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 755
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    if-nez p1, :cond_1e

    :goto_1d
    return-void

    .line 757
    :cond_1e
    check-cast p1, Ljava/lang/Iterable;

    .line 903
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 757
    invoke-virtual {v0}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->dispose()V

    goto :goto_24

    .line 759
    :cond_34
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 760
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectClause0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 449
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause0;->getClauseObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause0;->getRegFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause0;->getProcessResFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getPARAM_CLAUSE_0()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause0;->getOnCancellationConstructor()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V

    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "+TQ;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 451
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause1;->getClauseObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause1;->getRegFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause1;->getProcessResFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause1;->getOnCancellationConstructor()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V

    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "-TP;+TQ;>;TP;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 453
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause2;->getClauseObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause2;->getRegFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause2;->getProcessResFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause2;->getOnCancellationConstructor()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p0, v0, p3, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V

    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause2;Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "-TP;+TQ;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectBuilder$DefaultImpls;->invoke(Lkotlinx/coroutines/selects/SelectBuilder;Lkotlinx/coroutines/selects/SelectClause2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/Segment<",
            "*>;I)V"
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    .line 534
    iput p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    return-void
.end method

.method public onTimeout(JLkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Replaced with the same extension function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "onTimeout"
            imports = {
                "kotlinx.coroutines.selects.onTimeout"
            }
        .end subannotation
    .end annotation

    .line 239
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/selects/SelectBuilder$DefaultImpls;->onTimeout(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>.ClauseData;Z)V"
        }
    .end annotation

    .line 472
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 880
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 472
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_CANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_15

    goto :goto_1b

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 474
    :cond_1b
    :goto_1b
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v0, :cond_28

    return-void

    :cond_28
    if-nez p2, :cond_2f

    .line 477
    iget-object v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->checkClauseObject(Ljava/lang/Object;)V

    .line 479
    :cond_2f
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->tryRegisterAsWaiter(Lkotlinx/coroutines/selects/SelectImplementation;)Z

    move-result v0

    if-eqz v0, :cond_50

    if-nez p2, :cond_41

    .line 491
    iget-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_41
    iget-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    iput-object p2, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Ljava/lang/Object;

    .line 493
    iget p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    iput p2, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    const/4 p1, 0x0

    .line 494
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 495
    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    return-void

    :cond_50
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    .line 499
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public selectInRegistrationPhase(Ljava/lang/Object;)V
    .registers 2

    .line 538
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return-void
.end method

.method public trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 607
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final trySelectDetailed(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    .registers 3

    .line 615
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectKt;->access$TrySelectDetailedResult(I)Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.selects.SelectImplementation.ClauseData (kotlinx.coroutines.selects.SelectImplementation$ClauseData)
.class public final Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
.super Ljava/lang/Object;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/SelectImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClauseData"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,879:1\n1#2:880\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u00b6\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012U\u0010\u0003\u001aQ\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0008\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0004j\u0002`\u000b\u0012U\u0010\u000c\u001aQ\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004j\u0002`\u000e\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u000f\u001a\u00020\u0001\u0012g\u0010\u0010\u001ac\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0008\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0011\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n0\u0012\u0018\u00010\u0004j\u0004\u0018\u0001`\u0014\u00a2\u0006\u0002\u0010\u0015J*\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n\u0018\u00010\u00122\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001J\u0006\u0010\u001a\u001a\u00020\nJ\u0018\u0010\u001b\u001a\u00028\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001J\u0014\u0010 \u001a\u00020!2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"R\u000e\u0010\u000f\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000Rq\u0010\u0010\u001ac\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0008\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0011\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n0\u0012\u0018\u00010\u0004j\u0004\u0018\u0001`\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R]\u0010\u000c\u001aQ\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004j\u0002`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R]\u0010\u0003\u001aQ\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0002\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0008\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0004j\u0002`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;",
        "",
        "clauseObject",
        "regFunc",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "param",
        "",
        "Lkotlinx/coroutines/selects/RegistrationFunction;",
        "processResFunc",
        "clauseResult",
        "Lkotlinx/coroutines/selects/ProcessResultFunction;",
        "block",
        "onCancellationConstructor",
        "internalResult",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/selects/OnCancellationConstructor;",
        "(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V",
        "disposableHandleOrSegment",
        "indexInSegment",
        "",
        "createOnCancellationAction",
        "dispose",
        "invokeBlock",
        "argument",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processResult",
        "result",
        "tryRegisterAsWaiter",
        "",
        "Lkotlinx/coroutines/selects/SelectImplementation;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final block:Ljava/lang/Object;

.field public final clauseObject:Ljava/lang/Object;

.field public disposableHandleOrSegment:Ljava/lang/Object;

.field public indexInSegment:I

.field public final onCancellationConstructor:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final param:Ljava/lang/Object;

.field private final processResFunc:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final regFunc:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/selects/SelectImplementation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    .line 766
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    .line 768
    iput-object p3, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->regFunc:Lkotlin/jvm/functions/Function3;

    .line 769
    iput-object p4, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->processResFunc:Lkotlin/jvm/functions/Function3;

    .line 770
    iput-object p5, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->param:Ljava/lang/Object;

    .line 771
    iput-object p6, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->block:Ljava/lang/Object;

    .line 772
    iput-object p7, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->onCancellationConstructor:Lkotlin/jvm/functions/Function3;

    const/4 p1, -0x1

    .line 775
    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    return-void
.end method


# virtual methods
.method public final createOnCancellationAction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->onCancellationConstructor:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->param:Ljava/lang/Object;

    invoke-interface {v0, p1, v1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public final dispose()V
    .registers 5

    .line 832
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    .line 833
    instance-of v2, v0, Lkotlinx/coroutines/internal/Segment;

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    .line 834
    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    iget v2, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    invoke-virtual {v1}, Lkotlinx/coroutines/selects/SelectImplementation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lkotlinx/coroutines/internal/Segment;->onCancellation(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    return-void

    .line 836
    :cond_15
    instance-of v1, v0, Lkotlinx/coroutines/DisposableHandle;

    if-eqz v1, :cond_1c

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/DisposableHandle;

    :cond_1c
    if-eqz v3, :cond_21

    invoke-interface {v3}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_21
    return-void
.end method

.method public final invokeBlock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->block:Ljava/lang/Object;

    .line 822
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->param:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getPARAM_CLAUSE_0()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v1, v2, :cond_16

    .line 823
    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 824
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 826
    :cond_16
    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 827
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final processResult(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 805
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->processResFunc:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->param:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final tryRegisterAsWaiter(Lkotlinx/coroutines/selects/SelectImplementation;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;)Z"
        }
    .end annotation

    .line 789
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getInRegistrationPhase(Lkotlinx/coroutines/selects/SelectImplementation;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectImplementation;->access$isCancelled(Lkotlinx/coroutines/selects/SelectImplementation;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_19

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 790
    :cond_19
    :goto_19
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getInternalResult$p(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_2a

    goto :goto_30

    :cond_2a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 791
    :cond_30
    :goto_30
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->regFunc:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->param:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getInternalResult$p(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne p1, v0, :cond_45

    const/4 p1, 0x1

    return p1

    :cond_45
    const/4 p1, 0x0

    return p1
.end method

###### Class kotlinx.coroutines.selects.SelectImplementation.AnonymousClass1 (kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1)
.class final Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/selects/SelectImplementation;->doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.selects.SelectImplementation"
    f = "Select.kt"
    i = {
        0x0
    }
    l = {
        0x1b6,
        0x1b9
    }
    m = "doSelectSuspend"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/selects/SelectImplementation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->result:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->access$doSelectSuspend(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.selects.SelectImplementation.C02061 (kotlinx.coroutines.selects.SelectImplementation$processResultAndInvokeBlockRecoveringException$1)
.class final Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/selects/SelectImplementation;->processResultAndInvokeBlockRecoveringException(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.selects.SelectImplementation"
    f = "Select.kt"
    i = {}
    l = {
        0x2c8
    }
    m = "processResultAndInvokeBlockRecoveringException"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/selects/SelectImplementation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->result:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v0, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->access$processResultAndInvokeBlockRecoveringException(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
