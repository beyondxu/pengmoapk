###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter (com.dmcbig.mediapicker.adapter.MediaGridAdapter)
.class public Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;,
        Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;,
        Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field fileUtils:Lcom/dmcbig/mediapicker/utils/FileUtils;

.field private final handler:Landroid/os/Handler;

.field isSingle:Z

.field private mOnItemClickListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

.field private mOnMaxListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

.field maxSelect:J

.field maxSize:J

.field medias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation
.end field

.field selectMedias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/ArrayList;IJZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;IJZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Lcom/dmcbig/mediapicker/utils/FileUtils;

    invoke-direct {v0}, Lcom/dmcbig/mediapicker/utils/FileUtils;-><init>()V

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->fileUtils:Lcom/dmcbig/mediapicker/utils/FileUtils;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSingle:Z

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnItemClickListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    .line 207
    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnMaxListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

    if-eqz p3, :cond_1d

    .line 208
    iput-object p3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    :cond_1d
    int-to-long p3, p4

    .line 210
    iput-wide p3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->maxSelect:J

    .line 211
    iput-wide p5, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->maxSize:J

    .line 212
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    .line 213
    iput-object p2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    .line 214
    iput-boolean p7, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSingle:Z

    .line 215
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnItemClickListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnMaxListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

    return-object p0
.end method

.method static synthetic lambda$onBindViewHolder$0(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->media_image:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemIndex(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method getItemWidth()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/dmcbig/mediapicker/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/dmcbig/mediapicker/PickerConfig;->GridSpanCount:I

    div-int/2addr v0, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMedias()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectMedias()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSelect(Lcom/dmcbig/mediapicker/entity/Media;)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_2c

    :cond_9
    const/4 v0, 0x0

    .line 4
    :goto_a
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 5
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dmcbig/mediapicker/entity/Media;

    .line 6
    iget-object v2, v1, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 7
    iget p1, p1, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    iput p1, v1, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    return v0

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2c
    :goto_2c
    const/4 p1, -0x1

    return p1
.end method

.method synthetic lambda$onBindViewHolder$1$com-dmcbig-mediapicker-adapter-MediaGridAdapter(Landroid/net/Uri;Lcom/dmcbig/mediapicker/entity/Media;Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;)V
    .registers 9

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1f

    .line 2
    iget-object p2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getItemWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getItemWidth()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {p2, p1, v0, v2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_40

    .line 4
    :cond_1f
    iget p1, p2, Lcom/dmcbig/mediapicker/entity/Media;->mediaType:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_33

    .line 5
    iget-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p2, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    int-to-long v3, p2

    invoke-static {p1, v3, v4, v1, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_40

    .line 7
    :cond_33
    iget-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p2, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    int-to-long v3, p2

    invoke-static {p1, v3, v4, v1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    :goto_40
    iget-object p2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->onBindViewHolder(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;I)V
    .registers 10

    .line 2
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dmcbig/mediapicker/entity/Media;

    .line 5
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 6
    iget v1, p2, Lcom/dmcbig/mediapicker/entity/Media;->mediaType:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_15

    if-eq v1, v3, :cond_13

    goto :goto_15

    .line 11
    :cond_13
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 14
    :cond_15
    :goto_15
    iget v1, p2, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_43

    int-to-long v4, v1

    .line 15
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 17
    invoke-static {}, Lio/dcloud/common/util/HarmonyUtils;->isHarmonyOs()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 19
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v4, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0, p2, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;Landroid/net/Uri;Lcom/dmcbig/mediapicker/entity/Media;Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;)V

    invoke-virtual {v1, v4}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto :goto_4e

    .line 37
    :cond_33
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->media_image:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_4e

    .line 42
    :cond_43
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->media_image:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    :goto_4e
    iget v0, p2, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    const/4 v1, 0x0

    const/4 v4, 0x4

    if-ne v0, v2, :cond_64

    .line 45
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->gif_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->video_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->textView_size:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a2

    .line 49
    :cond_64
    iget v0, p2, Lcom/dmcbig/mediapicker/entity/Media;->mediaType:I

    if-ne v0, v3, :cond_86

    .line 50
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->gif_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->video_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->textView_size:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->textView_size:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->fileUtils:Lcom/dmcbig/mediapicker/utils/FileUtils;

    iget-wide v5, p2, Lcom/dmcbig/mediapicker/entity/Media;->size:J

    long-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/dmcbig/mediapicker/utils/FileUtils;->getSizeByUnit(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a2

    .line 55
    :cond_86
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->video_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->textView_size:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->gif_info:Landroid/widget/RelativeLayout;

    iget-object v3, p2, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string v5, ".gif"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    const/4 v3, 0x0

    goto :goto_9f

    :cond_9e
    const/4 v3, 0x4

    :goto_9f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :goto_a2
    invoke-virtual {p0, p2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSelect(Lcom/dmcbig/mediapicker/entity/Media;)I

    move-result v0

    .line 60
    iget v3, p2, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    const/16 v5, 0x8

    if-ne v3, v2, :cond_b7

    .line 61
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->check_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->mask_view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e7

    .line 63
    :cond_b7
    iget-boolean v2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSingle:Z

    if-nez v2, :cond_dd

    .line 64
    iget-object v2, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->mask_view:Landroid/view/View;

    if-ltz v0, :cond_c0

    const/4 v4, 0x0

    :cond_c0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v2, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->check_image:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v1, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->check_image:Landroid/widget/ImageView;

    if-ltz v0, :cond_d1

    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_SELECTED:I

    goto :goto_d5

    :cond_d1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_UNSELECTED:I

    :goto_d5
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e7

    .line 68
    :cond_dd
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->check_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->mask_view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_e7
    iget-object v0, p1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->media_image:Landroid/widget/ImageView;

    new-instance v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;-><init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;Lcom/dmcbig/mediapicker/entity/Media;Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;
    .registers 5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_LAYOUT_MEDIA_VIEW_ITEM:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;-><init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnItemClickListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    return-void
.end method

.method public setOnMaxListener(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->mOnMaxListener:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

    return-void
.end method

.method public setSelectMedias(Lcom/dmcbig/mediapicker/entity/Media;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSelect(Lcom/dmcbig/mediapicker/entity/Media;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 3
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_d
    iget-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->medias:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateSelectAdapter(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    .line 3
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter.AnonymousClass1 (com.dmcbig.mediapicker.adapter.MediaGridAdapter$1)
.class Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->onBindViewHolder(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

.field final synthetic val$holder:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

.field final synthetic val$media:Lcom/dmcbig/mediapicker/entity/Media;


# direct methods
.method constructor <init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;Lcom/dmcbig/mediapicker/entity/Media;Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    iput-object p3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$holder:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    iget v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_12

    .line 2
    iget-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-static {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->access$000(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;->onAddMore()V

    return-void

    .line 5
    :cond_12
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-boolean v2, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSingle:Z

    if-eqz v2, :cond_23

    .line 6
    invoke-static {v1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->access$000(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;->onItemClick(Landroid/view/View;Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)V

    return-void

    .line 9
    :cond_23
    invoke-virtual {v1, v0}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->isSelect(Lcom/dmcbig/mediapicker/entity/Media;)I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-wide v4, v3, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->maxSelect:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_4a

    if-gez v0, :cond_4a

    .line 11
    invoke-static {v3}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->access$100(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 12
    iget-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-static {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->access$100(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;->onMaxed()V

    :cond_49
    return-void

    .line 16
    :cond_4a
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    iget-wide v1, v1, Lcom/dmcbig/mediapicker/entity/Media;->size:J

    iget-wide v4, v3, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->maxSize:J

    cmp-long v6, v1, v4

    if-lez v6, :cond_80

    .line 17
    iget-object p1, v3, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_MSG_SIZE_LIMIT:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-wide v1, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->maxSize:J

    invoke-static {v1, v2}, Lcom/dmcbig/mediapicker/utils/FileUtils;->fileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    return-void

    .line 19
    :cond_80
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$holder:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->mask_view:Landroid/view/View;

    if-ltz v0, :cond_88

    const/4 v2, 0x4

    goto :goto_89

    :cond_88
    const/4 v2, 0x0

    :goto_89
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$holder:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->check_image:Landroid/widget/ImageView;

    if-ltz v0, :cond_99

    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v0, v0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_UNSELECTED:I

    goto :goto_9f

    :cond_99
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v0, v0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_DRAWABLE_BNT_SELECTED:I

    :goto_9f
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    invoke-virtual {v0, v1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->setSelectMedias(Lcom/dmcbig/mediapicker/entity/Media;)V

    .line 22
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-static {v0}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->access$000(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;)Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    iget-object v2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$1;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v2, v2, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->selectMedias:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1, v2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;->onItemClick(Landroid/view/View;Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)V

    return-void
.end method

###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter.MyViewHolder (com.dmcbig.mediapicker.adapter.MediaGridAdapter$MyViewHolder)
.class public Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public check_image:Landroid/widget/ImageView;

.field public gif_info:Landroid/widget/RelativeLayout;

.field public mask_view:Landroid/view/View;

.field public media_image:Landroid/widget/ImageView;

.field public textView_size:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

.field public video_info:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;Landroid/view/View;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->this$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_MEDIA_IMAGE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->media_image:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_CHECK_IMAGE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->check_image:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_MASK_VIEW:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->mask_view:Landroid/view/View;

    .line 6
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_VIDEO_INFO:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->video_info:Landroid/widget/RelativeLayout;

    .line 7
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_GIF_INFO:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->gif_info:Landroid/widget/RelativeLayout;

    .line 8
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_TEXTVIEW_SIZE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;->textView_size:Landroid/widget/TextView;

    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getItemWidth()I

    move-result p1

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter.OnPickerSelectMaxListener (com.dmcbig.mediapicker.adapter.MediaGridAdapter$OnPickerSelectMaxListener)
.class public interface abstract Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPickerSelectMaxListener"
.end annotation


# virtual methods
.method public abstract onMaxed()V
.end method

###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter.OnRecyclerViewItemClickListener (com.dmcbig.mediapicker.adapter.MediaGridAdapter$OnRecyclerViewItemClickListener)
.class public interface abstract Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRecyclerViewItemClickListener"
.end annotation


# virtual methods
.method public abstract onAddMore()V
.end method

.method public abstract onItemClick(Landroid/view/View;Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter$$ExternalSyntheticLambda1 (com.dmcbig.mediapicker.adapter.MediaGridAdapter$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Lcom/dmcbig/mediapicker/entity/Media;

.field public final synthetic f$3:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;Landroid/net/Uri;Lcom/dmcbig/mediapicker/entity/Media;Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/dmcbig/mediapicker/entity/Media;

    iput-object p4, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;->f$3:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/dmcbig/mediapicker/entity/Media;

    iget-object v3, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda1;->f$3:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->lambda$onBindViewHolder$1$com-dmcbig-mediapicker-adapter-MediaGridAdapter(Landroid/net/Uri;Lcom/dmcbig/mediapicker/entity/Media;Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;)V

    return-void
.end method

###### Class com.dmcbig.mediapicker.adapter.MediaGridAdapter$$ExternalSyntheticLambda2 (com.dmcbig.mediapicker.adapter.MediaGridAdapter$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->lambda$onBindViewHolder$0(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$MyViewHolder;Landroid/graphics/Bitmap;)V

    return-void
.end method
