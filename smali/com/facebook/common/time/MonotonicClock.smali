###### Class com.facebook.common.time.MonotonicClock (com.facebook.common.time.MonotonicClock)
.class public interface abstract Lcom/facebook/common/time/MonotonicClock;
.super Ljava/lang/Object;
.source "MonotonicClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;
    }
.end annotation


# virtual methods
.method public abstract now()J
.end method

.method public abstract nowNanos()J
.end method

###### Class com.facebook.common.time.MonotonicClock.CC (com.facebook.common.time.MonotonicClock$-CC)
.class public final synthetic Lcom/facebook/common/time/MonotonicClock$-CC;
.super Ljava/lang/Object;
.source "MonotonicClock.java"


# direct methods
.method public static $default$now(Lcom/facebook/common/time/MonotonicClock;)J
    .registers 4
    .param p0, "_this"    # Lcom/facebook/common/time/MonotonicClock;

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0}, Lcom/facebook/common/time/MonotonicClock;->nowNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static of(Lcom/facebook/common/time/Clock;)Lcom/facebook/common/time/MonotonicClock;
    .registers 3

    .line 52
    new-instance v0, Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;-><init>(Lcom/facebook/common/time/Clock;Lcom/facebook/common/time/MonotonicClock-IA;)V

    return-object v0
.end method

###### Class com.facebook.common.time.MonotonicClock.MonotonicClockWrapper (com.facebook.common.time.MonotonicClock$MonotonicClockWrapper)
.class public final Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;
.super Ljava/lang/Object;
.source "MonotonicClock.java"

# interfaces
.implements Lcom/facebook/common/time/MonotonicClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/time/MonotonicClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonotonicClockWrapper"
.end annotation


# instance fields
.field private mLast:J

.field private final provider:Lcom/facebook/common/time/Clock;


# direct methods
.method private constructor <init>(Lcom/facebook/common/time/Clock;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;->provider:Lcom/facebook/common/time/Clock;

    .line 61
    invoke-interface {p1}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;->mLast:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/time/Clock;Lcom/facebook/common/time/MonotonicClock-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;-><init>(Lcom/facebook/common/time/Clock;)V

    return-void
.end method


# virtual methods
.method public now()J
    .registers 5

    .line 71
    iget-wide v0, p0, Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;->mLast:J

    iget-object v2, p0, Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;->provider:Lcom/facebook/common/time/Clock;

    invoke-interface {v2}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;->mLast:J

    return-wide v0
.end method

.method public nowNanos()J
    .registers 4

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/facebook/common/time/MonotonicClock$MonotonicClockWrapper;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method
