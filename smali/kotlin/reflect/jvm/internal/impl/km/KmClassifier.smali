###### Class kotlin.reflect.jvm.internal.impl.km.KmClassifier (kotlin.reflect.jvm.internal.impl.km.KmClassifier)
.class public abstract Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;
.super Ljava/lang/Object;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;,
        Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;,
        Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;-><init>()V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmClassifier.Class (kotlin.reflect.jvm.internal.impl.km.KmClassifier$Class)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;
.super Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Class"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 686
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;->name:Ljava/lang/String;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 686
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmClassifier.TypeAlias (kotlin.reflect.jvm.internal.impl.km.KmClassifier$TypeAlias)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;
.super Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeAlias"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 701
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;->name:Ljava/lang/String;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 701
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeAlias(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmClassifier.TypeParameter (kotlin.reflect.jvm.internal.impl.km.KmClassifier$TypeParameter)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;
.super Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeParameter"
.end annotation


# instance fields
.field private final id:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 693
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;->id:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;->id:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;->id:I

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getId()I
    .registers 2

    .line 693
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;->id:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeParameter(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
