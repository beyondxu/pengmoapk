###### Class com.taobao.weex.bridge.WXJSObject (com.taobao.weex.bridge.WXJSObject)
.class public Lcom/taobao/weex/bridge/WXJSObject;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field public static final JSON:I = 0x3

.field public static final NUMBER:I = 0x1

.field public static final String:I = 0x2

.field public static final WSON:I = 0x4


# instance fields
.field public data:Ljava/lang/Object;

.field public key:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 3
    iput-object p2, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 6
    iput-object p2, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/taobao/weex/bridge/WXJSObject;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-nez p1, :cond_d

    .line 11
    iput v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 12
    const-string p1, ""

    iput-object p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    return-void

    .line 16
    :cond_d
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    .line 17
    instance-of v1, p1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 18
    iput v2, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 19
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    return-void

    .line 20
    :cond_25
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_2c

    .line 21
    iput v2, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    return-void

    .line 22
    :cond_2c
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_41

    .line 23
    iput v2, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 24
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    return-void

    .line 25
    :cond_41
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 26
    iput v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    return-void

    .line 27
    :cond_48
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_55

    const/4 v0, 0x3

    .line 28
    iput v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 29
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    :cond_55
    return-void
.end method
