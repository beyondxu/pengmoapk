###### Class com.dmcbig.mediapicker.PickerActivity (com.dmcbig.mediapicker.PickerActivity)
.class public Lcom/dmcbig/mediapicker/PickerActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lcom/dmcbig/mediapicker/data/DataCallback;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field argsIntent:Landroid/content/Intent;

.field category_btn:Landroid/widget/Button;

.field cropOptions:Ljava/lang/String;

.field docPath:Ljava/lang/String;

.field done:Landroid/widget/Button;

.field doneBtnText:Ljava/lang/String;

.field fullImage:Landroid/widget/ImageView;

.field gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

.field isAddImageFor34:Z

.field isCompress:Z

.field private isFinish:Z

.field isSingle:Z

.field private mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

.field mFolderPopupWindow:Landroid/widget/ListPopupWindow;

.field preview:Landroid/widget/Button;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field selectIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    .line 12
    const-string v1, ""

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    .line 14
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 15
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isAddImageFor34:Z

    .line 390
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isFinish:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dmcbig/mediapicker/PickerActivity;)Lcom/dmcbig/mediapicker/adapter/FolderAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkoutNeedShowPermissionBar()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1e

    .line 2
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    goto :goto_1e

    .line 4
    :cond_10
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->restartMediaData()V

    .line 5
    sget v0, Lio/dcloud/base/R$id;->dcloud_gallery_permission_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private compress(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_101

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_101

    .line 3
    :cond_e
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->selectIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 4
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->selectIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmcbig/mediapicker/entity/Media;

    .line 5
    iget-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "/"

    if-nez v1, :cond_b3

    iget-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b3

    iget-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string v4, ".jpeg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_b3

    .line 13
    :cond_3f
    iget v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->mediaType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_af

    .line 15
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->docPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ".mp4"

    if-eqz v1, :cond_6c

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dmcbig/mediapicker/PickerActivity;->docPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "compress_video_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_89

    .line 18
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dmcbig/mediapicker/PickerActivity;->docPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/compress_video_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    :goto_89
    :try_start_89
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 23
    invoke-static {}, Landroidtranscoder/MediaTranscoder;->getInstance()Landroidtranscoder/MediaTranscoder;

    move-result-object v2

    iget-object v3, v0, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    const/4 v4, 0x2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6}, Landroidtranscoder/format/MediaFormatStrategyPresets;->createAndroid720pStrategy(ID)Landroidtranscoder/format/MediaFormatStrategy;

    move-result-object v4

    new-instance v5, Lcom/dmcbig/mediapicker/PickerActivity$4;

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/dmcbig/mediapicker/PickerActivity$4;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;Lcom/dmcbig/mediapicker/entity/Media;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Landroidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/lang/String;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_aa} :catch_ab

    return-void

    .line 46
    :catch_ab
    invoke-direct {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V

    return-void

    .line 49
    :cond_af
    invoke-direct {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V

    return-void

    .line 50
    :cond_b3
    :goto_b3
    iget-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 51
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dmcbig/mediapicker/PickerActivity;->docPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uniapp_temp/compressed/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v3, v0, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v3, v1, v2, p0}, Lio/dcloud/common/util/CompressUtil;->compressImage(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f5

    .line 55
    iput-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    .line 56
    :cond_f5
    invoke-direct {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V

    return-void

    .line 96
    :cond_f9
    new-instance v0, Lcom/dmcbig/mediapicker/PickerActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity$5;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_101
    :goto_101
    return-void
.end method

.method private getOtherArgs()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "done_button_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_17
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 6
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_PREVIEW:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 9
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3c
    return-void
.end method

.method private permissionBar()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_2f

    .line 2
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 3
    :goto_13
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isAddImageFor34:Z

    if-eqz v0, :cond_2e

    .line 5
    sget v0, Lio/dcloud/base/R$id;->dcloud_gallery_permission_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    sget v0, Lio/dcloud/base/R$id;->dcloud_gallery_permission_bar_permission_request:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2e
    return-void

    .line 21
    :cond_2f
    sget v0, Lio/dcloud/base/R$id;->dcloud_gallery_permission_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setTopAndBottomBarColor()V
    .registers 4

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    const-string v1, "#21282C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_a

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/common/util/language/LanguageUtil;->updateContextLanguageAfterO(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method createAdapter()V
    .registers 11

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    sget v1, Lcom/dmcbig/mediapicker/PickerConfig;->GridSpanCount:I

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/dmcbig/mediapicker/adapter/SpacingDecoration;

    sget v2, Lcom/dmcbig/mediapicker/PickerConfig;->GridSpanCount:I

    sget v3, Lcom/dmcbig/mediapicker/PickerConfig;->GridSpace:I

    invoke-direct {v1, v2, v3}, Lcom/dmcbig/mediapicker/adapter/SpacingDecoration;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 5
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v2, "default_list"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 9
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v2, "select_max_cb_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v4, "max_select_count"

    const v6, 0x7fffffff

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 11
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v4, "max_select_size"

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v2, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 12
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v4, "single_select"

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    .line 13
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 14
    iput-boolean v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    .line 16
    :cond_62
    iget-boolean v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    if-eqz v1, :cond_77

    .line 17
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    if-eqz v1, :cond_6f

    const/16 v2, 0x8

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_6f
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->preview:Landroid/widget/Button;

    if-eqz v1, :cond_77

    const/4 v2, 0x4

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_77
    new-instance v2, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    iget-boolean v9, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    move-object v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/ArrayList;IJZ)V

    iput-object v2, v4, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    .line 26
    new-instance v1, Lcom/dmcbig/mediapicker/PickerActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/dmcbig/mediapicker/PickerActivity$1;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->setOnMaxListener(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;)V

    .line 34
    iget-object v0, v4, Lcom/dmcbig/mediapicker/PickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v4, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method createFolderAdapter()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    invoke-direct {v1, v0, p0}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    .line 3
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    .line 4
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-static {p0}, Lcom/dmcbig/mediapicker/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 7
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_FOOTER:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 9
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/dmcbig/mediapicker/PickerActivity$2;

    invoke-direct {v1, p0}, Lcom/dmcbig/mediapicker/PickerActivity$2;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isFinish:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_6
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public done(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isFinish:Z

    .line 2
    iget-boolean v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    if-eqz v1, :cond_36

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_36

    .line 3
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 4
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    sget v0, Lio/dcloud/base/R$id;->loading:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->selectIterator:Ljava/util/Iterator;

    .line 7
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10
    const-string v1, "select_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const p1, 0x12faa62

    .line 11
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public fitAndroid16WindowInsets(Landroid/app/Activity;Landroid/view/View;I)V
    .registers 5

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x24

    if-lt p1, v0, :cond_12

    sget p1, Lio/dcloud/common/adapter/util/AndroidResources;->sAppTargetSdkVersion:I

    if-lt p1, v0, :cond_12

    .line 2
    new-instance p1, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;I)V

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_12
    return-void
.end method

.method getMediaData()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "select_mode"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1a

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/dmcbig/mediapicker/data/MediaLoader;

    invoke-direct {v3, p0, p0}, Lcom/dmcbig/mediapicker/data/MediaLoader;-><init>(Landroid/content/Context;Lcom/dmcbig/mediapicker/data/DataCallback;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void

    :cond_1a
    const/16 v2, 0x64

    if-ne v0, v2, :cond_2b

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/dmcbig/mediapicker/data/ImageLoader;

    invoke-direct {v3, p0, p0}, Lcom/dmcbig/mediapicker/data/ImageLoader;-><init>(Landroid/content/Context;Lcom/dmcbig/mediapicker/data/DataCallback;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void

    :cond_2b
    const/16 v2, 0x66

    if-ne v0, v2, :cond_3b

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/dmcbig/mediapicker/data/VideoLoader;

    invoke-direct {v3, p0, p0}, Lcom/dmcbig/mediapicker/data/VideoLoader;-><init>(Landroid/content/Context;Lcom/dmcbig/mediapicker/data/DataCallback;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_3b
    return-void
.end method

.method synthetic lambda$done$2$com-dmcbig-mediapicker-PickerActivity(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V

    return-void
.end method

.method synthetic lambda$fitAndroid16WindowInsets$0$com-dmcbig-mediapicker-PickerActivity(ILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 7

    .line 0
    if-eqz p3, :cond_23

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_20

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_20

    .line 5
    :cond_14
    invoke-virtual {p3, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 6
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {p2, v0, v2, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object p3

    .line 7
    :cond_20
    :goto_20
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_23
    return-object p3
.end method

.method synthetic lambda$permissionBar$1$com-dmcbig-mediapicker-PickerActivity(Landroid/view/View;)V
    .registers 5

    .line 1
    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    sget v0, Lcom/dmcbig/mediapicker/PickerConfig;->PERMISSION_REQUEST:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 7
    :cond_23
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/dmcbig/mediapicker/PickerConfig;->PERMISSION_REQUEST:I

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_29

    .line 2
    const-string v6, "FULL_IMAGE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 3
    iget-object v7, v0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    iget-object v6, v0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v6

    xor-int/2addr v6, v4

    iput-boolean v6, v0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    :cond_29
    const/16 v6, 0xc8

    if-ne v1, v6, :cond_8e

    .line 7
    const-string v1, "select_result"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v4, 0x7c6

    if-ne v2, v4, :cond_85

    .line 9
    const-string v2, "original_preview_index"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 10
    const-string v4, "edited_preview_data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v2, :cond_7c

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7c

    if-eqz v3, :cond_7c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7c

    .line 12
    iget-object v4, v0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v4}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getMedias()Ljava/util/ArrayList;

    move-result-object v4

    .line 13
    :goto_59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_77

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_74

    .line 16
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dmcbig/mediapicker/entity/Media;

    invoke-virtual {v4, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 18
    :cond_77
    iget-object v2, v0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v2, v4}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 20
    :cond_7c
    iget-object v2, v0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v2, v1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->updateSelectAdapter(Ljava/util/ArrayList;)V

    .line 21
    invoke-virtual {v0}, Lcom/dmcbig/mediapicker/PickerActivity;->setButtonText()V

    return-void

    :cond_85
    const v3, 0x12faa62

    if-ne v2, v3, :cond_112

    .line 23
    invoke-virtual {v0, v1}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    return-void

    :cond_8e
    const/16 v6, 0xc9

    const/4 v7, -0x1

    if-ne v1, v6, :cond_e5

    if-ne v2, v7, :cond_112

    if-eqz v3, :cond_112

    .line 28
    const-string v1, "IMAGE_INDEX"

    invoke-virtual {v3, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 29
    const-string v2, "_id"

    invoke-virtual {v3, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_112

    if-ne v1, v7, :cond_a8

    goto :goto_112

    .line 32
    :cond_a8
    const-string v1, "PATH"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 33
    const-string v1, "_display_name"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v1, "date_added"

    invoke-virtual {v3, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 35
    const-string v1, "mime_type"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 36
    const-string v1, "_size"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 37
    const-string v1, "PARENTPATH"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 38
    new-instance v8, Lcom/dmcbig/mediapicker/entity/Media;

    move/from16 v16, v2

    invoke-direct/range {v8 .. v17}, Lcom/dmcbig/mediapicker/entity/Media;-><init>(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v0, v1}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    return-void

    .line 43
    :cond_e5
    sget v2, Lcom/dmcbig/mediapicker/PickerConfig;->PERMISSION_SETTING:I

    if-ne v1, v2, :cond_112

    .line 44
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_f3

    const/4 v1, 0x1

    goto :goto_f4

    :cond_f3
    const/4 v1, 0x0

    .line 45
    :goto_f4
    const-string v2, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_fd

    goto :goto_fe

    :cond_fd
    const/4 v4, 0x0

    :goto_fe
    if-eqz v1, :cond_10d

    if-eqz v4, :cond_10d

    .line 47
    iget-object v1, v0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    return-void

    .line 51
    :cond_10d
    iput-boolean v1, v0, Lcom/dmcbig/mediapicker/PickerActivity;->isAddImageFor34:Z

    .line 52
    invoke-direct {v0}, Lcom/dmcbig/mediapicker/PickerActivity;->checkoutNeedShowPermissionBar()V

    :cond_112
    :goto_112
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BTN_BACK:I

    if-ne p1, v0, :cond_11

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    return-void

    .line 5
    :cond_11
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_CATEGORY_BTN:I

    if-ne p1, v0, :cond_29

    .line 6
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 7
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void

    .line 9
    :cond_23
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    return-void

    .line 11
    :cond_29
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_DONE:I

    if-ne p1, v0, :cond_37

    .line 12
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    return-void

    .line 13
    :cond_37
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_PREVIEW:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_e4

    .line 14
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_57

    .line 15
    sget p1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_SELECT_NULL:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    return-void

    .line 18
    :cond_57
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fb

    .line 19
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/dmcbig/mediapicker/PreviewActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const v3, 0x7fffffff

    const-string v4, "max_select_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object v2

    .line 22
    const-string v3, "pre_raw_List"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_88
    if-ge v0, v4, :cond_a0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    check-cast v5, Lcom/dmcbig/mediapicker/entity/Media;

    .line 25
    iget-object v6, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v6, v5}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getItemIndex(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 27
    :cond_a0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v2, "FULL_IMAGE"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v2, "size_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v0, "original_preview_index"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 30
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v2, "image_editable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "done_button_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const/16 v1, 0x65

    const-string v2, "select_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0xc8

    .line 33
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 35
    :cond_e4
    sget v0, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    if-ne p1, v0, :cond_fb

    .line 36
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 37
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    :cond_fb
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_e

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/Window;Z)V

    .line 3
    :cond_e
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    .line 6
    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_LAYOUT_PICKER_MAIN:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_RECYCLER_VIEW:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BTN_BACK:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->setTitleBar()V

    .line 10
    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_DONE:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    .line 11
    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_CATEGORY_BTN:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->category_btn:Landroid/widget/Button;

    .line 12
    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_PREVIEW:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->preview:Landroid/widget/Button;

    .line 13
    sget v1, Lio/dcloud/base/R$id;->check_origin_image:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    .line 14
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v3, "select_mode"

    const/16 v4, 0x65

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x66

    const/16 v4, 0x8

    if-ne v1, v3, :cond_88

    .line 16
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v3, "COMPRESSED"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 17
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    xor-int/2addr v1, p1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 18
    sget v1, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e9

    .line 20
    :cond_88
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_de

    const-string v3, "size_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 21
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d2

    .line 23
    const-string v3, "original"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b8

    const-string v5, "compressed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 24
    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 25
    sget v1, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e9

    .line 26
    :cond_b8
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 27
    iput-boolean v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 28
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_e9

    .line 30
    :cond_c6
    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 31
    sget v1, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e9

    .line 34
    :cond_d2
    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 35
    sget v1, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e9

    .line 38
    :cond_de
    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isCompress:Z

    .line 39
    sget v1, Lio/dcloud/base/R$id;->check_origin_image_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :goto_e9
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->category_btn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->preview:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    if-eqz v1, :cond_ff

    .line 46
    invoke-virtual {p0, p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->setFullScreen(Landroid/app/Activity;Z)V

    .line 48
    :cond_ff
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "image_crop"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "doc_path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->docPath:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->permissionBar()V

    .line 52
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->createAdapter()V

    .line 53
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->createFolderAdapter()V

    .line 54
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->getMediaData()V

    .line 55
    invoke-direct {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->getOtherArgs()V

    .line 57
    invoke-direct {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->setTopAndBottomBarColor()V

    const/16 p1, 0x24

    if-lt v0, p1, :cond_154

    .line 58
    sget v0, Lio/dcloud/common/adapter/util/AndroidResources;->sAppTargetSdkVersion:I

    if-lt v0, p1, :cond_154

    .line 59
    sget p1, Lio/dcloud/base/R$id;->top:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Landroidx/core/view/ViewCompat$$ExternalSyntheticApiModelOutline0;->m$1()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/dmcbig/mediapicker/utils/ScreenUtils;->fitAndroid16WindowInsets(Landroid/app/Activity;Landroid/view/View;I)V

    .line 60
    sget p1, Lio/dcloud/base/R$id;->footer:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Landroidx/core/view/ViewCompat$$ExternalSyntheticApiModelOutline0;->m$2()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/dmcbig/mediapicker/utils/ScreenUtils;->fitAndroid16WindowInsets(Landroid/app/Activity;Landroid/view/View;I)V

    .line 61
    sget p1, Lio/dcloud/base/R$id;->root:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Landroidx/core/view/ViewCompat$$ExternalSyntheticApiModelOutline0;->m$2()I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/dmcbig/mediapicker/PickerActivity;->fitAndroid16WindowInsets(Landroid/app/Activity;Landroid/view/View;I)V

    :cond_154
    return-void
.end method

.method public onData(Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Folder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isAddImageFor34:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_3b

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/dmcbig/mediapicker/entity/Folder;

    .line 3
    new-instance v4, Lcom/dmcbig/mediapicker/entity/Media;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lio/dcloud/base/R$drawable;->dcloud_gallery_permission_add:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v12, -0x80000000

    const-string v13, ""

    const-string v6, ""

    const-wide/16 v7, 0x0

    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/dmcbig/mediapicker/entity/Media;-><init>(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;)V

    .line 4
    invoke-virtual {v3, v4}, Lcom/dmcbig/mediapicker/entity/Folder;->addMedias(Lcom/dmcbig/mediapicker/entity/Media;)V

    goto :goto_a

    .line 7
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->setView(Ljava/util/ArrayList;)V

    .line 8
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->category_btn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dmcbig/mediapicker/entity/Folder;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/entity/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    invoke-virtual {v0, p1}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/RuningAcitvityUtil;->removeRuningActivity(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 3
    :goto_11
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 p2, 0x0

    :goto_1b
    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    .line 5
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderAdapter:Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    return-void

    .line 10
    :cond_2a
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->restartMediaData()V

    if-nez p1, :cond_3c

    .line 13
    iput-boolean p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->isAddImageFor34:Z

    .line 14
    sget p1, Lio/dcloud/base/R$id;->dcloud_gallery_permission_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3c
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 3
    invoke-static {p0}, Lio/dcloud/common/util/RuningAcitvityUtil;->putRuningActivity(Landroid/app/Activity;)V

    return-void
.end method

.method restartMediaData()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "select_mode"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1a

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/dmcbig/mediapicker/data/MediaLoader;

    invoke-direct {v3, p0, p0}, Lcom/dmcbig/mediapicker/data/MediaLoader;-><init>(Landroid/content/Context;Lcom/dmcbig/mediapicker/data/DataCallback;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void

    :cond_1a
    const/16 v2, 0x64

    if-ne v0, v2, :cond_2b

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/dmcbig/mediapicker/data/ImageLoader;

    invoke-direct {v3, p0, p0}, Lcom/dmcbig/mediapicker/data/ImageLoader;-><init>(Landroid/content/Context;Lcom/dmcbig/mediapicker/data/DataCallback;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void

    :cond_2b
    const/16 v2, 0x66

    if-ne v0, v2, :cond_3b

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/dmcbig/mediapicker/data/VideoLoader;

    invoke-direct {v3, p0, p0}, Lcom/dmcbig/mediapicker/data/VideoLoader;-><init>(Landroid/content/Context;Lcom/dmcbig/mediapicker/data/DataCallback;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_3b
    return-void
.end method

.method setButtonText()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "max_select_count"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3
    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_DONE:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    :cond_1b
    const-string v1, ")"

    const-string v3, "("

    if-ne v0, v2, :cond_48

    .line 6
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v4}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_76

    .line 8
    :cond_48
    iget-object v2, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dmcbig/mediapicker/PickerActivity;->doneBtnText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v5}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_76
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 11
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->preview:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_PREVIEW:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v3}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 13
    :cond_a9
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->done:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_PREVIEW:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setFullScreen(Landroid/app/Activity;Z)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p2, :cond_14

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 4
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .line 7
    :cond_14
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 8
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setTitleBar()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string v1, "select_mode"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1e

    .line 3
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BAR_TITLE:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_SELECT_TITLE:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1e
    const/16 v1, 0x64

    if-ne v0, v1, :cond_34

    .line 5
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BAR_TITLE:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_SELECT_IMAGE_TITLE:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_34
    const/16 v1, 0x66

    if-ne v0, v1, :cond_49

    .line 7
    sget v0, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_ID_BAR_TITLE:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/dmcbig/mediapicker/MediaPickerR;->MP_STRING_SELECT_VIDEO_TITLE:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_49
    return-void
.end method

.method setView(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Folder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dmcbig/mediapicker/entity/Folder;

    invoke-virtual {p1}, Lcom/dmcbig/mediapicker/entity/Folder;->getMedias()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 2
    invoke-virtual {p0}, Lcom/dmcbig/mediapicker/PickerActivity;->setButtonText()V

    .line 3
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    new-instance v0, Lcom/dmcbig/mediapicker/PickerActivity$3;

    invoke-direct {v0, p0}, Lcom/dmcbig/mediapicker/PickerActivity$3;-><init>(Lcom/dmcbig/mediapicker/PickerActivity;)V

    invoke-virtual {p1, v0}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->setOnItemClickListener(Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;)V

    return-void
.end method

###### Class com.dmcbig.mediapicker.PickerActivity.AnonymousClass1 (com.dmcbig.mediapicker.PickerActivity$1)
.class Lcom/dmcbig/mediapicker/PickerActivity$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnPickerSelectMaxListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmcbig/mediapicker/PickerActivity;->createAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmcbig/mediapicker/PickerActivity;

.field final synthetic val$callBackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$1;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$1;->val$callBackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$1;->val$callBackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$1;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity$1;->val$callBackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->onMaxed(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

###### Class com.dmcbig.mediapicker.PickerActivity.AnonymousClass2 (com.dmcbig.mediapicker.PickerActivity$2)
.class Lcom/dmcbig/mediapicker/PickerActivity$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmcbig/mediapicker/PickerActivity;->createFolderAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmcbig/mediapicker/PickerActivity;


# direct methods
.method constructor <init>(Lcom/dmcbig/mediapicker/PickerActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$2;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$2;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    invoke-static {p1}, Lcom/dmcbig/mediapicker/PickerActivity;->access$000(Lcom/dmcbig/mediapicker/PickerActivity;)Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->setSelectIndex(I)V

    .line 2
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$2;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object p2, p1, Lcom/dmcbig/mediapicker/PickerActivity;->category_btn:Landroid/widget/Button;

    invoke-static {p1}, Lcom/dmcbig/mediapicker/PickerActivity;->access$000(Lcom/dmcbig/mediapicker/PickerActivity;)Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->getItem(I)Lcom/dmcbig/mediapicker/entity/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/dmcbig/mediapicker/entity/Folder;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$2;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object p2, p1, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-static {p1}, Lcom/dmcbig/mediapicker/PickerActivity;->access$000(Lcom/dmcbig/mediapicker/PickerActivity;)Lcom/dmcbig/mediapicker/adapter/FolderAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dmcbig/mediapicker/adapter/FolderAdapter;->getSelectMedias()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 4
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$2;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object p1, p1, Lcom/dmcbig/mediapicker/PickerActivity;->mFolderPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

###### Class com.dmcbig.mediapicker.PickerActivity.AnonymousClass3 (com.dmcbig.mediapicker.PickerActivity$3)
.class Lcom/dmcbig/mediapicker/PickerActivity$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter$OnRecyclerViewItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmcbig/mediapicker/PickerActivity;->setView(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmcbig/mediapicker/PickerActivity;


# direct methods
.method constructor <init>(Lcom/dmcbig/mediapicker/PickerActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMore()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/dmcbig/mediapicker/PickerConfig;->PERMISSION_REQUEST:I

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;Lcom/dmcbig/mediapicker/entity/Media;Ljava/util/ArrayList;)V
    .registers 6
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

    .line 1
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-boolean p3, p1, Lcom/dmcbig/mediapicker/PickerActivity;->isSingle:Z

    if-eqz p3, :cond_e9

    .line 2
    iget-object p1, p1, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 3
    iget-object p1, p2, Lcom/dmcbig/mediapicker/entity/Media;->extension:Ljava/lang/String;

    const-string p3, ".gif"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_65

    iget p1, p2, Lcom/dmcbig/mediapicker/entity/Media;->mediaType:I

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1e

    goto :goto_65

    .line 9
    :cond_1e
    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    const-class v0, Lio/dcloud/feature/gallery/imageedit/IMGEditActivity;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    iget-object p3, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object p3, p3, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {p3, p2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getItemIndex(Ljava/lang/Object;)I

    move-result p3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 12
    const-string v1, "IMAGE_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    iget p2, p2, Lcom/dmcbig/mediapicker/entity/Media;->id:I

    const-string v0, "IMAGE_MEDIA_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    const-string p2, "IMAGE_INDEX"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    iget-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object p2, p2, Lcom/dmcbig/mediapicker/PickerActivity;->cropOptions:Ljava/lang/String;

    const-string p3, "IMAGE_CROP"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    const/16 p3, 0xc9

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 17
    :cond_65
    :goto_65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    invoke-virtual {p2, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->done(Ljava/util/ArrayList;)V

    return-void

    .line 31
    :cond_73
    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    const-class v0, Lcom/dmcbig/mediapicker/PreviewActivity;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    iget-object p3, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object p3, p3, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const v0, 0x7fffffff

    const-string v1, "max_select_count"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    const-string p3, "single_select"

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object v1, v1, Lcom/dmcbig/mediapicker/PickerActivity;->gridAdapter:Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;

    invoke-virtual {v1, p2}, Lcom/dmcbig/mediapicker/adapter/MediaGridAdapter;->getItemIndex(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string p2, "pre_raw_List"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    iget-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object p2, p2, Lcom/dmcbig/mediapicker/PickerActivity;->fullImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    const-string p3, "FULL_IMAGE"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    iget-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object p2, p2, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const-string p3, "size_type"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object p2, p2, Lcom/dmcbig/mediapicker/PickerActivity;->argsIntent:Landroid/content/Intent;

    const/16 p3, 0x65

    const-string v1, "select_mode"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string p2, "original_preview_index"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 43
    iget-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$3;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    const/16 p3, 0xc8

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 46
    :cond_e9
    invoke-virtual {p1}, Lcom/dmcbig/mediapicker/PickerActivity;->setButtonText()V

    return-void
.end method

###### Class com.dmcbig.mediapicker.PickerActivity.AnonymousClass4 (com.dmcbig.mediapicker.PickerActivity$4)
.class Lcom/dmcbig/mediapicker/PickerActivity$4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroidtranscoder/MediaTranscoder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmcbig/mediapicker/PickerActivity;

.field final synthetic val$media:Lcom/dmcbig/mediapicker/entity/Media;

.field final synthetic val$outPath:Ljava/lang/String;

.field final synthetic val$selects:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/dmcbig/mediapicker/PickerActivity;Lcom/dmcbig/mediapicker/entity/Media;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    iput-object p3, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->val$outPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->val$selects:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranscodeCanceled()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->val$selects:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/dmcbig/mediapicker/PickerActivity;->access$100(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onTranscodeCompleted()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->val$media:Lcom/dmcbig/mediapicker/entity/Media;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->val$outPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->val$selects:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/dmcbig/mediapicker/PickerActivity;->access$100(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onTranscodeFailed(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$4;->val$selects:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/dmcbig/mediapicker/PickerActivity;->access$100(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onTranscodeProgress(D)V
    .registers 3

    return-void
.end method

###### Class com.dmcbig.mediapicker.PickerActivity.AnonymousClass5 (com.dmcbig.mediapicker.PickerActivity$5)
.class Lcom/dmcbig/mediapicker/PickerActivity$5;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmcbig/mediapicker/PickerActivity;->compress(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmcbig/mediapicker/PickerActivity;

.field final synthetic val$selects:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$5;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$5;->val$selects:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity$5;->val$selects:Ljava/util/ArrayList;

    const-string v2, "select_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity$5;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    const v2, 0x12faa62

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$5;->this$0:Lcom/dmcbig/mediapicker/PickerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

###### Class com.dmcbig.mediapicker.PickerActivity$$ExternalSyntheticLambda0 (com.dmcbig.mediapicker.PickerActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/dmcbig/mediapicker/PickerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/dmcbig/mediapicker/PickerActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/dmcbig/mediapicker/PickerActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/dmcbig/mediapicker/PickerActivity;

    invoke-virtual {v0, p1}, Lcom/dmcbig/mediapicker/PickerActivity;->lambda$permissionBar$1$com-dmcbig-mediapicker-PickerActivity(Landroid/view/View;)V

    return-void
.end method

###### Class com.dmcbig.mediapicker.PickerActivity$$ExternalSyntheticLambda1 (com.dmcbig.mediapicker.PickerActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dmcbig/mediapicker/PickerActivity;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/dmcbig/mediapicker/PickerActivity;Ljava/util/ArrayList;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda1;->f$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iput-object p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda1;->f$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget-object v1, p0, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/dmcbig/mediapicker/PickerActivity;->lambda$done$2$com-dmcbig-mediapicker-PickerActivity(Ljava/util/ArrayList;)V

    return-void
.end method

###### Class com.dmcbig.mediapicker.PickerActivity$$ExternalSyntheticLambda2 (com.dmcbig.mediapicker.PickerActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/dmcbig/mediapicker/PickerActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/dmcbig/mediapicker/PickerActivity;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda2;->f$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iput p2, p0, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda2;->f$0:Lcom/dmcbig/mediapicker/PickerActivity;

    iget v1, p0, Lcom/dmcbig/mediapicker/PickerActivity$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/dmcbig/mediapicker/PickerActivity;->lambda$fitAndroid16WindowInsets$0$com-dmcbig-mediapicker-PickerActivity(ILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
