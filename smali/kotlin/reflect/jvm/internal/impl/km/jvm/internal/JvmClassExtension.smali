###### Class kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmClassExtension (kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmClassExtension)
.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;
.super Ljava/lang/Object;
.source "JvmExtensionNodes.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmClassExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension$Companion;

.field private static final TYPE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;


# instance fields
.field private anonymousObjectOriginName:Ljava/lang/String;

.field private jvmFlags:I

.field private final localDelegatedProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmProperty;",
            ">;"
        }
    .end annotation
.end field

.field private moduleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->Companion:Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension$Companion;

    .line 43
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    const-class v1, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;-><init>(Lkotlin/reflect/KClass;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->TYPE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->localDelegatedProperties:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getTYPE$cp()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;
    .registers 1

    .line 33
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->TYPE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    return-object v0
.end method


# virtual methods
.method public final getAnonymousObjectOriginName()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->anonymousObjectOriginName:Ljava/lang/String;

    return-object v0
.end method

.method public final getJvmFlags()I
    .registers 2

    .line 37
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->jvmFlags:I

    return v0
.end method

.method public final getLocalDelegatedProperties()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmProperty;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->localDelegatedProperties:Ljava/util/List;

    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;
    .registers 2

    .line 40
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->TYPE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    return-object v0
.end method

.method public final setAnonymousObjectOriginName(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->anonymousObjectOriginName:Ljava/lang/String;

    return-void
.end method

.method public final setJvmFlags(I)V
    .registers 2

    .line 37
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->jvmFlags:I

    return-void
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->moduleName:Ljava/lang/String;

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmClassExtension.Companion (kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmClassExtension$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension$Companion;
.super Ljava/lang/Object;
.source "JvmExtensionNodes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTYPE()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;
    .registers 2

    .line 43
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->access$getTYPE$cp()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    move-result-object v0

    return-object v0
.end method
