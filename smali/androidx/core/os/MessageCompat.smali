###### Class androidx.core.os.MessageCompat (androidx.core.os.MessageCompat)
.class public final Landroidx/core/os/MessageCompat;
.super Ljava/lang/Object;
.source "MessageCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/MessageCompat$Api22Impl;
    }
.end annotation


# static fields
.field private static sTryIsAsynchronous:Z = true

.field private static sTrySetAsynchronous:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAsynchronous(Landroid/os/Message;)Z
    .registers 3

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_b

    .line 100
    invoke-static {p0}, Landroidx/core/os/MessageCompat$Api22Impl;->isAsynchronous(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 102
    :cond_b
    sget-boolean v0, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 106
    :try_start_10
    invoke-static {p0}, Landroidx/core/os/MessageCompat$Api22Impl;->isAsynchronous(Landroid/os/Message;)Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/NoSuchMethodError; {:try_start_10 .. :try_end_14} :catch_15

    return p0

    .line 108
    :catch_15
    sput-boolean v1, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    :cond_17
    return v1
.end method

.method public static setAsynchronous(Landroid/os/Message;Z)V
    .registers 4

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_a

    .line 74
    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$Api22Impl;->setAsynchronous(Landroid/os/Message;Z)V

    return-void

    .line 77
    :cond_a
    sget-boolean v0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    if-eqz v0, :cond_15

    .line 81
    :try_start_e
    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$Api22Impl;->setAsynchronous(Landroid/os/Message;Z)V
    :try_end_11
    .catch Ljava/lang/NoSuchMethodError; {:try_start_e .. :try_end_11} :catch_12

    return-void

    :catch_12
    const/4 p0, 0x0

    .line 83
    sput-boolean p0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    :cond_15
    return-void
.end method

###### Class androidx.core.os.MessageCompat.Api22Impl (androidx.core.os.MessageCompat$Api22Impl)
.class Landroidx/core/os/MessageCompat$Api22Impl;
.super Ljava/lang/Object;
.source "MessageCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/MessageCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api22Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAsynchronous(Landroid/os/Message;)Z
    .registers 1

    .line 125
    invoke-virtual {p0}, Landroid/os/Message;->isAsynchronous()Z

    move-result p0

    return p0
.end method

.method static setAsynchronous(Landroid/os/Message;Z)V
    .registers 2

    .line 130
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    return-void
.end method
