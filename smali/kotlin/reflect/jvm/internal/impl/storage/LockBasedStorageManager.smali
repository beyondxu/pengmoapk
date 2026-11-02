###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager)
.class public Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.super Ljava/lang/Object;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;,
        Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NO_LOCKS:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

.field private static final PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private final debugText:Ljava/lang/String;

.field private final exceptionHandlingStrategy:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

.field protected final lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 14

    const/16 v0, 0x25

    const/16 v1, 0x14

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-eq p0, v3, :cond_13

    if-eq p0, v2, :cond_13

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_15

    :cond_13
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_15
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p0, v3, :cond_21

    if-eq p0, v2, :cond_21

    if-eq p0, v1, :cond_21

    if-eq p0, v0, :cond_21

    const/4 v7, 0x3

    goto :goto_22

    :cond_21
    const/4 v7, 0x2

    :goto_22
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager"

    const-string v9, "compute"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq p0, v10, :cond_65

    if-eq p0, v5, :cond_65

    const/4 v5, 0x5

    if-eq p0, v5, :cond_65

    const/4 v5, 0x6

    if-eq p0, v5, :cond_60

    packed-switch p0, :pswitch_data_da

    const-string v5, "debugText"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_3c
    const-string v5, "throwable"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_41
    const-string v5, "source"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_46
    const-string v5, "postCompute"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_4b
    const-string v5, "computable"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_50
    const-string v5, "map"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_55
    const-string v5, "onRecursiveCall"

    aput-object v5, v7, v11

    goto :goto_69

    :pswitch_5a
    aput-object v8, v7, v11

    goto :goto_69

    :pswitch_5d
    aput-object v9, v7, v11

    goto :goto_69

    :cond_60
    const-string v5, "lock"

    aput-object v5, v7, v11

    goto :goto_69

    :cond_65
    :pswitch_65
    const-string v5, "exceptionHandlingStrategy"

    aput-object v5, v7, v11

    :goto_69
    const-string v5, "sanitizeStackTrace"

    const-string v11, "createMemoizedFunctionWithNullableValues"

    const-string v12, "createMemoizedFunction"

    if-eq p0, v3, :cond_80

    if-eq p0, v2, :cond_80

    if-eq p0, v1, :cond_7d

    if-eq p0, v0, :cond_7a

    aput-object v8, v7, v10

    goto :goto_82

    :cond_7a
    aput-object v5, v7, v10

    goto :goto_82

    :cond_7d
    aput-object v11, v7, v10

    goto :goto_82

    :cond_80
    aput-object v12, v7, v10

    :goto_82
    packed-switch p0, :pswitch_data_11a

    const-string v5, "createWithExceptionHandling"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_8a
    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_8d
    const-string v5, "recursionDetectedDefault"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_92
    aput-object v9, v7, v6

    goto :goto_c2

    :pswitch_95
    const-string v5, "createNullableLazyValueWithPostCompute"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_9a
    const-string v5, "createRecursionTolerantNullableLazyValue"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_9f
    const-string v5, "createNullableLazyValue"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_a4
    const-string v5, "createLazyValueWithPostCompute"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_a9
    const-string v5, "createRecursionTolerantLazyValue"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_ae
    const-string v5, "createLazyValue"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_b3
    aput-object v11, v7, v6

    goto :goto_c2

    :pswitch_b6
    aput-object v12, v7, v6

    goto :goto_c2

    :pswitch_b9
    const-string v5, "replaceExceptionHandling"

    aput-object v5, v7, v6

    goto :goto_c2

    :pswitch_be
    const-string v5, "<init>"

    aput-object v5, v7, v6

    :goto_c2
    :pswitch_c2
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_d4

    if-eq p0, v2, :cond_d4

    if-eq p0, v1, :cond_d4

    if-eq p0, v0, :cond_d4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_d9

    :cond_d4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_d9
    throw p0

    :pswitch_data_da
    .packed-switch 0x8
        :pswitch_65
        :pswitch_5d
        :pswitch_5a
        :pswitch_5d
        :pswitch_55
        :pswitch_5a
        :pswitch_5d
        :pswitch_50
        :pswitch_5d
        :pswitch_55
        :pswitch_50
        :pswitch_5d
        :pswitch_5a
        :pswitch_5d
        :pswitch_50
        :pswitch_4b
        :pswitch_4b
        :pswitch_55
        :pswitch_4b
        :pswitch_55
        :pswitch_4b
        :pswitch_46
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_46
        :pswitch_4b
        :pswitch_41
        :pswitch_3c
        :pswitch_5a
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x4
        :pswitch_be
        :pswitch_be
        :pswitch_be
        :pswitch_b9
        :pswitch_b9
        :pswitch_b6
        :pswitch_c2
        :pswitch_b6
        :pswitch_b6
        :pswitch_c2
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b3
        :pswitch_c2
        :pswitch_b3
        :pswitch_b3
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
        :pswitch_a9
        :pswitch_a9
        :pswitch_a4
        :pswitch_a4
        :pswitch_9f
        :pswitch_9a
        :pswitch_95
        :pswitch_95
        :pswitch_92
        :pswitch_8d
        :pswitch_8a
        :pswitch_c2
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 35
    const-class v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->substringBeforeLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->PACKAGE_NAME:Ljava/lang/String;

    .line 57
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;->THROW:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

    const-string v3, "NO_LOCKS"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->NO_LOCKS:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 99
    move-object v1, v0

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/InterruptedException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 107
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;->THROW:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->Companion:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock$Companion;

    invoke-virtual {v1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock$Companion;->simpleLock(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/DefaultSimpleLock;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;)V
    .registers 5

    if-nez p1, :cond_6

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 92
    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    .line 94
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->exceptionHandlingStrategy:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

    .line 95
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->debugText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;)V

    return-void
.end method

.method static synthetic access$100(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;
    .registers 1

    .line 34
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->exceptionHandlingStrategy:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 1

    .line 34
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private static createConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0
.end method

.method private static sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0x24

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 689
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 690
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_21

    .line 695
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_22

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_21
    const/4 v2, -0x1

    .line 702
    :goto_22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 703
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    if-nez p0, :cond_40

    const/16 v0, 0x25

    .line 704
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    :cond_40
    return-object p0
.end method


# virtual methods
.method public compute(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x22

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 288
    :cond_7
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->lock()V

    .line 290
    :try_start_c
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_16

    .line 296
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    return-object p1

    :catchall_16
    move-exception p1

    .line 293
    :try_start_17
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->exceptionHandlingStrategy:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;->handleException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p1

    .line 296
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    .line 297
    throw p1
.end method

.method public createCacheWithNotNullValues()Lkotlin/reflect/jvm/internal/impl/storage/CacheWithNotNullValues;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/impl/storage/CacheWithNotNullValues<",
            "TK;TV;>;"
        }
    .end annotation

    .line 738
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;)V

    return-object v0
.end method

.method public createCacheWithNullableValues()Lkotlin/reflect/jvm/internal/impl/storage/CacheWithNullableValues;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/impl/storage/CacheWithNullableValues<",
            "TK;TV;>;"
        }
    .end annotation

    .line 710
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;

    .line 711
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;)V

    return-object v0
.end method

.method public createLazyValue(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x17

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 179
    :cond_7
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public createLazyValueWithPostCompute(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p3, :cond_e

    const/16 v0, 0x1d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 223
    :cond_e
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;

    move-object v3, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public createMemoizedFunction(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNotNull;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNotNull<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 124
    :cond_7
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunction(Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/ConcurrentMap;)Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNotNull;

    move-result-object p1

    if-nez p1, :cond_16

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    :cond_16
    return-object p1
.end method

.method public createMemoizedFunction(Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/ConcurrentMap;)Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNotNull;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNotNull<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 142
    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    invoke-direct {v0, p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x13

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 164
    :cond_7
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/ConcurrentMap;)Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable;

    move-result-object p1

    if-nez p1, :cond_16

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    :cond_16
    return-object p1
.end method

.method public createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/ConcurrentMap;)Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x15

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x16

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 173
    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    invoke-direct {v0, p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public createNullableLazyValue(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/storage/NullableLazyValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/NullableLazyValue<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x1e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 248
    :cond_7
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public createRecursionTolerantLazyValue(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;TT;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x1a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x1b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 202
    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4;

    invoke-direct {v0, p0, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected recursionDetectedDefault(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult<",
            "TV;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x23

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->$$$reportNull$$$0(I)V

    .line 308
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recursion detected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_18

    const-string p1, ""

    goto :goto_26

    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "on input: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " under "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/AssertionError;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->debugText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$1)
.class final Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :cond_6
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v2, 0x2

    if-eq p0, v0, :cond_d

    const/4 v3, 0x3

    goto :goto_e

    :cond_d
    const/4 v3, 0x2

    :goto_e
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1"

    const/4 v5, 0x0

    if-eq p0, v0, :cond_1a

    const-string v6, "source"

    aput-object v6, v3, v5

    goto :goto_1c

    :cond_1a
    aput-object v4, v3, v5

    :goto_1c
    const-string v5, "recursionDetectedDefault"

    if-eq p0, v0, :cond_23

    aput-object v4, v3, v0

    goto :goto_25

    :cond_23
    aput-object v5, v3, v0

    :goto_25
    if-eq p0, v0, :cond_29

    aput-object v5, v3, v2

    :cond_29
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_35

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_3a
    throw p0
.end method

.method constructor <init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;)V
    .registers 5

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;)V

    return-void
.end method


# virtual methods
.method protected recursionDetectedDefault(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult<",
            "TV;>;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;->$$$reportNull$$$0(I)V

    .line 61
    :cond_6
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->fallThrough()Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p2, 0x1

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;->$$$reportNull$$$0(I)V

    :cond_10
    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.AnonymousClass4 (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$4)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createRecursionTolerantLazyValue(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

.field final synthetic val$onRecursiveCall:Ljava/lang/Object;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 3

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "recursionDetected"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "@NotNull method %s.%s must not return null"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V
    .registers 5

    .line 202
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4;->this$0:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4;->val$onRecursiveCall:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method protected recursionDetected(Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult<",
            "TT;>;"
        }
    .end annotation

    .line 206
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4;->val$onRecursiveCall:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->value(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4;->$$$reportNull$$$0(I)V

    :cond_c
    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.AnonymousClass5 (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$5)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createLazyValueWithPostCompute(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

.field final synthetic val$onRecursiveCall:Lkotlin/jvm/functions/Function1;

.field final synthetic val$postCompute:Lkotlin/jvm/functions/Function1;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const-string v1, "@NotNull method %s.%s must not return null"

    goto :goto_8

    :cond_6
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_8
    if-eq p0, v0, :cond_c

    const/4 v2, 0x2

    goto :goto_d

    :cond_c
    const/4 v2, 0x3

    :goto_d
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5"

    const/4 v4, 0x0

    if-eq p0, v0, :cond_17

    aput-object v3, v2, v4

    goto :goto_1b

    :cond_17
    const-string v5, "value"

    aput-object v5, v2, v4

    :goto_1b
    const/4 v4, 0x1

    if-eq p0, v0, :cond_23

    const-string v3, "recursionDetected"

    aput-object v3, v2, v4

    goto :goto_25

    :cond_23
    aput-object v3, v2, v4

    :goto_25
    if-eq p0, v0, :cond_28

    goto :goto_2c

    :cond_28
    const-string v3, "doPostCompute"

    aput-object v3, v2, v0

    :goto_2c
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_38

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_3d
    throw p0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 6

    .line 223
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->this$0:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->val$onRecursiveCall:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->val$postCompute:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method protected doPostCompute(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->$$$reportNull$$$0(I)V

    .line 235
    :cond_6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->val$postCompute:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected recursionDetected(Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult<",
            "TT;>;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->val$onRecursiveCall:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_f

    .line 228
    invoke-super {p0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute;->recursionDetected(Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->$$$reportNull$$$0(I)V

    :cond_e
    return-object p1

    .line 230
    :cond_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->value(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object p1

    if-nez p1, :cond_21

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->$$$reportNull$$$0(I)V

    :cond_21
    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.CacheWithNotNullValuesBasedOnMemoizedFunction (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/CacheWithNotNullValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheWithNotNullValuesBasedOnMemoizedFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction<",
        "TK;TV;>;",
        "Lkotlin/reflect/jvm/internal/impl/storage/CacheWithNotNullValues<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 9

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :cond_6
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v2, 0x2

    if-eq p0, v0, :cond_d

    const/4 v3, 0x3

    goto :goto_e

    :cond_d
    const/4 v3, 0x2

    :goto_e
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p0, v5, :cond_27

    if-eq p0, v2, :cond_22

    if-eq p0, v0, :cond_1f

    const-string v7, "storageManager"

    aput-object v7, v3, v6

    goto :goto_2b

    :cond_1f
    aput-object v4, v3, v6

    goto :goto_2b

    :cond_22
    const-string v7, "computation"

    aput-object v7, v3, v6

    goto :goto_2b

    :cond_27
    const-string v7, "map"

    aput-object v7, v3, v6

    :goto_2b
    const-string v6, "computeIfAbsent"

    if-eq p0, v0, :cond_32

    aput-object v4, v3, v5

    goto :goto_34

    :cond_32
    aput-object v6, v3, v5

    :goto_34
    if-eq p0, v2, :cond_3d

    if-eq p0, v0, :cond_3f

    const-string v4, "<init>"

    aput-object v4, v3, v2

    goto :goto_3f

    :cond_3d
    aput-object v6, v3, v2

    :cond_3f
    :goto_3f
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_50

    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_50
    throw p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 741
    const-class v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction;->$$$reportNull$$$0(I)V

    :cond_c
    const/4 v0, 0x0

    .line 747
    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;)V
    .registers 4

    .line 741
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method


# virtual methods
.method public computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lkotlin/jvm/functions/Function0<",
            "+TV;>;)TV;"
        }
    .end annotation

    if-nez p2, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction;->$$$reportNull$$$0(I)V

    .line 753
    :cond_6
    invoke-super {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;->computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p2, 0x3

    .line 755
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction;->$$$reportNull$$$0(I)V

    :cond_10
    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.CacheWithNullableValuesBasedOnMemoizedFunction (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/CacheWithNullableValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheWithNullableValuesBasedOnMemoizedFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction<",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation<",
        "TK;TV;>;TV;>;",
        "Lkotlin/reflect/jvm/internal/impl/storage/CacheWithNullableValues<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_14

    if-eq p0, v2, :cond_f

    const-string v4, "storageManager"

    aput-object v4, v0, v1

    goto :goto_18

    :cond_f
    const-string v4, "computation"

    aput-object v4, v0, v1

    goto :goto_18

    :cond_14
    const-string v4, "map"

    aput-object v4, v0, v1

    :goto_18
    const-string v1, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction"

    aput-object v1, v0, v3

    if-eq p0, v2, :cond_23

    const-string p0, "<init>"

    aput-object p0, v0, v2

    goto :goto_27

    :cond_23
    const-string p0, "computeIfAbsent"

    aput-object p0, v0, v2

    :goto_27
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;->$$$reportNull$$$0(I)V

    .line 720
    :cond_c
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;)V
    .registers 4

    .line 714
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method


# virtual methods
.method public computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lkotlin/jvm/functions/Function0<",
            "+TV;>;)TV;"
        }
    .end annotation

    if-nez p2, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;->$$$reportNull$$$0(I)V

    .line 731
    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.CacheWithNullableValuesBasedOnMemoizedFunction.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1;
.super Ljava/lang/Object;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation<",
        "TK;TV;>;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 720
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1;->invoke(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 723
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;->access$400(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.ExceptionHandlingStrategy (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$ExceptionHandlingStrategy)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;
.super Ljava/lang/Object;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExceptionHandlingStrategy"
.end annotation


# static fields
.field public static final THROW:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;->THROW:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

    return-void
.end method


# virtual methods
.method public abstract handleException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.ExceptionHandlingStrategy.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$ExceptionHandlingStrategy$1)
.class final Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy$1;
.super Ljava/lang/Object;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 3

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "throwable"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy$1"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "handleException"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy$1;->$$$reportNull$$$0(I)V

    .line 42
    :cond_6
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/utils/ExceptionUtilsKt;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.KeyWithComputation (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$KeyWithComputation)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;
.super Ljava/lang/Object;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyWithComputation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final computation:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+TV;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lkotlin/jvm/functions/Function0<",
            "+TV;>;)V"
        }
    .end annotation

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;->key:Ljava/lang/Object;

    .line 766
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;->computation:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method static synthetic access$400(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 760
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;->computation:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    .line 772
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_20

    .line 774
    :cond_12
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;

    .line 776
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;->key:Ljava/lang/Object;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    return v1

    :cond_1f
    return v0

    :cond_20
    :goto_20
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 783
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$KeyWithComputation;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedLazyValue)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;
.super Ljava/lang/Object;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/NullableLazyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockBasedLazyValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/storage/NullableLazyValue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final computable:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

.field private volatile value:Ljava/lang/Object;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_11

    const/4 v3, 0x3

    goto :goto_12

    :cond_11
    const/4 v3, 0x2

    :goto_12
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_26

    if-eq p0, v1, :cond_23

    if-eq p0, v0, :cond_23

    const-string v7, "storageManager"

    aput-object v7, v3, v5

    goto :goto_2a

    :cond_23
    aput-object v4, v3, v5

    goto :goto_2a

    :cond_26
    const-string v7, "computable"

    aput-object v7, v3, v5

    :goto_2a
    if-eq p0, v1, :cond_36

    if-eq p0, v0, :cond_31

    aput-object v4, v3, v6

    goto :goto_3a

    :cond_31
    const-string v4, "renderDebugInformation"

    aput-object v4, v3, v6

    goto :goto_3a

    :cond_36
    const-string v4, "recursionDetected"

    aput-object v4, v3, v6

    :goto_3a
    if-eq p0, v1, :cond_42

    if-eq p0, v0, :cond_42

    const-string v4, "<init>"

    aput-object v4, v3, v1

    :cond_42
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_50

    if-eq p0, v0, :cond_50

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_55

    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_55
    throw p0
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->$$$reportNull$$$0(I)V

    .line 366
    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    .line 367
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 368
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->computable:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    .line 384
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-nez v1, :cond_b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->unescapeThrowable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 386
    :cond_b
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->lock()V

    .line 388
    :try_start_12
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    .line 389
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-nez v1, :cond_24

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->unescapeThrowable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_85

    .line 432
    :goto_1c
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    return-object v0

    .line 391
    :cond_24
    :try_start_24
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-ne v0, v1, :cond_3c

    .line 392
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 393
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->recursionDetected(Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->isFallThrough()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 395
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c

    .line 399
    :cond_3c
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-ne v0, v1, :cond_50

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->recursionDetected(Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->isFallThrough()Z

    move-result v1

    if-nez v1, :cond_50

    .line 402
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c

    .line 406
    :cond_50
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_24 .. :try_end_54} :catchall_85

    .line 408
    :try_start_54
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->computable:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 412
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->postCompute(Ljava/lang/Object;)V

    .line 414
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_60

    goto :goto_1c

    :catchall_60
    move-exception v0

    .line 418
    :try_start_61
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/ExceptionUtilsKt;->isProcessCanceledException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 424
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-ne v1, v2, :cond_73

    .line 426
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->escapeThrowable(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    .line 428
    :cond_73
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->access$100(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;->handleException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 419
    :cond_7e
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    .line 421
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_85
    .catchall {:try_start_61 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception v0

    .line 432
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    .line 433
    throw v0
.end method

.method public isComputed()Z
    .registers 3

    .line 373
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method protected postCompute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected recursionDetected(Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult<",
            "TT;>;"
        }
    .end annotation

    .line 442
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v0, "in a lazy value"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->recursionDetectedDefault(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object p1

    if-nez p1, :cond_f

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->$$$reportNull$$$0(I)V

    :cond_f
    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValueWithPostCompute (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedLazyValueWithPostCompute)
.class abstract Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LockBasedLazyValueWithPostCompute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile valuePostCompute:Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "storageManager"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "computable"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "<init>"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;->$$$reportNull$$$0(I)V

    .line 471
    :cond_c
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    .line 464
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;->valuePostCompute:Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue;

    return-void
.end method


# virtual methods
.method protected abstract doPostCompute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;->valuePostCompute:Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue;

    if-eqz v0, :cond_f

    .line 477
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 478
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 481
    :cond_f
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final postCompute(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 489
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;->valuePostCompute:Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue;

    const/4 v0, 0x0

    .line 491
    :try_start_8
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;->doPostCompute(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_e

    .line 493
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;->valuePostCompute:Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue;

    return-void

    :catchall_e
    move-exception p1

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;->valuePostCompute:Lkotlin/reflect/jvm/internal/impl/storage/SingleThreadValue;

    .line 494
    throw p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedNotNullLazyValue (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockBasedNotNullLazyValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue<",
        "TT;>;",
        "Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :cond_6
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_8
    if-eq p0, v0, :cond_c

    const/4 v2, 0x3

    goto :goto_d

    :cond_c
    const/4 v2, 0x2

    :goto_d
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_1f

    if-eq p0, v0, :cond_1c

    const-string v6, "storageManager"

    aput-object v6, v2, v4

    goto :goto_23

    :cond_1c
    aput-object v3, v2, v4

    goto :goto_23

    :cond_1f
    const-string v6, "computable"

    aput-object v6, v2, v4

    :goto_23
    if-eq p0, v0, :cond_28

    aput-object v3, v2, v5

    goto :goto_2c

    :cond_28
    const-string v3, "invoke"

    aput-object v3, v2, v5

    :goto_2c
    if-eq p0, v0, :cond_32

    const-string v3, "<init>"

    aput-object v3, v2, v0

    :cond_32
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_3e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_43
    throw p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 519
    const-class v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->$$$reportNull$$$0(I)V

    .line 521
    :cond_c
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 527
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->invoke()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x2

    .line 529
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->$$$reportNull$$$0(I)V

    :cond_a
    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedNotNullLazyValueWithPostCompute (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute)
.class abstract Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LockBasedNotNullLazyValueWithPostCompute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute<",
        "TT;>;",
        "Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :cond_6
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_8
    if-eq p0, v0, :cond_c

    const/4 v2, 0x3

    goto :goto_d

    :cond_c
    const/4 v2, 0x2

    :goto_d
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_1f

    if-eq p0, v0, :cond_1c

    const-string v6, "storageManager"

    aput-object v6, v2, v4

    goto :goto_23

    :cond_1c
    aput-object v3, v2, v4

    goto :goto_23

    :cond_1f
    const-string v6, "computable"

    aput-object v6, v2, v4

    :goto_23
    if-eq p0, v0, :cond_28

    aput-object v3, v2, v5

    goto :goto_2c

    :cond_28
    const-string v3, "invoke"

    aput-object v3, v2, v5

    :goto_2c
    if-eq p0, v0, :cond_32

    const-string v3, "<init>"

    aput-object v3, v2, v0

    :cond_32
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_3e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_43
    throw p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 500
    const-class v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute;->$$$reportNull$$$0(I)V

    .line 506
    :cond_c
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 512
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute;->invoke()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x2

    .line 514
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute;->$$$reportNull$$$0(I)V

    :cond_a
    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.MapBasedMemoizedFunction (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$MapBasedMemoizedFunction)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;
.super Ljava/lang/Object;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapBasedMemoizedFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final compute:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;"
        }
    .end annotation
.end field

.field private final storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 10

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    const/4 v3, 0x2

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_12

    const/4 v4, 0x3

    goto :goto_13

    :cond_12
    const/4 v4, 0x2

    :goto_13
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p0, v7, :cond_2e

    if-eq p0, v3, :cond_29

    if-eq p0, v1, :cond_26

    if-eq p0, v0, :cond_26

    const-string v8, "storageManager"

    aput-object v8, v4, v6

    goto :goto_32

    :cond_26
    aput-object v5, v4, v6

    goto :goto_32

    :cond_29
    const-string v8, "compute"

    aput-object v8, v4, v6

    goto :goto_32

    :cond_2e
    const-string v8, "map"

    aput-object v8, v4, v6

    :goto_32
    if-eq p0, v1, :cond_3e

    if-eq p0, v0, :cond_39

    aput-object v5, v4, v7

    goto :goto_42

    :cond_39
    const-string v5, "raceCondition"

    aput-object v5, v4, v7

    goto :goto_42

    :cond_3e
    const-string v5, "recursionDetected"

    aput-object v5, v4, v7

    :goto_42
    if-eq p0, v1, :cond_4a

    if-eq p0, v0, :cond_4a

    const-string v5, "<init>"

    aput-object v5, v4, v3

    :cond_4a
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_58

    if-eq p0, v0, :cond_58

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5d

    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5d
    throw p0
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->$$$reportNull$$$0(I)V

    .line 542
    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 544
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 545
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->compute:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private inconsistentComputingKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    .line 642
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent key detected. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is expected, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", most probably race condition detected on input "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " under "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->access$200(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/AssertionError;

    return-object p1
.end method

.method private raceCondition(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    .line 635
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Race condition detected on input "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Old value is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " under "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->access$200(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/AssertionError;

    if-nez p1, :cond_31

    const/4 p2, 0x4

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->$$$reportNull$$$0(I)V

    :cond_31
    return-object p1
.end method

.method private unableToRemoveKey(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/AssertionError;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    .line 652
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to remove "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " under "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->access$200(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/AssertionError;

    return-object p1
.end method


# virtual methods
.method protected getStorageManager()Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
    .registers 2

    .line 665
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 552
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-eq v0, v1, :cond_11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->unescapeExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 554
    :cond_11
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->lock()V

    .line 556
    :try_start_18
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 558
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-ne v0, v1, :cond_3b

    .line 559
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const/4 v1, 0x1

    .line 560
    invoke-virtual {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->recursionDetected(Ljava/lang/Object;Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->isFallThrough()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 562
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_d4

    .line 624
    :goto_33
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    return-object p1

    .line 566
    :cond_3b
    :try_start_3b
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-ne v0, v1, :cond_4f

    const/4 v1, 0x0

    .line 567
    invoke-virtual {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->recursionDetected(Ljava/lang/Object;Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object v1

    .line 568
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->isFallThrough()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 569
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_33

    :cond_4f
    if-eqz v0, :cond_56

    .line 573
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->unescapeExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_d4

    goto :goto_33

    :cond_56
    const/4 v0, 0x0

    .line 577
    :try_start_57
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->cache:Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->compute:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 579
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->escapeNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 585
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_7f

    if-ne v2, v3, :cond_7a

    .line 624
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    return-object v1

    .line 586
    :cond_7a
    :try_start_7a
    invoke-direct {p0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->raceCondition(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    .line 587
    throw v0
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v1

    .line 593
    :try_start_80
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/ExceptionUtilsKt;->isProcessCanceledException(Ljava/lang/Throwable;)Z

    move-result v2
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_d4

    if-eqz v2, :cond_9e

    .line 596
    :try_start_86
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_98

    .line 600
    :try_start_8c
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-eq v0, v2, :cond_95

    .line 601
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->inconsistentComputingKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 604
    :cond_95
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :catchall_98
    move-exception v0

    .line 598
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->unableToRemoveKey(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    :cond_9e
    if-eq v1, v0, :cond_be

    .line 615
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->escapeThrowable(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 616
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-eq v0, v2, :cond_b3

    .line 617
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->raceCondition(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 620
    :cond_b3
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->access$100(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

    move-result-object p1

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;->handleException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_be
    .catchall {:try_start_8c .. :try_end_be} :catchall_d4

    .line 608
    :cond_be
    :try_start_be
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_ce

    .line 612
    :try_start_c3
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->access$100(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

    move-result-object p1

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;->handleException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_ce
    move-exception v0

    .line 610
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->unableToRemoveKey(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
    :try_end_d4
    .catchall {:try_start_c3 .. :try_end_d4} :catchall_d4

    :catchall_d4
    move-exception p1

    .line 624
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    .line 625
    throw p1
.end method

.method public isComputed(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 661
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-eq p1, v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method protected recursionDetected(Ljava/lang/Object;Z)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult<",
            "TV;>;"
        }
    .end annotation

    .line 630
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v0, ""

    invoke-virtual {p2, v0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->recursionDetectedDefault(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p2, 0x3

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->$$$reportNull$$$0(I)V

    :cond_e
    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNotNull;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapBasedMemoizedFunctionToNotNull"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction<",
        "TK;TV;>;",
        "Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNotNull<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 9

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :cond_6
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v2, 0x2

    if-eq p0, v0, :cond_d

    const/4 v3, 0x3

    goto :goto_e

    :cond_d
    const/4 v3, 0x2

    :goto_e
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p0, v5, :cond_27

    if-eq p0, v2, :cond_22

    if-eq p0, v0, :cond_1f

    const-string v7, "storageManager"

    aput-object v7, v3, v6

    goto :goto_2b

    :cond_1f
    aput-object v4, v3, v6

    goto :goto_2b

    :cond_22
    const-string v7, "compute"

    aput-object v7, v3, v6

    goto :goto_2b

    :cond_27
    const-string v7, "map"

    aput-object v7, v3, v6

    :goto_2b
    if-eq p0, v0, :cond_30

    aput-object v4, v3, v5

    goto :goto_34

    :cond_30
    const-string v4, "invoke"

    aput-object v4, v3, v5

    :goto_34
    if-eq p0, v0, :cond_3a

    const-string v4, "<init>"

    aput-object v4, v3, v2

    :cond_3a
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_46

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4b

    :cond_46
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4b
    throw p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 669
    const-class v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->$$$reportNull$$$0(I)V

    .line 675
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 681
    invoke-super {p0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 v0, 0x3

    .line 683
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->$$$reportNull$$$0(I)V

    :cond_a
    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.NotValue (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$NotValue)
.class final enum Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
.super Ljava/lang/Enum;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NotValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

.field public static final enum COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

.field public static final enum NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

.field public static final enum RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 354
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const-string v1, "NOT_COMPUTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    .line 355
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const-string v3, "COMPUTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    .line 356
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const-string v5, "RECURSION_WAS_DETECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    const/4 v5, 0x3

    .line 353
    new-array v5, v5, [Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
    .registers 2

    .line 353
    const-class v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
    .registers 1

    .line 353
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.RecursionDetectedResult (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$RecursionDetectedResult)
.class Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
.super Ljava/lang/Object;
.source "LockBasedStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecursionDetectedResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fallThrough:Z

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 318
    const-class v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->value:Ljava/lang/Object;

    .line 335
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->fallThrough:Z

    return-void
.end method

.method public static fallThrough()Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult<",
            "TT;>;"
        }
    .end annotation

    .line 327
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static value(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult<",
            "TT;>;"
        }
    .end annotation

    .line 322
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isFallThrough()Z
    .registers 2

    .line 344
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->fallThrough:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 349
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->isFallThrough()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "FALL_THROUGH"

    return-object v0

    :cond_9
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
