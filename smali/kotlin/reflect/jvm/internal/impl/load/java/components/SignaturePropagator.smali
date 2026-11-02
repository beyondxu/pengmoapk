###### Class kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator (kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;
.super Ljava/lang/Object;
.source "SignaturePropagator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;
    }
.end annotation


# static fields
.field public static final DO_NOTHING:Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;->DO_NOTHING:Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;

    return-void
.end method


# virtual methods
.method public abstract reportSignatureErrors(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resolvePropagatedSignature(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;"
        }
    .end annotation
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator$1)
.class final Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1;
.super Ljava/lang/Object;
.source "SignaturePropagator.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_4a

    const-string v2, "method"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_c
    const-string v2, "signatureErrors"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_11
    const-string v2, "descriptor"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_16
    const-string v2, "typeParameters"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_1b
    const-string v2, "valueParameters"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_20
    const-string v2, "returnType"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_25
    const-string v2, "owner"

    aput-object v2, v0, v1

    :goto_29
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq p0, v1, :cond_3a

    const/4 v1, 0x6

    if-eq p0, v1, :cond_3a

    const-string p0, "resolvePropagatedSignature"

    aput-object p0, v0, v2

    goto :goto_3e

    :cond_3a
    const-string p0, "reportSignatureErrors"

    aput-object p0, v0, v2

    :goto_3e
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportSignatureErrors(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x5

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p1, 0x6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1;->$$$reportNull$$$0(I)V

    .line 50
    :cond_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolvePropagatedSignature(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1;->$$$reportNull$$$0(I)V

    :cond_12
    if-nez p5, :cond_18

    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1;->$$$reportNull$$$0(I)V

    :cond_18
    if-nez p6, :cond_1e

    const/4 p1, 0x4

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1;->$$$reportNull$$$0(I)V

    .line 43
    :cond_1e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;

    .line 44
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator.PropagatedSignature (kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator$PropagatedSignature)
.class public Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;
.super Ljava/lang/Object;
.source "SignaturePropagator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropagatedSignature"
.end annotation


# instance fields
.field private final hasStableParameterNames:Z

.field private final receiverType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field private final returnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field private final signatureErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final valueParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 11

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eq p0, v3, :cond_f

    if-eq p0, v2, :cond_f

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_f

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_11

    :cond_f
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_11
    const/4 v5, 0x2

    if-eq p0, v3, :cond_1c

    if-eq p0, v2, :cond_1c

    if-eq p0, v1, :cond_1c

    if-eq p0, v0, :cond_1c

    const/4 v6, 0x3

    goto :goto_1d

    :cond_1c
    const/4 v6, 0x2

    :goto_1d
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_7e

    const-string v9, "returnType"

    aput-object v9, v6, v8

    goto :goto_3b

    :pswitch_2a
    aput-object v7, v6, v8

    goto :goto_3b

    :pswitch_2d
    const-string v9, "signatureErrors"

    aput-object v9, v6, v8

    goto :goto_3b

    :pswitch_32
    const-string v9, "typeParameters"

    aput-object v9, v6, v8

    goto :goto_3b

    :pswitch_37
    const-string v9, "valueParameters"

    aput-object v9, v6, v8

    :goto_3b
    const/4 v8, 0x1

    if-eq p0, v3, :cond_56

    if-eq p0, v2, :cond_51

    if-eq p0, v1, :cond_4c

    if-eq p0, v0, :cond_47

    aput-object v7, v6, v8

    goto :goto_5a

    :cond_47
    const-string v7, "getErrors"

    aput-object v7, v6, v8

    goto :goto_5a

    :cond_4c
    const-string v7, "getTypeParameters"

    aput-object v7, v6, v8

    goto :goto_5a

    :cond_51
    const-string v7, "getValueParameters"

    aput-object v7, v6, v8

    goto :goto_5a

    :cond_56
    const-string v7, "getReturnType"

    aput-object v7, v6, v8

    :goto_5a
    if-eq p0, v3, :cond_66

    if-eq p0, v2, :cond_66

    if-eq p0, v1, :cond_66

    if-eq p0, v0, :cond_66

    const-string v7, "<init>"

    aput-object v7, v6, v5

    :cond_66
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_78

    if-eq p0, v2, :cond_78

    if-eq p0, v1, :cond_78

    if-eq p0, v0, :cond_78

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_7d
    throw p0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->$$$reportNull$$$0(I)V

    :cond_c
    if-nez p4, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->$$$reportNull$$$0(I)V

    :cond_12
    if-nez p5, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->$$$reportNull$$$0(I)V

    .line 69
    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->returnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 71
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->receiverType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 72
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->valueParameters:Ljava/util/List;

    .line 73
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->typeParameters:Ljava/util/List;

    .line 74
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->signatureErrors:Ljava/util/List;

    .line 75
    iput-boolean p6, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->hasStableParameterNames:Z

    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->signatureErrors:Ljava/util/List;

    if-nez v0, :cond_8

    const/4 v1, 0x7

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public getReceiverType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 2

    .line 85
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->receiverType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    .line 80
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->returnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-nez v0, :cond_8

    const/4 v1, 0x4

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->typeParameters:Ljava/util/List;

    if-nez v0, :cond_8

    const/4 v1, 0x6

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public getValueParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->valueParameters:Ljava/util/List;

    if-nez v0, :cond_8

    const/4 v1, 0x5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->$$$reportNull$$$0(I)V

    :cond_8
    return-object v0
.end method

.method public hasStableParameterNames()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature;->hasStableParameterNames:Z

    return v0
.end method
