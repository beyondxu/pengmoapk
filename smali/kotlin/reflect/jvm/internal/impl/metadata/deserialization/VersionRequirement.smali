###### Class kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement (kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;
.super Ljava/lang/Object;
.source "VersionRequirement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion;,
        Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion;


# instance fields
.field private final errorCode:Ljava/lang/Integer;

.field private final kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

.field private final level:Lkotlin/DeprecationLevel;

.field private final message:Ljava/lang/String;

.field private final version:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->Companion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;Lkotlin/DeprecationLevel;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 7

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->version:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    .line 26
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    .line 27
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->level:Lkotlin/DeprecationLevel;

    .line 28
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->errorCode:Ljava/lang/Integer;

    .line 29
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrorCode()Ljava/lang/Integer;
    .registers 2

    .line 28
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->errorCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getKind()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;
    .registers 2

    .line 26
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    return-object v0
.end method

.method public final getLevel()Lkotlin/DeprecationLevel;
    .registers 2

    .line 27
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->level:Lkotlin/DeprecationLevel;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;
    .registers 2

    .line 25
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->version:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "since "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->version:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->level:Lkotlin/DeprecationLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->errorCode:Ljava/lang/Integer;

    const-string v2, ""

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " error "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->errorCode:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->message:Ljava/lang/String;

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement.Companion (kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion;
.super Ljava/lang/Object;
.source "VersionRequirement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVersionRequirement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VersionRequirement.kt\norg/jetbrains/kotlin/metadata/deserialization/VersionRequirement$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1617#2,9:120\n1869#2:129\n1870#2:131\n1626#2:132\n1#3:130\n*S KotlinDebug\n*F\n+ 1 VersionRequirement.kt\norg/jetbrains/kotlin/metadata/deserialization/VersionRequirement$Companion\n*L\n94#1:120,9\n94#1:129\n94#1:131\n94#1:132\n94#1:130\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(ILkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;
    .registers 13

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "table"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_12

    return-object p3

    .line 100
    :cond_12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->Companion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version$Companion;

    .line 101
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_24

    :cond_23
    move-object v1, p3

    .line 102
    :goto_24
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->hasVersionFull()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->getVersionFull()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_34

    :cond_33
    move-object v2, p3

    .line 100
    :goto_34
    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version$Companion;->decode(Ljava/lang/Integer;Ljava/lang/Integer;)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    move-result-object v4

    .line 105
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->getLevel()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_59

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    .line 108
    sget-object v0, Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;

    goto :goto_5e

    .line 105
    :cond_53
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 107
    :cond_59
    sget-object v0, Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;

    goto :goto_5e

    .line 106
    :cond_5c
    sget-object v0, Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;

    :goto_5e
    move-object v6, v0

    .line 111
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    goto :goto_70

    :cond_6f
    move-object v7, p3

    .line 113
    :goto_70
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->getMessage()I

    move-result p3

    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_7e
    move-object v8, p3

    .line 115
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement;->getVersionKind()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    move-result-object v5

    const-string p1, "getVersionKind(...)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;Lkotlin/DeprecationLevel;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v3
.end method

###### Class kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement.Companion.WhenMappings (kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement$Companion$WhenMappings)
.class public final synthetic Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "VersionRequirement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->WARNING:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->ERROR:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->HIDDEN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement.Version (kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement$Version)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;
.super Ljava/lang/Object;
.source "VersionRequirement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version$Companion;

.field public static final INFINITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->Companion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version$Companion;

    .line 54
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    const/16 v1, 0x100

    invoke-direct {v0, v1, v1, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;-><init>(III)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->INFINITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->major:I

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->minor:I

    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->patch:I

    return-void
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .registers 4

    .line 33
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->patch:I

    const/16 v1, 0x2e

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->major:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->minor:I

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->major:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->minor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->patch:I

    goto :goto_15
.end method

.method public final component1()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->major:I

    return v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->minor:I

    return v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->patch:I

    return v0
.end method

.method public final encode(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "writeVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writeVersionFull"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->INFINITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 42
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->major:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_32

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->minor:I

    const/16 v3, 0xf

    if-gt v2, v3, :cond_32

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->patch:I

    const/16 v4, 0x7f

    if-le v3, v4, :cond_24

    goto :goto_32

    :cond_24
    shl-int/lit8 p2, v2, 0x3

    or-int/2addr p2, v0

    shl-int/lit8 v0, v3, 0x7

    or-int/2addr p2, v0

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 43
    :cond_32
    :goto_32
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->minor:I

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->patch:I

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->major:I

    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->major:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->minor:I

    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->minor:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->patch:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->patch:I

    if-eq v1, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->major:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->minor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->patch:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement.Version.Companion (kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement$Version$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version$Companion;
.super Ljava/lang/Object;
.source "VersionRequirement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Ljava/lang/Integer;Ljava/lang/Integer;)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;
    .registers 5

    if-eqz p2, :cond_1e

    .line 65
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 67
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 68
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    and-int/lit16 p2, p2, 0xff

    .line 65
    invoke-direct {p1, v0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;-><init>(III)V

    return-object p1

    :cond_1e
    if-eqz p1, :cond_3c

    .line 70
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0xf

    .line 73
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shr-int/lit8 p1, p1, 0x7

    and-int/lit8 p1, p1, 0x7f

    .line 70
    invoke-direct {p2, v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;-><init>(III)V

    return-object p2

    .line 75
    :cond_3c
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->INFINITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    return-object p1
.end method
