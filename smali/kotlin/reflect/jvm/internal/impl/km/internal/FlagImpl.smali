###### Class kotlin.reflect.jvm.internal.impl.km.internal.FlagImpl (kotlin.reflect.jvm.internal.impl.km.internal.FlagImpl)
.class public final Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;
.super Ljava/lang/Object;
.source "FlagImpl.kt"


# instance fields
.field private final bitWidth:I

.field private final offset:I

.field private final value:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->offset:I

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->bitWidth:I

    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->value:I

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;)V
    .registers 3

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField<",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->offset:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->bitWidth:I

    invoke-direct {p0, v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final getBitWidth$kotlin_metadata()I
    .registers 2

    .line 10
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->bitWidth:I

    return v0
.end method

.method public final getOffset$kotlin_metadata()I
    .registers 2

    .line 10
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->offset:I

    return v0
.end method

.method public final getValue$kotlin_metadata()I
    .registers 2

    .line 10
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->value:I

    return v0
.end method

.method public final invoke(I)Z
    .registers 4

    .line 20
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->offset:I

    ushr-int/2addr p1, v0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->bitWidth:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    and-int/2addr p1, v0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;->value:I

    if-ne p1, v0, :cond_f

    return v1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
