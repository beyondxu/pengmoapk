###### Class com.facebook.common.time.AwakeTimeSinceBootClock (com.facebook.common.time.AwakeTimeSinceBootClock)
.class public Lcom/facebook/common/time/AwakeTimeSinceBootClock;
.super Ljava/lang/Object;
.source "AwakeTimeSinceBootClock.java"

# interfaces
.implements Lcom/facebook/common/time/MonotonicNanoClock;


# static fields
.field private static final INSTANCE:Lcom/facebook/common/time/AwakeTimeSinceBootClock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    invoke-direct {v0}, Lcom/facebook/common/time/AwakeTimeSinceBootClock;-><init>()V

    sput-object v0, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->INSTANCE:Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/facebook/common/time/AwakeTimeSinceBootClock;
    .registers 1

    .line 32
    sget-object v0, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->INSTANCE:Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    return-object v0
.end method


# virtual methods
.method public synthetic now()J
    .registers 3

    invoke-static {p0}, Lcom/facebook/common/time/MonotonicClock$-CC;->$default$now(Lcom/facebook/common/time/MonotonicClock;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nowNanos()J
    .registers 3

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
