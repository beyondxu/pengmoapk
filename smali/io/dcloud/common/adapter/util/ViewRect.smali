###### Class io.dcloud.common.adapter.util.ViewRect (io.dcloud.common.adapter.util.ViewRect)
.class public Lio/dcloud/common/adapter/util/ViewRect;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field public static final DEFAULT_MARGIN:I = 0x0

.field public static DOCK_BOTTOM:B = 0x6t

.field public static DOCK_LEFT:B = 0x3t

.field public static DOCK_RIGHT:B = 0x4t

.field public static DOCK_TOP:B = 0x5t

.field public static POSITION_ABSOLUTE:B = 0x1t

.field public static POSITION_DOCK:B = 0x2t

.field public static POSITION_STATIC:B


# instance fields
.field public allowUpdate:Z

.field public anim_left:I

.field public anim_top:I

.field public bottom:I

.field private doUpdate:Z

.field public height:I

.field public isNotHeightFullScreen:Z

.field public isStatusbar:Z

.field public isStatusbarDodifyHeight:Z

.field public left:I

.field private mDock:B

.field private mFrameParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

.field public mJsonViewOption:Lorg/json/JSONObject;

.field private mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

.field private mPosition:B

.field private mRelViewRectDockSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/adapter/util/ViewRect;",
            ">;"
        }
    .end annotation
.end field

.field public mStatusbarColor:Ljava/lang/String;

.field public mWebviewScale:F

.field public margin:Ljava/lang/String;

.field public right:I

.field public top:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    .line 10
    iput-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mFrameParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    .line 12
    iput-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mRelViewRectDockSet:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/adapter/util/ViewRect;->margin:Ljava/lang/String;

    .line 19
    iput-boolean v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    .line 30
    sget-byte v1, Lio/dcloud/common/adapter/util/ViewRect;->POSITION_STATIC:B

    iput-byte v1, p0, Lio/dcloud/common/adapter/util/ViewRect;->mPosition:B

    .line 31
    sget-byte v1, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_TOP:B

    iput-byte v1, p0, Lio/dcloud/common/adapter/util/ViewRect;->mDock:B

    .line 33
    const-string/jumbo v1, "{}"

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    .line 35
    iput-boolean v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbarDodifyHeight:Z

    .line 37
    iput-boolean v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->isNotHeightFullScreen:Z

    .line 38
    iput-boolean v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->doUpdate:Z

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->allowUpdate:Z

    return-void
.end method

.method public static layoutDockViewRect(Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;)V
    .registers 3

    const/4 v0, 0x1

    .line 95
    invoke-static {p0, p1, v0}, Lio/dcloud/common/adapter/util/ViewRect;->layoutDockViewRect(Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;Z)V

    return-void
.end method

.method public static layoutDockViewRect(Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;Z)V
    .registers 16

    .line 1
    iget-object v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    .line 2
    iget-object v1, p1, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    .line 3
    const-string v2, "position"

    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14c

    .line 5
    const-string v3, "absolute"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 6
    sget-byte p0, Lio/dcloud/common/adapter/util/ViewRect;->POSITION_ABSOLUTE:B

    iput-byte p0, p1, Lio/dcloud/common/adapter/util/ViewRect;->mPosition:B

    return-void

    .line 7
    :cond_1d
    const-string v3, "dock"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13f

    .line 8
    sget-byte v2, Lio/dcloud/common/adapter/util/ViewRect;->POSITION_DOCK:B

    iput-byte v2, p1, Lio/dcloud/common/adapter/util/ViewRect;->mPosition:B

    .line 15
    invoke-static {v1, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "top"

    const-string v5, "left"

    if-nez v3, :cond_67

    .line 17
    const-string v3, "bottom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 18
    sget-byte v2, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_BOTTOM:B

    iput-byte v2, p1, Lio/dcloud/common/adapter/util/ViewRect;->mDock:B

    goto :goto_67

    .line 19
    :cond_45
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 20
    sget-byte v2, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_TOP:B

    iput-byte v2, p1, Lio/dcloud/common/adapter/util/ViewRect;->mDock:B

    goto :goto_67

    .line 21
    :cond_50
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 22
    sget-byte v2, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_LEFT:B

    iput-byte v2, p1, Lio/dcloud/common/adapter/util/ViewRect;->mDock:B

    goto :goto_67

    .line 23
    :cond_5b
    const-string v3, "right"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 24
    sget-byte v2, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_RIGHT:B

    iput-byte v2, p1, Lio/dcloud/common/adapter/util/ViewRect;->mDock:B

    .line 29
    :cond_67
    :goto_67
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    const-string/jumbo v4, "width"

    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    const-string v5, "height"

    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    .line 34
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    .line 35
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    .line 36
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8

    .line 37
    iget v9, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v10, p0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v11, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    invoke-static {v4, v9, v10, v11}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    iput v4, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 38
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v9, p0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v10, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    invoke-static {v1, v4, v9, v10}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    iput v1, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 40
    iget v4, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-gez v4, :cond_ac

    iget-object v4, p1, Lio/dcloud/common/adapter/util/ViewRect;->mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    iget v4, v4, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    :cond_ac
    iput v4, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-gez v1, :cond_b4

    .line 41
    iget-object v1, p1, Lio/dcloud/common/adapter/util/ViewRect;->mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    iget v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    :cond_b4
    iput v1, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 43
    iget v1, p0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v4, p0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v9, p0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v10, p0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 46
    iget v11, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v12, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    invoke-static {v2, v11, v4, v12}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    .line 47
    iget v11, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v12, p0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    invoke-static {v3, v11, v12, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    .line 48
    iget-byte v3, p1, Lio/dcloud/common/adapter/util/ViewRect;->mDock:B

    sget-byte v11, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_BOTTOM:B

    if-ne v3, v11, :cond_f2

    if-nez v6, :cond_e7

    if-nez v8, :cond_db

    goto :goto_e7

    .line 53
    :cond_db
    iget v3, p0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    sub-int v3, v0, v3

    iput v3, p0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 54
    iget v3, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sub-int/2addr v3, v0

    iput v3, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    goto :goto_130

    .line 55
    :cond_e7
    :goto_e7
    iget v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v3, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sub-int/2addr v0, v3

    iput v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 56
    iget v3, p0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    add-int/2addr v0, v3

    goto :goto_130

    .line 61
    :cond_f2
    sget-byte v6, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_RIGHT:B

    if-ne v3, v6, :cond_112

    if-nez v5, :cond_107

    if-nez v7, :cond_fb

    goto :goto_107

    .line 66
    :cond_fb
    iget v3, p0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    sub-int v3, v2, v3

    iput v3, p0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 67
    iget v3, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    sub-int/2addr v3, v2

    iput v3, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    goto :goto_130

    .line 68
    :cond_107
    :goto_107
    iget v2, p0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v3, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 69
    iget v3, p0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    add-int/2addr v2, v3

    goto :goto_130

    .line 74
    :cond_112
    sget-byte v5, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_LEFT:B

    const/4 v6, 0x0

    if-ne v3, v5, :cond_122

    .line 77
    iget v2, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iput v2, p0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 78
    iget v3, p0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    sub-int/2addr v3, v2

    iput v3, p0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v2, 0x0

    goto :goto_130

    .line 79
    :cond_122
    sget-byte v5, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_TOP:B

    if-ne v3, v5, :cond_130

    .line 82
    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iput v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 83
    iget v3, p0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sub-int/2addr v3, v0

    iput v3, p0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    const/4 v0, 0x0

    :cond_130
    :goto_130
    if-nez p2, :cond_13a

    .line 86
    iput v4, p0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 87
    iput v1, p0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 88
    iput v9, p0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 89
    iput v10, p0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 91
    :cond_13a
    iput v2, p1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 92
    iput v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    return-void

    .line 93
    :cond_13f
    const-string/jumbo p0, "static"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14c

    .line 94
    sget-byte p0, Lio/dcloud/common/adapter/util/ViewRect;->POSITION_STATIC:B

    iput-byte p0, p1, Lio/dcloud/common/adapter/util/ViewRect;->mPosition:B

    :cond_14c
    return-void
.end method

.method private layoutWithRelViewRect()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mRelViewRectDockSet:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    goto :goto_18

    .line 2
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lio/dcloud/common/adapter/util/ViewRect;

    .line 3
    invoke-static {p0, v3}, Lio/dcloud/common/adapter/util/ViewRect;->layoutDockViewRect(Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;)V

    goto :goto_a

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public checkValueIsPercentage(Ljava/lang/String;IIZZ)V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p4, :cond_3b

    .line 2
    :cond_a
    iget-object p4, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p4
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_47

    const-string v0, "%"

    if-nez p4, :cond_20

    :try_start_14
    iget-object p4, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    if-gez p4, :cond_22

    :cond_20
    if-eqz p5, :cond_3c

    :cond_22
    if-lez p3, :cond_3b

    .line 5
    iget-object p4, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p2, p2, 0x64

    div-int/2addr p2, p3

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3b
    return-void

    .line 9
    :cond_3c
    iget-object p3, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    int-to-float p2, p2

    iget p4, p0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    div-float/2addr p2, p4

    float-to-double p4, p2

    invoke-virtual {p3, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public commitUpdate2JSONObject()V
    .registers 2

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, v0}, Lio/dcloud/common/adapter/util/ViewRect;->commitUpdate2JSONObject(ZZ)V

    return-void
.end method

.method public commitUpdate2JSONObject(ZZ)V
    .registers 15

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mFrameParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    if-eqz v0, :cond_7

    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    goto :goto_b

    :cond_7
    iget-object v1, p0, Lio/dcloud/common/adapter/util/ViewRect;->mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    iget v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    :goto_b
    move v5, v1

    if-eqz v0, :cond_f

    goto :goto_11

    .line 2
    :cond_f
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    :goto_11
    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move v9, v0

    .line 3
    iget v4, p0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    const-string v3, "left"

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 4
    iget v8, v2, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    move v11, v7

    const-string/jumbo v7, "top"

    move v10, v6

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    move v6, v10

    move v7, v11

    .line 5
    iget v4, v2, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const-string/jumbo v3, "width"

    invoke-virtual/range {v2 .. v7}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 6
    iget v8, v2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    const-string v7, "height"

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    move v6, v10

    move v7, v11

    .line 7
    iget v4, v2, Lio/dcloud/common/adapter/util/ViewRect;->right:I

    const-string v3, "right"

    invoke-virtual/range {v2 .. v7}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 8
    iget v8, v2, Lio/dcloud/common/adapter/util/ViewRect;->bottom:I

    const-string v7, "bottom"

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public delRelViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mRelViewRectDockSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public getParentViewRect()Lio/dcloud/common/adapter/util/ViewRect;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    return-object v0
.end method

.method public hasHeightAbsolutevalue()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    const-string v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 6
    :cond_23
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    const-string v2, "bottom"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    const-string/jumbo v2, "top"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    return v1

    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method public hasRectChanged(Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;)Z
    .registers 5

    .line 1
    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v1, p2, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    if-ne v0, v1, :cond_1b

    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v1, p2, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    if-ne v0, v1, :cond_1b

    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v1, p2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v0, v1, :cond_1b

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget p2, p2, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-eq p1, p2, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public isBottomAbsolute()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    if-eqz v0, :cond_e

    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isHeightAbsolute()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 4
    :cond_6
    const-string v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v2, "100%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    return v1

    :cond_26
    return v3

    .line 9
    :cond_27
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    const-string v4, "bottom"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    const-string/jumbo v4, "top"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return v1

    .line 11
    :cond_3d
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    :cond_4a
    return v3
.end method

.method public onScreenChanged()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;)Z

    return-void
.end method

.method public onScreenChanged(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, p1, p2}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    return-void
.end method

.method public putRelViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mRelViewRectDockSet:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mRelViewRectDockSet:Ljava/util/ArrayList;

    .line 2
    :cond_b
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mRelViewRectDockSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFrameParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/ViewRect;->mFrameParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    return-void
.end method

.method public setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/ViewRect;->mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    return-void
.end method

.method public setUpdateAction(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/util/ViewRect;->doUpdate:Z

    return-void
.end method

.method public updateViewData(Lio/dcloud/common/adapter/util/ViewRect;)V
    .registers 3

    .line 91
    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    iput v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    .line 92
    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iput v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 93
    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iput v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 94
    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iput v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 95
    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iput v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 96
    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->right:I

    iput v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->right:I

    .line 97
    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->bottom:I

    iput v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->bottom:I

    .line 98
    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;)Z

    return-void
.end method

.method public updateViewData(Lorg/json/JSONObject;)Z
    .registers 4

    .line 99
    iget-object v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_6
    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 103
    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 104
    invoke-virtual {p0, p1, v1, v0}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    move-result p1

    return p1
.end method

.method public updateViewData(Lorg/json/JSONObject;II)Z
    .registers 5

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;IIF)Z

    move-result p1

    return p1
.end method

.method public updateViewData(Lorg/json/JSONObject;IIF)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 2
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    if-eqz v3, :cond_1c4

    if-eqz v3, :cond_12

    .line 5
    invoke-static {v3, v1}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    goto :goto_14

    .line 8
    :cond_12
    iput-object v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    :goto_14
    if-gez p3, :cond_1f

    .line 11
    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->bottom:I

    add-int/2addr v3, v5

    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    add-int/2addr v3, v5

    goto :goto_21

    :cond_1f
    move/from16 v3, p3

    :goto_21
    if-gez p2, :cond_26

    .line 14
    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    goto :goto_28

    :cond_26
    move/from16 v5, p2

    .line 16
    :goto_28
    iget v6, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 17
    iget v7, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 18
    iget v8, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 19
    iget v9, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 21
    const-string/jumbo v10, "statusbar"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_56

    sget-boolean v11, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    if-eqz v11, :cond_56

    .line 22
    iput-boolean v12, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    .line 23
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_56

    .line 24
    const-string v11, "background"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_56

    .line 25
    iget-object v13, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-virtual {v10, v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    .line 29
    :cond_56
    iget-boolean v10, v0, Lio/dcloud/common/adapter/util/ViewRect;->doUpdate:Z

    const-string v11, "left"

    if-nez v10, :cond_65

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_63

    goto :goto_65

    :cond_63
    const/4 v10, 0x0

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v10, 0x1

    .line 30
    :goto_66
    iget-boolean v13, v0, Lio/dcloud/common/adapter/util/ViewRect;->doUpdate:Z

    const-string v14, "right"

    if-nez v13, :cond_75

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_73

    goto :goto_75

    :cond_73
    const/4 v13, 0x0

    goto :goto_76

    :cond_75
    :goto_75
    const/4 v13, 0x1

    .line 31
    :goto_76
    iget-boolean v15, v0, Lio/dcloud/common/adapter/util/ViewRect;->doUpdate:Z

    const-string/jumbo v12, "top"

    if-nez v15, :cond_86

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_84

    goto :goto_86

    :cond_84
    const/4 v15, 0x0

    goto :goto_87

    :cond_86
    :goto_86
    const/4 v15, 0x1

    .line 32
    :goto_87
    iget-boolean v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->doUpdate:Z

    move/from16 p2, v4

    const-string/jumbo v4, "width"

    if-nez p2, :cond_9a

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_97

    goto :goto_9a

    :cond_97
    const/16 v17, 0x0

    goto :goto_9c

    :cond_9a
    :goto_9a
    const/16 v17, 0x1

    :goto_9c
    move/from16 p2, v10

    .line 33
    iget-boolean v10, v0, Lio/dcloud/common/adapter/util/ViewRect;->doUpdate:Z

    move/from16 p3, v10

    const-string v10, "height"

    if-nez p3, :cond_b0

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_ad

    goto :goto_b0

    :cond_ad
    const/16 v18, 0x0

    goto :goto_b2

    :cond_b0
    :goto_b0
    const/16 v18, 0x1

    :goto_b2
    move/from16 p3, v13

    .line 34
    iget-boolean v13, v0, Lio/dcloud/common/adapter/util/ViewRect;->doUpdate:Z

    move/from16 v19, v13

    const-string v13, "bottom"

    if-nez v19, :cond_c6

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_c3

    goto :goto_c6

    :cond_c3
    const/16 v19, 0x0

    goto :goto_c8

    :cond_c6
    :goto_c6
    const/16 v19, 0x1

    .line 36
    :goto_c8
    invoke-static {v1, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v20, v15

    const/4 v15, 0x0

    invoke-static {v11, v5, v15, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v11

    iput v11, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 37
    invoke-static {v1, v12}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3, v15, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v11

    iput v11, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 38
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v17, :cond_e8

    iget v11, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    goto :goto_e9

    :cond_e8
    move v11, v5

    :goto_e9
    invoke-static {v4, v5, v11, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    iput v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 39
    invoke-static {v1, v10}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v18, :cond_f8

    iget v10, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    goto :goto_f9

    :cond_f8
    move v10, v3

    :goto_f9
    invoke-static {v4, v3, v10, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    iput v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-eqz v18, :cond_10d

    if-ge v4, v3, :cond_10d

    const/4 v4, 0x1

    .line 41
    iput-boolean v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->isNotHeightFullScreen:Z

    .line 42
    iget-boolean v10, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v10, :cond_10e

    .line 43
    iput-boolean v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbarDodifyHeight:Z

    goto :goto_10e

    :cond_10d
    const/4 v4, 0x1

    .line 47
    :cond_10e
    :goto_10e
    invoke-static {v1, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lio/dcloud/common/adapter/util/ViewRect;->right:I

    invoke-static {v10, v5, v11, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v10

    iput v10, v0, Lio/dcloud/common/adapter/util/ViewRect;->right:I

    .line 48
    invoke-static {v1, v13}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lio/dcloud/common/adapter/util/ViewRect;->bottom:I

    invoke-static {v10, v3, v11, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    iput v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->bottom:I

    .line 51
    const-string v2, "margin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13b

    .line 52
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->margin:Ljava/lang/String;

    .line 53
    const-string v2, "auto"

    invoke-static {v2, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_13c

    :cond_13b
    const/4 v1, 0x0

    :goto_13c
    if-nez p2, :cond_163

    if-nez v17, :cond_148

    if-eqz p3, :cond_148

    .line 59
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->right:I

    neg-int v2, v2

    iput v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    goto :goto_16f

    :cond_148
    if-eqz v17, :cond_156

    if-nez p3, :cond_156

    if-eqz v1, :cond_156

    .line 61
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    goto :goto_16f

    :cond_156
    if-eqz v17, :cond_16f

    if-eqz p3, :cond_16f

    .line 63
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    sub-int/2addr v5, v2

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->right:I

    sub-int/2addr v5, v2

    iput v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    goto :goto_16f

    :cond_163
    if-nez v17, :cond_16f

    if-eqz p3, :cond_16f

    .line 67
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    sub-int/2addr v5, v2

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->right:I

    sub-int/2addr v5, v2

    iput v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    :cond_16f
    :goto_16f
    if-nez v20, :cond_196

    if-nez v18, :cond_17b

    if-eqz v19, :cond_17b

    .line 74
    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->bottom:I

    neg-int v1, v1

    iput v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    goto :goto_1a2

    :cond_17b
    if-eqz v18, :cond_189

    if-nez v19, :cond_189

    if-eqz v1, :cond_189

    .line 76
    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    goto :goto_1a2

    :cond_189
    if-eqz v18, :cond_1a2

    if-eqz v19, :cond_1a2

    .line 78
    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sub-int/2addr v3, v1

    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->bottom:I

    sub-int/2addr v3, v1

    iput v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    goto :goto_1a2

    :cond_196
    if-nez v18, :cond_1a2

    if-eqz v19, :cond_1a2

    .line 82
    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    sub-int/2addr v3, v1

    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->bottom:I

    sub-int/2addr v3, v1

    iput v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 86
    :cond_1a2
    :goto_1a2
    invoke-direct {v0}, Lio/dcloud/common/adapter/util/ViewRect;->layoutWithRelViewRect()V

    .line 87
    iget-object v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->mParentViewRect:Lio/dcloud/common/adapter/util/ViewRect;

    const/4 v15, 0x0

    invoke-static {v1, v0, v15}, Lio/dcloud/common/adapter/util/ViewRect;->layoutDockViewRect(Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;Z)V

    .line 88
    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    if-ne v6, v1, :cond_1bd

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    if-ne v7, v2, :cond_1bd

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v9, v2, :cond_1bd

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-eq v8, v2, :cond_1bc

    goto :goto_1bd

    :cond_1bc
    const/4 v4, 0x0

    .line 89
    :cond_1bd
    :goto_1bd
    iput v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    .line 90
    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iput v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    return v4

    :cond_1c4
    const/16 v16, 0x0

    return v16
.end method
