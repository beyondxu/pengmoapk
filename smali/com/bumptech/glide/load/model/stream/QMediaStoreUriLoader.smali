###### Class com.bumptech.glide.load.model.stream.QMediaStoreUriLoader (com.bumptech.glide.load.model.stream.QMediaStoreUriLoader)
.class public final Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;
.super Ljava/lang/Object;
.source "QMediaStoreUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;,
        Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;,
        Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;,
        Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final fileDelegate:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final uriDelegate:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;->fileDelegate:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 75
    iput-object p3, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;->uriDelegate:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 76
    iput-object p4, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;->dataClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public buildLoadData(Landroid/net/Uri;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "TDataT;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;

    iget-object v3, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;->fileDelegate:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v5, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;->uriDelegate:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v10, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;->dataClass:Ljava/lang/Class;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v10}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/net/Uri;IILcom/bumptech/glide/load/Options;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object v0
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 5

    .line 59
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;->buildLoadData(Landroid/net/Uri;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;)Z
    .registers 4

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-static {p1}, Lcom/bumptech/glide/load/data/mediastore/MediaStoreUtil;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2

    .line 59
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

###### Class com.bumptech.glide.load.model.stream.QMediaStoreUriLoader.Factory (com.bumptech.glide.load.model.stream.QMediaStoreUriLoader$Factory)
.class abstract Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;
.super Ljava/lang/Object;
.source "QMediaStoreUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;->context:Landroid/content/Context;

    .line 255
    iput-object p2, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;->dataClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    .line 261
    new-instance v0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;->context:Landroid/content/Context;

    const-class v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;->dataClass:Ljava/lang/Class;

    .line 263
    invoke-virtual {p1, v2, v3}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;->dataClass:Ljava/lang/Class;

    .line 264
    invoke-virtual {p1, v3, v4}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p1

    iget-object v3, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;->dataClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final teardown()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.load.model.stream.QMediaStoreUriLoader.FileDescriptorFactory (com.bumptech.glide.load.model.stream.QMediaStoreUriLoader$FileDescriptorFactory)
.class public final Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;
.super Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;
.source "QMediaStoreUriLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 244
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

###### Class com.bumptech.glide.load.model.stream.QMediaStoreUriLoader.InputStreamFactory (com.bumptech.glide.load.model.stream.QMediaStoreUriLoader$InputStreamFactory)
.class public final Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;
.super Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;
.source "QMediaStoreUriLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 236
    const-class v0, Ljava/io/InputStream;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

###### Class com.bumptech.glide.load.model.stream.QMediaStoreUriLoader.QMediaStoreUriFetcher (com.bumptech.glide.load.model.stream.QMediaStoreUriLoader$QMediaStoreUriFetcher)
.class final Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;
.super Ljava/lang/Object;
.source "QMediaStoreUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QMediaStoreUriFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "TDataT;>;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private volatile delegate:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final fileDelegate:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final height:I

.field private volatile isCancelled:Z

.field private final options:Lcom/bumptech/glide/load/Options;

.field private final uri:Landroid/net/Uri;

.field private final uriDelegate:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/net/Uri;IILcom/bumptech/glide/load/Options;Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Landroid/net/Uri;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->context:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->fileDelegate:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 119
    iput-object p3, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->uriDelegate:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 120
    iput-object p4, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->uri:Landroid/net/Uri;

    .line 121
    iput p5, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->width:I

    .line 122
    iput p6, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->height:I

    .line 123
    iput-object p7, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->options:Lcom/bumptech/glide/load/Options;

    .line 124
    iput-object p8, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->dataClass:Ljava/lang/Class;

    return-void
.end method

.method private buildDelegateData()Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "TDataT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 156
    invoke-static {}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->fileDelegate:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->uri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->queryForFilePath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->width:I

    iget v3, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->height:I

    iget-object v4, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->options:Lcom/bumptech/glide/load/Options;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    return-object v0

    .line 160
    :cond_19
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/bumptech/glide/load/data/mediastore/MediaStoreUtil;->isAndroidPickerUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->uriDelegate:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->width:I

    iget v3, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->height:I

    iget-object v4, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->options:Lcom/bumptech/glide/load/Options;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    return-object v0

    .line 164
    :cond_30
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->isAccessMediaLocationGranted()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->uri:Landroid/net/Uri;

    invoke-static {v0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3f

    :cond_3d
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->uri:Landroid/net/Uri;

    .line 165
    :goto_3f
    iget-object v1, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->uriDelegate:Lcom/bumptech/glide/load/model/ModelLoader;

    iget v2, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->width:I

    iget v3, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->height:I

    iget-object v4, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->options:Lcom/bumptech/glide/load/Options;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    return-object v0
.end method

.method private buildDelegateFetcher()Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "TDataT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->buildDelegateData()Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 151
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAccessMediaLocationGranted()Z
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {v0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private queryForFilePath(Landroid/net/Uri;)Ljava/io/File;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "File path was empty in media store for: "

    const-string v1, "Failed to media store entry for: "

    const/4 v2, 0x0

    .line 202
    :try_start_5
    iget-object v3, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->context:Landroid/content/Context;

    .line 204
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    .line 205
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 211
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 214
    const-string p1, "_data"

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 218
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_5c

    if-eqz v2, :cond_37

    .line 221
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_37
    return-object v0

    .line 216
    :cond_38
    :try_start_38
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_4a
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5c
    .catchall {:try_start_38 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    move-object p1, v0

    if-eqz v2, :cond_63

    .line 221
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_63
    throw p1
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->isCancelled:Z

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->delegate:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_a

    .line 182
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    :cond_a
    return-void
.end method

.method public cleanup()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->delegate:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_7

    .line 173
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    :cond_7
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    .line 195
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-TDataT;>;)V"
        }
    .end annotation

    const-string v0, "Failed to build fetcher for: "

    .line 131
    :try_start_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->buildDelegateFetcher()Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 133
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    return-void

    .line 137
    :cond_1f
    iput-object v1, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->delegate:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 138
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->isCancelled:Z

    if-eqz v0, :cond_29

    .line 139
    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher;->cancel()V

    return-void

    .line 141
    :cond_29
    invoke-interface {v1, p1, p2}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    .line 144
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method
