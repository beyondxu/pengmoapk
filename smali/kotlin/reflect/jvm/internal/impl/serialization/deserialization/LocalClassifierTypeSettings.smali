###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings (kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings;
.super Ljava/lang/Object;
.source "LocalClassifierTypeSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;
    }
.end annotation


# virtual methods
.method public abstract getReplacementTypeForLocalClassifiers()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings.Default (kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings$Default)
.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;
.super Ljava/lang/Object;
.source "LocalClassifierTypeSettings.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReplacementTypeForLocalClassifiers()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
