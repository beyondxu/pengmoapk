###### Class pl.droidsonroids.gif.R (pl.droidsonroids.gif.R)
.class public final Lpl/droidsonroids/gif/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/R$attr;,
        Lpl/droidsonroids/gif/R$styleable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class pl.droidsonroids.gif.R.attr (pl.droidsonroids.gif.R$attr)
.class public final Lpl/droidsonroids/gif/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static freezesAnimation:I = 0x7f0300a2

.field public static gifSource:I = 0x7f0300a4

.field public static isOpaque:I = 0x7f0300b7

.field public static loopCount:I = 0x7f0300cf


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class pl.droidsonroids.gif.R.styleable (pl.droidsonroids.gif.R$styleable)
.class public final Lpl/droidsonroids/gif/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static GifTextureView:[I = null

.field public static GifTextureView_gifSource:I = 0x0

.field public static GifTextureView_isOpaque:I = 0x1

.field public static GifView:[I = null

.field public static GifView_freezesAnimation:I = 0x0

.field public static GifView_loopCount:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const v0, 0x7f0300a4

    const v1, 0x7f0300b7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lpl/droidsonroids/gif/R$styleable;->GifTextureView:[I

    const v0, 0x7f0300a2

    const v1, 0x7f0300cf

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lpl/droidsonroids/gif/R$styleable;->GifView:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
