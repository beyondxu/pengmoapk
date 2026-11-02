###### Class com.taobao.weex.ui.action.GraphicPosition (com.taobao.weex.ui.action.GraphicPosition)
.class public Lcom/taobao/weex/ui/action/GraphicPosition;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private mBottom:F

.field private mLeft:F

.field private mRight:F

.field private mTop:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    .line 3
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    .line 4
    iput p3, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    .line 5
    iput p4, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    return-void
.end method


# virtual methods
.method public getBottom()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    return v0
.end method

.method public getLeft()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    return v0
.end method

.method public getRight()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    return v0
.end method

.method public getTop()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    return v0
.end method

.method public setBottom(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    return-void
.end method

.method public setLeft(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    return-void
.end method

.method public setRight(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    return-void
.end method

.method public setTop(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    return-void
.end method

.method public update(FFFF)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    .line 2
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    .line 3
    iput p3, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    .line 4
    iput p4, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    return-void
.end method
