###### Class uts.sdk.modules.DCloudUniPrompt.TouchInterceptorListener (uts.sdk.modules.DCloudUniPrompt.TouchInterceptorListener)
.class public Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R+\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00038V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005\u00a8\u0006\u0011"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;",
        "Landroid/view/View$OnTouchListener;",
        "interceptor",
        "",
        "<init>",
        "(Z)V",
        "<set-?>",
        "getInterceptor",
        "()Z",
        "setInterceptor",
        "interceptor$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "onTouch",
        "v",
        "Landroid/view/View;",
        "event",
        "Landroid/view/MotionEvent;",
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
.field private final interceptor$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "interceptor"

    const-string v3, "getInterceptor()Z"

    const-class v4, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;->interceptor$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 389
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;->setInterceptor(Z)V

    return-void
.end method


# virtual methods
.method public getInterceptor()Z
    .registers 4

    .line 387
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;->interceptor$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;->getInterceptor()Z

    move-result p1

    return p1
.end method

.method public setInterceptor(Z)V
    .registers 5

    .line 387
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;->interceptor$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniPrompt/TouchInterceptorListener;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
