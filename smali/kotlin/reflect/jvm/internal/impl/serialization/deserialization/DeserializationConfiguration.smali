###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration (kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;
.super Ljava/lang/Object;
.source "DeserializationConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;
    }
.end annotation


# virtual methods
.method public abstract getAllowUnstableDependencies()Z
.end method

.method public abstract getMetadataVersion()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;
.end method

.method public abstract getPreserveDeclarationsOrdering()Z
.end method

.method public abstract getReportErrorsOnPreReleaseDependencies()Z
.end method

.method public abstract getSkipMetadataVersionCheck()Z
.end method

.method public abstract getSkipPrereleaseCheck()Z
.end method

.method public abstract getTypeAliasesAllowed()Z
.end method

###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration.Default (kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration$Default)
.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;
.super Ljava/lang/Object;
.source "DeserializationConfiguration.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowUnstableDependencies()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMetadataVersion()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;
    .registers 2

    .line 13
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    return-object v0
.end method

.method public getPreserveDeclarationsOrdering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getReportErrorsOnPreReleaseDependencies()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSkipMetadataVersionCheck()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSkipPrereleaseCheck()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTypeAliasesAllowed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
