###### Class io.dcloud.sdk.core.util.AOLErrorUtil (io.dcloud.sdk.core.util.AOLErrorUtil)
.class public Lio/dcloud/sdk/core/util/AOLErrorUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object v0

    if-eqz v0, :cond_f4

    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/p/r0;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_12

    goto/16 :goto_f4

    .line 7
    :cond_12
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/p/r0;->c()Landroid/content/Context;

    move-result-object v0

    const/16 v1, -0x13ec

    if-eq p0, v1, :cond_ed

    packed-switch p0, :pswitch_data_10a

    const-string v1, ""

    packed-switch p0, :pswitch_data_126

    const/16 v2, -0xfa2

    if-eq p0, v2, :cond_ea

    const/16 v2, -0xfa1

    if-eq p0, v2, :cond_e7

    const/16 v2, -0x25b

    if-eq p0, v2, :cond_e0

    packed-switch p0, :pswitch_data_13c

    packed-switch p0, :pswitch_data_146

    return-object v1

    .line 123
    :pswitch_39
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5011:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :pswitch_40
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5012:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :pswitch_47
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5013:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :pswitch_4e
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5014:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 131
    :pswitch_55
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5015:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :pswitch_5c
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5016:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :pswitch_63
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5017:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 137
    :pswitch_6a
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5018:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :pswitch_71
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5019:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 141
    :pswitch_78
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5020:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :pswitch_7f
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5021:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 145
    :pswitch_86
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5022:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8d
    return-object v1

    .line 107
    :pswitch_8e
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5001:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :pswitch_95
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5002:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :pswitch_9c
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5003:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :pswitch_a3
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5004:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :pswitch_aa
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5005:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :pswitch_b1
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5006:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :pswitch_b8
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5007:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :pswitch_bf
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5008:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :pswitch_c6
    const-string p0, "\u5e7f\u544a\u521d\u59cb\u5316\u5f02\u5e38"

    return-object p0

    .line 85
    :pswitch_c9
    const-string p0, "\u672a\u68c0\u6d4b\u5230\u624b\u673a\u5b89\u88c5\u5fae\u4fe1"

    return-object p0

    .line 87
    :pswitch_cc
    const-string p0, "\u5fae\u4fe1\u5f53\u524d\u7248\u672c\u4e0d\u652f\u6301\u8fd0\u884c\u5c0f\u7a0b\u5e8f"

    return-object p0

    .line 89
    :pswitch_cf
    const-string p0, "\u672a\u83b7\u53d6\u5230\u5e7f\u544a\u914d\u7f6e\u6570\u636e"

    return-object p0

    .line 91
    :pswitch_d2
    const-string p0, "\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    return-object p0

    .line 92
    :pswitch_d5
    const-string p0, "not support"

    return-object p0

    :pswitch_d8
    return-object v1

    .line 94
    :pswitch_d9
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_200000:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_e0
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_603:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :cond_e7
    const-string p0, "init fail"

    return-object p0

    .line 104
    :cond_ea
    const-string p0, "exception when load"

    return-object p0

    .line 147
    :cond_ed
    sget p0, Lio/dcloud/base/R$string;->dcloud_ad_error_code_5100:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_f4
    :goto_f4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_107

    .line 149
    const-string p0, "\u5e7f\u544a\u672a\u521d\u59cb\u5316\u6216\u8005\u521d\u59cb\u5316\u4fe1\u606f\u4e3a\u7a7a"

    return-object p0

    .line 151
    :cond_107
    const-string p0, "Please init first"

    return-object p0

    :pswitch_data_10a
    .packed-switch -0x139e
        :pswitch_86
        :pswitch_7f
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_63
        :pswitch_5c
        :pswitch_55
        :pswitch_4e
        :pswitch_47
        :pswitch_40
        :pswitch_39
    .end packed-switch

    :pswitch_data_126
    .packed-switch -0x1390
        :pswitch_bf
        :pswitch_b8
        :pswitch_b1
        :pswitch_aa
        :pswitch_a3
        :pswitch_9c
        :pswitch_95
        :pswitch_8e
        :pswitch_8d
    .end packed-switch

    :pswitch_data_13c
    .packed-switch 0x30d40
        :pswitch_d9
        :pswitch_d8
        :pswitch_d5
    .end packed-switch

    :pswitch_data_146
    .packed-switch -0xc73d
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
    .end packed-switch
.end method
