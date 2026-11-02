###### Class kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmTypeParameterExtension (kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmTypeParameterExtension)
.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension;
.super Ljava/lang/Object;
.source "JvmExtensionNodes.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeParameterExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension$Companion;

.field public static final TYPE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension;->Companion:Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension$Companion;

    .line 110
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    const-class v1, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;-><init>(Lkotlin/reflect/KClass;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension;->TYPE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension;->annotations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAnnotations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;
    .registers 2

    .line 106
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension;->TYPE:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmTypeParameterExtension.Companion (kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmTypeParameterExtension$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension$Companion;
.super Ljava/lang/Object;
.source "JvmExtensionNodes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeParameterExtension$Companion;-><init>()V

    return-void
.end method
