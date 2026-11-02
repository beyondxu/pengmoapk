###### Class com.bumptech.glide.load.engine.prefill.PreFillType (com.bumptech.glide.load.engine.prefill.PreFillType)
.class public final Lcom/bumptech/glide/load/engine/prefill/PreFillType;
.super Ljava/lang/Object;
.source "PreFillType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final config:Landroid/graphics/Bitmap$Config;

.field private final height:I

.field private final weight:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method constructor <init>(IILandroid/graphics/Bitmap$Config;I)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "Config must not be null"

    invoke-static {p3, v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap$Config;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    .line 33
    iput p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    .line 34
    iput p2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    .line 35
    iput p4, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 63
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 64
    check-cast p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    .line 65
    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    if-ne v0, p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    return v1
.end method

.method getConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method getHeight()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    return v0
.end method

.method getWeight()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    return v0
.end method

.method getWidth()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 75
    iget v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreFillSize{width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.prefill.PreFillType.Builder (com.bumptech.glide.load.engine.prefill.PreFillType$Builder)
.class public Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
.super Ljava/lang/Object;
.source "PreFillType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/prefill/PreFillType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private final height:I

.field private weight:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 111
    invoke-direct {p0, p1, p1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 102
    iput v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->weight:I

    if-lez p1, :cond_17

    if-lez p2, :cond_f

    .line 128
    iput p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->width:I

    .line 129
    iput p2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->height:I

    return-void

    .line 126
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method build()Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .registers 6

    .line 167
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->width:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->height:I

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->config:Landroid/graphics/Bitmap$Config;

    iget v4, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->weight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;-><init>(IILandroid/graphics/Bitmap$Config;I)V

    return-object v0
.end method

.method getConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->config:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public setWeight(I)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    .registers 3

    if-lez p1, :cond_5

    .line 161
    iput p1, p0, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->weight:I

    return-object p0

    .line 159
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Weight must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
