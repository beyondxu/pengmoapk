###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType (kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType)
.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;
.super Ljava/lang/Object;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Array;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Companion;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    }
.end annotation


# static fields
.field private static final BOOLEAN:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

.field private static final BYTE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

.field private static final CHAR:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Companion;

.field private static final DOUBLE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

.field private static final FLOAT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

.field private static final INT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

.field private static final LONG:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

.field private static final SHORT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->Companion:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Companion;

    .line 119
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 120
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->CHAR:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 121
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->BYTE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 122
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->SHORT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 123
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->INT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 124
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 125
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->LONG:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 126
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBOOLEAN$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 1

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    return-object v0
.end method

.method public static final synthetic access$getBYTE$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 1

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->BYTE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    return-object v0
.end method

.method public static final synthetic access$getCHAR$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 1

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->CHAR:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    return-object v0
.end method

.method public static final synthetic access$getDOUBLE$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 1

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    return-object v0
.end method

.method public static final synthetic access$getFLOAT$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 1

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    return-object v0
.end method

.method public static final synthetic access$getINT$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 1

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->INT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    return-object v0
.end method

.method public static final synthetic access$getLONG$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 1

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->LONG:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    return-object v0
.end method

.method public static final synthetic access$getSHORT$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 1

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->SHORT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 116
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->toString(Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType.Array (kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType$Array)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Array;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Array"
.end annotation


# instance fields
.field private final elementType:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;)V
    .registers 3

    const-string v0, "elementType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Array;->elementType:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    return-void
.end method


# virtual methods
.method public final getElementType()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;
    .registers 2

    .line 114
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Array;->elementType:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType.Companion (kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Companion;
.super Ljava/lang/Object;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBOOLEAN$descriptors_jvm()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 2

    .line 119
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->access$getBOOLEAN$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public final getBYTE$descriptors_jvm()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 2

    .line 121
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->access$getBYTE$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public final getCHAR$descriptors_jvm()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 2

    .line 120
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->access$getCHAR$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public final getDOUBLE$descriptors_jvm()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 2

    .line 126
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->access$getDOUBLE$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public final getFLOAT$descriptors_jvm()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 2

    .line 124
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->access$getFLOAT$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public final getINT$descriptors_jvm()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 2

    .line 123
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->access$getINT$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public final getLONG$descriptors_jvm()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 2

    .line 125
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->access$getLONG$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public final getSHORT$descriptors_jvm()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
    .registers 2

    .line 122
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->access$getSHORT$cp()Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType.Object (kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType$Object)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Object"
.end annotation


# instance fields
.field private final internalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "internalName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;->internalName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getInternalName()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;->internalName:Ljava/lang/String;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType.Primitive (kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType$Primitive)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Primitive"
.end annotation


# instance fields
.field private final jvmPrimitiveType:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V
    .registers 3

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;->jvmPrimitiveType:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    return-void
.end method


# virtual methods
.method public final getJvmPrimitiveType()Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    .registers 2

    .line 111
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;->jvmPrimitiveType:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    return-object v0
.end method
