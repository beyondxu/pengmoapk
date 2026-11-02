###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument)
.class public abstract Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.super Ljava/lang/Object;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;,
        Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract toString()Ljava/lang/String;
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.AnnotationValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$AnnotationValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnnotationValue"
.end annotation


# instance fields
.field private final annotation:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;)V
    .registers 3

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;->annotation:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;->annotation:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;->annotation:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getAnnotation()Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;
    .registers 2

    .line 134
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;->annotation:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;->annotation:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationValue("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;->annotation:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.ArrayKClassValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$ArrayKClassValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayKClassValue"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnnotations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Annotations.kt\nkotlin/metadata/KmAnnotationArgument$ArrayKClassValue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
.end annotation


# instance fields
.field private final arrayDimensionCount:I

.field private final className:Ljava/lang/String;

.field private final stringRepresentation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->className:Ljava/lang/String;

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->arrayDimensionCount:I

    if-lez p2, :cond_3f

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ArrayKClassValue("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, p2, :cond_22

    .line 193
    const-string v2, "kotlin/Array<"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 194
    :cond_22
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget p2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->arrayDimensionCount:I

    :goto_29
    if-ge v0, p2, :cond_33

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 196
    :cond_33
    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->stringRepresentation:Ljava/lang/String;

    return-void

    .line 188
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ArrayKClassValue must have at least one dimension. For regular X::class argument, use KClassValue."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->className:Ljava/lang/String;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->className:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->arrayDimensionCount:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->arrayDimensionCount:I

    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getArrayDimensionCount()I
    .registers 2

    .line 186
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->arrayDimensionCount:I

    return v0
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->className:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->arrayDimensionCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.ArrayValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$ArrayValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayValue"
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;",
            ">;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;->elements:Ljava/util/List;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;->elements:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;->elements:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;->elements:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ArrayValue("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.BooleanValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$BooleanValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BooleanValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;->value:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;->value:Z

    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;->value:Z

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .registers 2

    .line 92
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 92
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;->value:Z

    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.ByteValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$ByteValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:B


# direct methods
.method public constructor <init>(B)V
    .registers 3

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;->value:B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;

    iget-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;->value:B

    iget-byte p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;->value:B

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public getValue()Ljava/lang/Byte;
    .registers 2

    .line 78
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;->value:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 78
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;->getValue()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;->value:B

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.CharValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$CharValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:C


# direct methods
.method public constructor <init>(C)V
    .registers 3

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-char p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;->value:C

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;

    iget-char v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;->value:C

    iget-char p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;->value:C

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public getValue()Ljava/lang/Character;
    .registers 2

    .line 80
    iget-char v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;->value:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 80
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;->getValue()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-char v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;->value:C

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.DoubleValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$DoubleValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:D


# direct methods
.method public constructor <init>(D)V
    .registers 4

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;->value:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;

    iget-wide v3, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;->value:D

    iget-wide v5, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getValue()Ljava/lang/Double;
    .registers 3

    .line 90
    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 90
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;->value:D

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.EnumValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$EnumValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValue"
.end annotation


# instance fields
.field private final enumClassName:Ljava/lang/String;

.field private final enumEntryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "enumClassName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumClassName:Ljava/lang/String;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumEntryName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumClassName:Ljava/lang/String;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumClassName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumEntryName:Ljava/lang/String;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumEntryName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getEnumClassName()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnumEntryName()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumClassName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumEntryName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnumValue("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->enumEntryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.FloatValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$FloatValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FloatValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:F


# direct methods
.method public constructor <init>(F)V
    .registers 3

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;->value:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;->value:F

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;->value:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getValue()Ljava/lang/Float;
    .registers 2

    .line 88
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 88
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.IntValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$IntValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;->value:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;->value:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;->value:I

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .registers 2

    .line 84
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;->value:I

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.KClassValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$KClassValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KClassValue"
.end annotation


# instance fields
.field private final className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;->className:Ljava/lang/String;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;->className:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;->className:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KClassValue("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$LiteralValue)
.class public abstract Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LiteralValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_34
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LongValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$LongValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;->value:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;

    iget-wide v3, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;->value:J

    iget-wide v5, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;->value:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public getValue()Ljava/lang/Long;
    .registers 3

    .line 86
    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 86
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;->value:J

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.ShortValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$ShortValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:S


# direct methods
.method public constructor <init>(S)V
    .registers 3

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-short p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;->value:S

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;

    iget-short v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;->value:S

    iget-short p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;->value:S

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 82
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;->getValue()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Short;
    .registers 2

    .line 82
    iget-short v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;->value:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-short v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;->value:S

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.StringValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$StringValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;->value:Ljava/lang/String;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;->value:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 104
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.UByteValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$UByteValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UByteValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Lkotlin/UByte;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:B


# direct methods
.method private constructor <init>(B)V
    .registers 3

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;->value:B

    return-void
.end method

.method public synthetic constructor <init>(BLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;-><init>(B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;

    iget-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;->value:B

    iget-byte p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;->value:B

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 95
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;->getValue-w2LRezQ()B

    move-result v0

    invoke-static {v0}, Lkotlin/UByte;->box-impl(B)Lkotlin/UByte;

    move-result-object v0

    return-object v0
.end method

.method public getValue-w2LRezQ()B
    .registers 2

    .line 95
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;->value:B

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;->value:B

    invoke-static {v0}, Lkotlin/UByte;->hashCode-impl(B)I

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.UIntValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$UIntValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UIntValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Lkotlin/UInt;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;->value:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;-><init>(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;->value:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;->value:I

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 99
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;->getValue-pVg5ArA()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v0

    return-object v0
.end method

.method public getValue-pVg5ArA()I
    .registers 2

    .line 99
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;->value:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;->value:I

    invoke-static {v0}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.ULongValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$ULongValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ULongValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Lkotlin/ULong;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method private constructor <init>(J)V
    .registers 4

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;->value:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;-><init>(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;

    iget-wide v3, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;->value:J

    iget-wide v5, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;->value:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 3

    .line 101
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;->getValue-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v0

    return-object v0
.end method

.method public getValue-s-VKNKU()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;->value:J

    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.UShortValue (kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument$UShortValue)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;
.super Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UShortValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue<",
        "Lkotlin/UShort;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:S


# direct methods
.method private constructor <init>(S)V
    .registers 3

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-short p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;->value:S

    return-void
.end method

.method public synthetic constructor <init>(SLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;-><init>(S)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;

    iget-short v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;->value:S

    iget-short p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;->value:S

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;->getValue-Mh2AYeg()S

    move-result v0

    invoke-static {v0}, Lkotlin/UShort;->box-impl(S)Lkotlin/UShort;

    move-result-object v0

    return-object v0
.end method

.method public getValue-Mh2AYeg()S
    .registers 2

    .line 97
    iget-short v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;->value:S

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-short v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;->value:S

    invoke-static {v0}, Lkotlin/UShort;->hashCode-impl(S)I

    move-result v0

    return v0
.end method
