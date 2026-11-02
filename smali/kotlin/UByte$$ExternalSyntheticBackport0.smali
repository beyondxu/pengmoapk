###### Class kotlin.UByte$$ExternalSyntheticBackport0 (kotlin.UByte$$ExternalSyntheticBackport0)
.class public final synthetic Lkotlin/UByte$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(D)I
    .registers 4

    .line 0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static synthetic m(II)I
    .registers 6

    .line 0
    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    long-to-int p0, v0

    int-to-long v2, p0

    cmp-long p1, v0, v2

    if-nez p1, :cond_a

    return p0

    :cond_a
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public static synthetic m(J)I
    .registers 4

    .line 0
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static synthetic m(JJ)I
    .registers 6

    .line 0
    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic m(Ljava/lang/reflect/Method;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static synthetic m(Z)I
    .registers 1

    .line 0
    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    return p0

    :cond_5
    const/16 p0, 0x4d5

    return p0
.end method

.method public static synthetic m(JJ)J
    .registers 11

    .line 0
    add-long v0, p0, p2

    xor-long/2addr p2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-gez v6, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    xor-long/2addr p0, v0

    cmp-long p3, p0, v4

    if-ltz p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    or-int p0, p2, v2

    if-eqz p0, :cond_1a

    return-wide v0

    :cond_1a
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public static synthetic m(Ljava/lang/Object;)V
    .registers 2

    .line 0
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_a

    check-cast p0, Ljava/lang/AutoCloseable;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_a
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_14

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/util/concurrent/ExecutorService;)V

    return-void

    :cond_14
    instance-of v0, p0, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_1e

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1e
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_28

    check-cast p0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :cond_28
    instance-of v0, p0, Landroid/media/MediaDrm;

    if-eqz v0, :cond_32

    check-cast p0, Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    return-void

    :cond_32
    instance-of v0, p0, Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_3c

    check-cast p0, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    return-void

    :cond_3c
    instance-of v0, p0, Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_46

    check-cast p0, Landroid/content/ContentProviderClient;

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-void

    :cond_46
    invoke-static {p0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/concurrent/ExecutorService;)V
    .registers 6

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_d

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_d

    goto :goto_33

    :cond_d
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    :cond_17
    :goto_17
    if-nez v0, :cond_2a

    :try_start_19
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {p0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_21} :catch_22

    goto :goto_17

    :catch_22
    nop

    if-nez v1, :cond_17

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    goto :goto_17

    :cond_2a
    if-eqz v1, :cond_33

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_33
    :goto_33
    return-void
.end method

.method public static synthetic m(Ljava/lang/Object;)Z
    .registers 1

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic m$1(II)I
    .registers 6

    .line 0
    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    long-to-int p0, v0

    int-to-long v2, p0

    cmp-long p1, v0, v2

    if-nez p1, :cond_b

    return p0

    :cond_b
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public static synthetic m$1(JJ)J
    .registers 11

    .line 0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    not-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    not-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x41

    if-le v0, v1, :cond_1c

    mul-long p0, p0, p2

    return-wide p0

    :cond_1c
    const/16 v1, 0x40

    if-lt v0, v1, :cond_41

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p0, v0

    if-ltz v4, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, p2, v5

    if-eqz v1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    or-int/2addr v0, v2

    if-eqz v0, :cond_41

    mul-long v0, p0, p2

    if-eqz v4, :cond_40

    div-long p0, v0, p0

    cmp-long v2, p0, p2

    if-nez v2, :cond_41

    :cond_40
    return-wide v0

    :cond_41
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public static synthetic m$1(Ljava/lang/Object;)V
    .registers 1

    .line 0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static synthetic m$2(II)I
    .registers 6

    .line 0
    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    long-to-int p0, v0

    int-to-long v2, p0

    cmp-long p1, v0, v2

    if-nez p1, :cond_a

    return p0

    :cond_a
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public static synthetic m$2(JJ)J
    .registers 11

    .line 0
    sub-long v0, p0, p2

    xor-long/2addr p2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-ltz v6, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    xor-long/2addr p0, v0

    cmp-long p3, p0, v4

    if-ltz p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    or-int p0, p2, v2

    if-eqz p0, :cond_1a

    return-wide v0

    :cond_1a
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public static synthetic m$3(II)I
    .registers 6

    .line 0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic m$3(JJ)J
    .registers 11

    .line 0
    const-wide/high16 v0, -0x8000000000000000L

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_12

    xor-long v2, p0, v0

    xor-long/2addr v0, p2

    cmp-long v4, v2, v0

    if-gez v4, :cond_10

    return-wide p0

    :cond_10
    sub-long/2addr p0, p2

    return-wide p0

    :cond_12
    cmp-long v4, p0, v2

    if-ltz v4, :cond_18

    rem-long/2addr p0, p2

    return-wide p0

    :cond_18
    const/4 v4, 0x1

    ushr-long v5, p0, v4

    div-long/2addr v5, p2

    shl-long v4, v5, v4

    mul-long v4, v4, p2

    sub-long/2addr p0, v4

    xor-long v4, p0, v0

    xor-long/2addr v0, p2

    cmp-long v6, v4, v0

    if-ltz v6, :cond_29

    goto :goto_2a

    :cond_29
    move-wide p2, v2

    :goto_2a
    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static synthetic m$4(II)I
    .registers 6

    .line 0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    rem-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic m$4(JJ)J
    .registers 11

    .line 0
    const-wide/high16 v0, -0x8000000000000000L

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_12

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gez v0, :cond_f

    return-wide v2

    :cond_f
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_12
    cmp-long v4, p0, v2

    if-ltz v4, :cond_18

    div-long/2addr p0, p2

    return-wide p0

    :cond_18
    const/4 v2, 0x1

    ushr-long v3, p0, v2

    div-long/2addr v3, p2

    shl-long/2addr v3, v2

    mul-long v5, v3, p2

    sub-long/2addr p0, v5

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    int-to-long p0, v2

    add-long/2addr v3, p0

    return-wide v3
.end method

.method public static synthetic m$5(II)I
    .registers 3

    .line 0
    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
