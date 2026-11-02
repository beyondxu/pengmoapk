###### Class uts.sdk.modules.DCloudUniGetDeviceInfo.CheckResult (uts.sdk.modules.DCloudUniGetDeviceInfo.CheckResult)
.class public Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0016\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R+\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00038V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;",
        "",
        "result",
        "",
        "value",
        "",
        "<init>",
        "(ILjava/lang/String;)V",
        "<set-?>",
        "getResult",
        "()I",
        "setResult",
        "(I)V",
        "result$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "getValue",
        "()Ljava/lang/String;",
        "setValue",
        "(Ljava/lang/String;)V",
        "uni-getDeviceInfo_release"
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
.field private final result$delegate:Lkotlin/properties/ReadWriteProperty;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "result"

    const-string v3, "getResult()I"

    const-class v4, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;->result$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 35
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;->setResult(I)V

    .line 36
    invoke-virtual {p0, p2}, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResult()I
    .registers 4

    .line 32
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;->result$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(I)V
    .registers 5

    .line 32
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;->result$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetDeviceInfo/CheckResult;->value:Ljava/lang/String;

    return-void
.end method
