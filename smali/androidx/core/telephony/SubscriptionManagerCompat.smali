###### Class androidx.core.telephony.SubscriptionManagerCompat (androidx.core.telephony.SubscriptionManagerCompat)
.class public Landroidx/core/telephony/SubscriptionManagerCompat;
.super Ljava/lang/Object;
.source "SubscriptionManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;
    }
.end annotation


# static fields
.field private static sGetSlotIndexMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSlotIndex(I)I
    .registers 8

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    return v0

    .line 47
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_f

    .line 48
    invoke-static {p0}, Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;->getSlotIndex(I)I

    move-result p0

    return p0

    .line 51
    :cond_f
    :try_start_f
    sget-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_45

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_2e

    .line 53
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$2()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getSlotIndex"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    goto :goto_40

    .line 56
    :cond_2e
    invoke-static {}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$2()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getSlotId"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    .line 59
    :goto_40
    sget-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 62
    :cond_45
    sget-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_5d

    .line 64
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_5c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_5c} :catch_5d
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_5c} :catch_5d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_5c} :catch_5d

    return p0

    :catch_5d
    :cond_5d
    return v0
.end method

###### Class androidx.core.telephony.SubscriptionManagerCompat.Api29Impl (androidx.core.telephony.SubscriptionManagerCompat$Api29Impl)
.class Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;
.super Ljava/lang/Object;
.source "SubscriptionManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/telephony/SubscriptionManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSlotIndex(I)I
    .registers 1

    .line 83
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    return p0
.end method
