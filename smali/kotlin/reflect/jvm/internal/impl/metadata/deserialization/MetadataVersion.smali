###### Class kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion (kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;
.super Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;
.source "MetadataVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion$Companion;

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

.field public static final INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

.field public static final INVALID_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;


# instance fields
.field private final isStrictSemantics:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->Companion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion$Companion;

    .line 58
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    filled-new-array {v1, v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    .line 61
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->next()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    .line 64
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    new-array v1, v2, [I

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INVALID_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    return-void
.end method

.method public varargs constructor <init>([I)V
    .registers 3

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([IZ)V

    return-void
.end method

.method public constructor <init>([IZ)V
    .registers 4

    const-string v0, "versionArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;-><init>([I)V

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->isStrictSemantics:Z

    return-void
.end method

.method private final isCompatibleInternal(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Z
    .registers 5

    .line 36
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMajor()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMinor()I

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 38
    :cond_f
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMajor()I

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 40
    :cond_16
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->newerThan(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method private final newerThan(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Z
    .registers 6

    .line 49
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMajor()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_c

    return v2

    .line 50
    :cond_c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMajor()I

    move-result v1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_18

    return v3

    .line 51
    :cond_18
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMinor()I

    move-result p1

    if-le v0, p1, :cond_23

    return v2

    :cond_23
    return v3
.end method


# virtual methods
.method public final isCompatible(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Z
    .registers 3

    const-string v0, "metadataVersionFromLanguageVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->isStrictSemantics:Z

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->lastSupportedVersionWithThisLanguageVersion(Z)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->isCompatibleInternal(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Z

    move-result p1

    return p1
.end method

.method public final isStrictSemantics()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->isStrictSemantics:Z

    return v0
.end method

.method public final lastSupportedVersionWithThisLanguageVersion(Z)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;
    .registers 3

    if-eqz p1, :cond_5

    .line 21
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    goto :goto_7

    :cond_5
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    .line 22
    :goto_7
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->newerThan(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p1

    :cond_e
    return-object p0
.end method

.method public final next()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;
    .registers 6

    .line 44
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMajor()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMinor()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1b

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    const/4 v2, 0x2

    filled-new-array {v2, v1, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([I)V

    return-object v0

    .line 45
    :cond_1b
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMajor()I

    move-result v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->getMinor()I

    move-result v4

    add-int/2addr v4, v2

    filled-new-array {v3, v4, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([I)V

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion.Companion (kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion$Companion;
.super Ljava/lang/Object;
.source "MetadataVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion$Companion;-><init>()V

    return-void
.end method
