###### Class kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverSettings (kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverSettings)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;
.super Ljava/lang/Object;
.source "context.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;,
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Default;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;->Companion:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;

    return-void
.end method


# virtual methods
.method public abstract getCorrectNullabilityForNotNullTypeParameter()Z
.end method

.method public abstract getEnhancePrimitiveArrays()Z
.end method

.method public abstract getIgnoreNullabilityForErasedValueParameters()Z
.end method

.method public abstract getTypeEnhancementImprovementsInStrictMode()Z
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverSettings.Companion (kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverSettings$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;
.super Ljava/lang/Object;
.source "context.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverSettings.Default (kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverSettings$Default)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Default;
.super Ljava/lang/Object;
.source "context.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Default;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Default;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Default;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings$Default;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorrectNullabilityForNotNullTypeParameter()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEnhancePrimitiveArrays()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIgnoreNullabilityForErasedValueParameters()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTypeEnhancementImprovementsInStrictMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
