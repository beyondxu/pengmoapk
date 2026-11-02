###### Class pl.droidsonroids.gif.GifTextView (pl.droidsonroids.gif.GifTextView)
.class public Lpl/droidsonroids/gif/GifTextView;
.super Landroid/widget/TextView;
.source "GifTextView.java"


# instance fields
.field private viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 44
    invoke-direct {p0, p2, p1, p1}, Lpl/droidsonroids/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 58
    invoke-direct {p0, p2, p3, p1}, Lpl/droidsonroids/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    invoke-direct {p0, p2, p3, p4}, Lpl/droidsonroids/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private applyGifViewAttributes()V
    .registers 7

    .line 117
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget v0, v0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    if-gez v0, :cond_7

    return-void

    .line 120
    :cond_7
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1c

    aget-object v4, v0, v3

    .line 121
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget v5, v5, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    invoke-static {v5, v4}, Lpl/droidsonroids/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 123
    :cond_1c
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v1, v0

    :goto_21
    if-ge v2, v1, :cond_2f

    aget-object v3, v0, v2

    .line 124
    iget-object v4, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget v4, v4, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    invoke-static {v4, v3}, Lpl/droidsonroids/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 126
    :cond_2f
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget v0, v0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 134
    :cond_4
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_20

    sget-object v2, Lpl/droidsonroids/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 138
    :try_start_1a
    new-instance v1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v1, v0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1f} :catch_20

    return-object v1

    .line 143
    :catch_20
    :cond_20
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .registers 13

    if-eqz p1, :cond_71

    .line 86
    const-string v0, "drawableLeft"

    const-string v1, "http://schemas.android.com/apk/res/android"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    const-string v3, "drawableTop"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 88
    const-string v4, "drawableRight"

    invoke-interface {p1, v1, v4, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 89
    const-string v5, "drawableBottom"

    invoke-interface {p1, v1, v5, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 90
    const-string v6, "drawableStart"

    invoke-interface {p1, v1, v6, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 91
    const-string v7, "drawableEnd"

    invoke-interface {p1, v1, v7, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 93
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getLayoutDirection()I

    move-result v8

    if-nez v8, :cond_4f

    if-nez v6, :cond_4a

    goto :goto_4b

    :cond_4a
    move-object v0, v6

    :goto_4b
    if-nez v7, :cond_57

    move-object v7, v4

    goto :goto_57

    :cond_4f
    if-nez v6, :cond_52

    goto :goto_53

    :cond_52
    move-object v4, v6

    :goto_53
    if-nez v7, :cond_56

    move-object v7, v0

    :cond_56
    move-object v0, v4

    .line 108
    :cond_57
    :goto_57
    invoke-virtual {p0, v0, v3, v7, v5}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    const-string v0, "background"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    new-instance v0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {v0, p0, p1, p2, p3}, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    .line 111
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifTextView;->applyGifViewAttributes()V

    .line 113
    :cond_71
    new-instance p1, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {p1}, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    return-void
.end method

.method private setCompoundDrawablesVisible(Z)V
    .registers 3

    .line 209
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lpl/droidsonroids/gif/GifTextView;->setDrawablesVisible([Landroid/graphics/drawable/Drawable;Z)V

    .line 210
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lpl/droidsonroids/gif/GifTextView;->setDrawablesVisible([Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private static setDrawablesVisible([Landroid/graphics/drawable/Drawable;Z)V
    .registers 6

    .line 77
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_f

    aget-object v3, p0, v2

    if-eqz v3, :cond_c

    .line 79
    invoke-virtual {v3, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 193
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesVisible(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 199
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesVisible(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    .line 173
    instance-of v0, p1, Lpl/droidsonroids/gif/GifViewSavedState;

    if-nez v0, :cond_8

    .line 174
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 177
    :cond_8
    check-cast p1, Lpl/droidsonroids/gif/GifViewSavedState;

    .line 178
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 180
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 181
    aget-object v2, v0, v1

    invoke-virtual {p1, v2, v1}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x1

    .line 182
    aget-object v3, v0, v2

    invoke-virtual {p1, v3, v2}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x2

    .line 183
    aget-object v3, v0, v2

    invoke-virtual {p1, v3, v2}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    const/4 v3, 0x3

    .line 184
    aget-object v0, v0, v3

    invoke-virtual {p1, v0, v3}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 185
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    aget-object v1, v0, v1

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 187
    aget-object v0, v0, v2

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 188
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    const/4 v0, 0x7

    .line 158
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 159
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget-boolean v1, v1, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    if-eqz v1, :cond_28

    .line 160
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 161
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x4

    .line 164
    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    .line 165
    aget-object v1, v1, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    .line 166
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    :cond_28
    new-instance v1, Lpl/droidsonroids/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lpl/droidsonroids/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public setBackgroundResource(I)V
    .registers 2

    .line 205
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 5

    .line 153
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p3}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p4}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 5

    .line 148
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p3}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p4}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFreezesAnimation(Z)V
    .registers 3

    .line 220
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iput-boolean p1, v0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    return-void
.end method
