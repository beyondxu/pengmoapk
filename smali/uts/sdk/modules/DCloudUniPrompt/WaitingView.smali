###### Class uts.sdk.modules.DCloudUniPrompt.WaitingView (uts.sdk.modules.DCloudUniPrompt.WaitingView)
.class public Luts/sdk/modules/DCloudUniPrompt/WaitingView;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u0004\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B%\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010;\u001a\u00020<H\u0016J\u0008\u0010=\u001a\u00020<H\u0016J\u0010\u0010>\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020@H\u0016J\u0008\u0010A\u001a\u00020<H\u0016J\u0008\u0010B\u001a\u00020<H\u0016J\u0008\u0010C\u001a\u00020<H\u0016J\u0010\u0010D\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010E\u001a\u0004\u0018\u00010F2\u0006\u0010G\u001a\u00020HH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00178V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R+\u0010%\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00178V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008(\u0010$\u001a\u0004\u0008&\u0010 \"\u0004\u0008\'\u0010\"R\u001a\u0010)\u001a\u00020*X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u000e\u0010/\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000209X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/WaitingView;",
        "",
        "context",
        "Landroid/app/Activity;",
        "style",
        "Lio/dcloud/uts/UTSJSONObject;",
        "view",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/app/Activity;Lio/dcloud/uts/UTSJSONObject;Landroid/view/View;)V",
        "Lcom/alibaba/fastjson/JSONObject;",
        "waitingView",
        "Landroid/view/ViewGroup;",
        "waitingRootView",
        "Landroid/widget/LinearLayout;",
        "textView",
        "Landroid/widget/TextView;",
        "mProgressBar",
        "Landroid/widget/ProgressBar;",
        "seaparatorView",
        "mImageView",
        "Landroid/widget/ImageView;",
        "height",
        "",
        "width",
        "mask",
        "",
        "title",
        "",
        "<set-?>",
        "screenWidth",
        "getScreenWidth",
        "()I",
        "setScreenWidth",
        "(I)V",
        "screenWidth$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "ScreenHeight",
        "getScreenHeight",
        "setScreenHeight",
        "ScreenHeight$delegate",
        "density",
        "",
        "getDensity",
        "()Ljava/lang/Number;",
        "setDensity",
        "(Ljava/lang/Number;)V",
        "padding",
        "textSize",
        "loadingdDisplay",
        "loadingHeight",
        "LoadingIcon",
        "mBitmap",
        "Landroid/graphics/Bitmap;",
        "mpopWindow",
        "Landroid/widget/PopupWindow;",
        "currentHandler",
        "Landroid/os/Handler;",
        "hostView",
        "handlerArguments",
        "",
        "initView",
        "passThrough",
        "ev",
        "Landroid/view/MotionEvent;",
        "showWaiting",
        "close",
        "makeBitmap",
        "getBestScale",
        "inputStreamToArray",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
        "uni-prompt_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LoadingIcon:Ljava/lang/String;

.field private final ScreenHeight$delegate:Lkotlin/properties/ReadWriteProperty;

.field private context:Landroid/app/Activity;

.field private currentHandler:Landroid/os/Handler;

.field private density:Ljava/lang/Number;

.field private height:I

.field private hostView:Landroid/view/View;

.field private loadingHeight:Ljava/lang/Number;

.field private loadingdDisplay:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mask:Z

.field private mpopWindow:Landroid/widget/PopupWindow;

.field private padding:I

.field private final screenWidth$delegate:Lkotlin/properties/ReadWriteProperty;

.field private seaparatorView:Landroid/view/View;

.field private style:Lcom/alibaba/fastjson/JSONObject;

.field private textSize:I

.field private textView:Landroid/widget/TextView;

.field private title:Ljava/lang/String;

.field private waitingRootView:Landroid/widget/LinearLayout;

.field private waitingView:Landroid/view/ViewGroup;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "screenWidth"

    const-string v3, "getScreenWidth()I"

    const-class v4, Luts/sdk/modules/DCloudUniPrompt/WaitingView;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "ScreenHeight"

    const-string v3, "getScreenHeight()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/dcloud/uts/UTSJSONObject;Landroid/view/View;)V
    .registers 9

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 155
    iput v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->height:I

    .line 156
    iput v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->width:I

    .line 158
    const-string v1, ""

    iput-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->title:Ljava/lang/String;

    .line 159
    sget-object v2, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v2}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v2

    iput-object v2, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->screenWidth$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 160
    sget-object v2, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v2}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v2

    iput-object v2, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->ScreenHeight$delegate:Lkotlin/properties/ReadWriteProperty;

    const/4 v2, 0x0

    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    iput-object v4, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->density:Ljava/lang/Number;

    .line 164
    iput-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingdDisplay:Ljava/lang/String;

    .line 165
    check-cast v3, Ljava/lang/Number;

    iput-object v3, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingHeight:Ljava/lang/Number;

    .line 166
    iput-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->LoadingIcon:Ljava/lang/String;

    .line 172
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->context:Landroid/app/Activity;

    .line 173
    invoke-virtual {p2}, Lio/dcloud/uts/UTSJSONObject;->toJSONObject()Lcom/alibaba/fastjson/JSON;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type com.alibaba.fastjson.JSONObject"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/alibaba/fastjson/JSONObject;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->style:Lcom/alibaba/fastjson/JSONObject;

    const/4 p2, 0x0

    if-eqz p1, :cond_50

    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    goto :goto_51

    :cond_50
    move-object v1, p2

    :goto_51
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v1}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->setScreenWidth(I)V

    if-eqz p1, :cond_66

    .line 175
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    goto :goto_67

    :cond_66
    move-object v1, p2

    :goto_67
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->setScreenHeight(I)V

    if-eqz p1, :cond_7c

    .line 176
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    goto :goto_7d

    :cond_7c
    move-object v1, p2

    :goto_7d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {p0, v1}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->setDensity(Ljava/lang/Number;)V

    .line 177
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_loadingview:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingView:Landroid/view/ViewGroup;

    .line 178
    sget p2, Lio/dcloud/uts/prompt/R$id;->dcloud_pd_root:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingRootView:Landroid/widget/LinearLayout;

    .line 179
    iget-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingView:Landroid/view/ViewGroup;

    sget v1, Lio/dcloud/uts/prompt/R$id;->dcloud_pb_loading:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 180
    iget-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingView:Landroid/view/ViewGroup;

    sget v1, Lio/dcloud/uts/prompt/R$id;->dcloud_tv_loading:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->textView:Landroid/widget/TextView;

    .line 181
    iget-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingView:Landroid/view/ViewGroup;

    sget v1, Lio/dcloud/uts/prompt/R$id;->dcloud_view_seaparator:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->seaparatorView:Landroid/view/View;

    .line 182
    iget-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingView:Landroid/view/ViewGroup;

    sget v1, Lio/dcloud/uts/prompt/R$id;->dcloud_iv_loading:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mImageView:Landroid/widget/ImageView;

    .line 183
    iput-object p3, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->hostView:Landroid/view/View;

    .line 184
    iget-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 185
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->handlerArguments()V

    .line 186
    iget-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    iget p2, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->width:I

    if-lez p2, :cond_117

    .line 188
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object p3

    invoke-static {p2, p3}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 187
    :cond_117
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 192
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 193
    iget-object p2, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingRootView:Landroid/widget/LinearLayout;

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->currentHandler:Landroid/os/Handler;

    .line 195
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->initView()V

    .line 196
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->makeBitmap()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 277
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mpopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_20

    const-string v1, "null cannot be cast to non-null type android.widget.PopupWindow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 278
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->currentHandler:Landroid/os/Handler;

    new-instance v2, Luts/sdk/modules/DCloudUniPrompt/MainThreadRunnable;

    iget-object v3, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mpopWindow:Landroid/widget/PopupWindow;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Luts/sdk/modules/DCloudUniPrompt/MainThreadRunnable;-><init>(Landroid/widget/PopupWindow;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    :cond_20
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_27
    return-void
.end method

.method public getBestScale(I)I
    .registers 7

    const/4 v0, 0x2

    .line 346
    new-array v0, v0, [Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getScreenWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getScreenHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lio/dcloud/uts/Math;->min([Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v4

    invoke-static {v1, v4}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v1

    if-lez v1, :cond_58

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v0}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v1

    if-lez v1, :cond_58

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->div(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_58
    return v3
.end method

.method public getDensity()Ljava/lang/Number;
    .registers 2

    .line 161
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->density:Ljava/lang/Number;

    return-object v0
.end method

.method public getScreenHeight()I
    .registers 4

    .line 160
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->ScreenHeight$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .registers 4

    .line 159
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->screenWidth$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public handlerArguments()V
    .registers 8

    .line 199
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->style:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    if-eqz v0, :cond_23

    .line 200
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->style:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3, v2, v3}, Lio/dcloud/uts/NumberKt;->parseInt$default(Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->height:I

    .line 202
    :cond_23
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->style:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "width"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 203
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->style:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3, v2, v3}, Lio/dcloud/uts/NumberKt;->parseInt$default(Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->width:I

    .line 205
    :cond_42
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->style:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "modal"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 206
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->style:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mask:Z

    .line 208
    :cond_5f
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->style:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->title:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->style:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "loading"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c4

    .line 210
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->style:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type com.alibaba.fastjson.JSONObject"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 211
    const-string v5, "display"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingdDisplay:Ljava/lang/String;

    .line 212
    const-string v5, "icon"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a5

    .line 213
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->LoadingIcon:Ljava/lang/String;

    .line 215
    :cond_a5
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c4

    .line 216
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3, v2, v3}, Lio/dcloud/uts/NumberKt;->parseInt$default(Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingHeight:Ljava/lang/Number;

    .line 219
    :cond_c4
    const-string v0, "block"

    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingdDisplay:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 220
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 221
    :cond_d5
    const-string v0, "inline"

    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingdDisplay:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 222
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 223
    :cond_e6
    const-string v0, "none"

    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingdDisplay:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 224
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->seaparatorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_fc
    return-void
.end method

.method public initView()V
    .registers 9

    .line 229
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->textView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 231
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->title:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    if-ge v0, v3, :cond_91

    .line 234
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->textView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingRootView:Landroid/widget/LinearLayout;

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/16 v5, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v6

    invoke-static {v5, v6}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v6

    invoke-static {v1, v6}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v7

    invoke-static {v6, v7}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_d9

    .line 237
    :cond_91
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingRootView:Landroid/widget/LinearLayout;

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v7

    invoke-static {v6, v7}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v7

    invoke-static {v1, v7}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v7

    invoke-static {v5, v7}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v6, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 239
    :goto_d9
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->context:Landroid/app/Activity;

    if-eqz v0, :cond_e4

    sget v1, Lio/dcloud/uts/prompt/R$drawable;->uni_app_uni_prompt_circle_white_progress:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e5

    :cond_e4
    const/4 v0, 0x0

    :goto_e5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 240
    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingHeight:Ljava/lang/Number;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v1

    if-lez v1, :cond_11f

    .line 241
    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingHeight:Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingHeight:Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v6

    invoke-static {v5, v6}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_138

    .line 243
    :cond_11f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double v1, v1, v4

    double-to-int v1, v1

    .line 244
    iget-object v2, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    :goto_138
    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 248
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingRootView:Landroid/widget/LinearLayout;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public inputStreamToArray(Ljava/io/InputStream;)[B
    .registers 6

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    :try_start_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 355
    new-array v1, v1, [B

    .line 357
    :goto_e
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x0

    .line 359
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    .line 365
    :cond_1a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 366
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 367
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-object p1

    :catchall_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public makeBitmap()V
    .registers 8

    .line 285
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->LoadingIcon:Ljava/lang/String;

    if-eqz v0, :cond_168

    .line 287
    const-string v1, "successIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "open(...)"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    .line 288
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->context:Landroid/app/Activity;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    :cond_18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "uni-uts/uni-prompt/uni_app_toast_success.png"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v3

    goto/16 :goto_d0

    .line 289
    :cond_31
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->LoadingIcon:Ljava/lang/String;

    const-string v4, "errorIcon"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 290
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->context:Landroid/app/Activity;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    :cond_43
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "uni-uts/uni-prompt/uni_app_toast_error.png"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v3

    goto/16 :goto_d0

    .line 291
    :cond_5c
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->LoadingIcon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_168

    .line 293
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->LoadingIcon:Ljava/lang/String;

    const-string v4, "file://"

    const/4 v5, 0x2

    invoke-static {v0, v4, v2, v5, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 294
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->LoadingIcon:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v0, v4, v6}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    .line 296
    :cond_78
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    iget-object v4, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->LoadingIcon:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lio/dcloud/uts/UTSAndroid;->getResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_80
    if-eqz v0, :cond_d0

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d0

    .line 299
    const-string v4, "/android_asset/"

    invoke-static {v0, v4, v2, v5, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ba

    const/16 v4, 0xf

    .line 300
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {v0, v4, v3, v5, v3}, Lio/dcloud/uts/StringKt;->slice$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v4, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->context:Landroid/app/Activity;

    if-eqz v4, :cond_a4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    :cond_a4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v3

    goto :goto_d0

    .line 304
    :cond_ba
    :try_start_ba
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 305
    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 306
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catchall {:try_start_ba .. :try_end_ce} :catchall_cf

    goto :goto_d0

    :catchall_cf
    nop

    :cond_d0
    :goto_d0
    if-eqz v3, :cond_168

    .line 314
    array-length v0, v3

    if-nez v0, :cond_d7

    goto/16 :goto_168

    .line 317
    :cond_d7
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 318
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 319
    array-length v1, v3

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 320
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 321
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 322
    invoke-virtual {p0, v4}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getBestScale(I)I

    move-result v5

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 323
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 324
    array-length v5, v3

    invoke-static {v3, v2, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mBitmap:Landroid/graphics/Bitmap;

    .line 325
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 328
    rem-int/2addr v1, v4

    if-eqz v1, :cond_10d

    goto :goto_168

    .line 331
    :cond_10d
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "getLayoutParams(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingHeight:Ljava/lang/Number;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v1

    if-lez v1, :cond_147

    .line 334
    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingHeight:Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 335
    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->loadingHeight:Ljava/lang/Number;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->getDensity()Ljava/lang/Number;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_163

    .line 337
    :cond_147
    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 338
    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 340
    :goto_163
    iget-object v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_168
    :goto_168
    return-void
.end method

.method public passThrough(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->context:Landroid/app/Activity;

    if-nez v0, :cond_b

    const/4 p1, 0x0

    return p1

    .line 254
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDensity(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->density:Ljava/lang/Number;

    return-void
.end method

.method public setScreenHeight(I)V
    .registers 5

    .line 160
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->ScreenHeight$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setScreenWidth(I)V
    .registers 5

    .line 159
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->screenWidth$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public showWaiting()V
    .registers 7

    .line 257
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->context:Landroid/app/Activity;

    if-eqz v0, :cond_55

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_55

    .line 258
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->hostView:Landroid/view/View;

    if-nez v0, :cond_12

    goto :goto_55

    .line 263
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_22

    iget-boolean v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mask:Z

    if-eqz v0, :cond_22

    .line 264
    iput-boolean v2, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mask:Z

    const/4 v0, -0x1

    const/4 v1, -0x1

    goto :goto_24

    :cond_22
    const/4 v0, -0x2

    const/4 v1, -0x2

    .line 268
    :goto_24
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->waitingView:Landroid/view/ViewGroup;

    check-cast v4, Landroid/view/View;

    iget-boolean v5, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mask:Z

    invoke-direct {v3, v4, v0, v1, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 269
    iput-object v3, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mpopWindow:Landroid/widget/PopupWindow;

    .line 270
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->hostView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x11

    invoke-virtual {v3, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/4 v0, 0x1

    .line 271
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 272
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/WaitingDismissListener;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrompt/WaitingDismissListener;-><init>()V

    check-cast v0, Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 273
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;

    iget-boolean v1, p0, Luts/sdk/modules/DCloudUniPrompt/WaitingView;->mask:Z

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;-><init>(Z)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    :cond_55
    :goto_55
    return-void
.end method
