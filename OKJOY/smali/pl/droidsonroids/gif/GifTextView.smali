.class public Lpl/droidsonroids/gif/GifTextView;
.super Landroid/widget/TextView;
.source "GifTextView.java"


# instance fields
.field private viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p2, v0, v0}, Lpl/droidsonroids/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lpl/droidsonroids/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    invoke-direct {p0, p2, p3, p4}, Lpl/droidsonroids/gif/GifTextView;->init(Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method private applyGifViewAttributes()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget v2, v2, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    if-gez v2, :cond_8

    .line 137
    :goto_7
    return-void

    .line 128
    :cond_8
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_e
    if-ge v2, v4, :cond_1c

    aget-object v0, v3, v2

    .line 129
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget v5, v5, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    invoke-static {v5, v0}, Lpl/droidsonroids/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 131
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_35

    .line 132
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v3, v2

    :goto_27
    if-ge v1, v3, :cond_35

    aget-object v0, v2, v1

    .line 133
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget v4, v4, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    invoke-static {v4, v0}, Lpl/droidsonroids/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 136
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_35
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget v1, v1, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method private getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "resId"    # I

    .prologue
    .line 150
    if-nez p1, :cond_4

    .line 151
    const/4 v2, 0x0

    .line 165
    :goto_3
    return-object v2

    .line 153
    :cond_4
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "resourceTypeName":Ljava/lang/String;
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_21

    sget-object v2, Lpl/droidsonroids/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 157
    :try_start_1a
    new-instance v2, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v2, v1, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1f} :catch_39

    goto :goto_3

    .line 158
    :catch_20
    move-exception v2

    .line 162
    :cond_21
    :goto_21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_34

    .line 163
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    .line 165
    :cond_34
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    .line 158
    :catch_39
    move-exception v2

    goto :goto_21
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x0

    .line 88
    if-eqz p1, :cond_7c

    .line 89
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableLeft"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 90
    .local v2, "left":Landroid/graphics/drawable/Drawable;
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableTop"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 91
    .local v5, "top":Landroid/graphics/drawable/Drawable;
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableRight"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 92
    .local v3, "right":Landroid/graphics/drawable/Drawable;
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableBottom"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    .local v0, "bottom":Landroid/graphics/drawable/Drawable;
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableStart"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 94
    .local v4, "start":Landroid/graphics/drawable/Drawable;
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "drawableEnd"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    .local v1, "end":Landroid/graphics/drawable/Drawable;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_8b

    .line 97
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_84

    .line 98
    if-nez v4, :cond_5a

    .line 99
    move-object v4, v2

    .line 101
    :cond_5a
    if-nez v1, :cond_5d

    .line 102
    move-object v1, v3

    .line 112
    :cond_5d
    :goto_5d
    invoke-virtual {p0, v4, v5, v1, v0}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {p0, v2, v5, v3, v0}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_63
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "background"

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 118
    new-instance v6, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {v6, p0, p1, p2, p3}, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    iput-object v6, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    .line 119
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifTextView;->applyGifViewAttributes()V

    .line 121
    .end local v0    # "bottom":Landroid/graphics/drawable/Drawable;
    .end local v1    # "end":Landroid/graphics/drawable/Drawable;
    .end local v2    # "left":Landroid/graphics/drawable/Drawable;
    .end local v3    # "right":Landroid/graphics/drawable/Drawable;
    .end local v4    # "start":Landroid/graphics/drawable/Drawable;
    .end local v5    # "top":Landroid/graphics/drawable/Drawable;
    :cond_7c
    new-instance v6, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {v6}, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;-><init>()V

    iput-object v6, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    .line 122
    return-void

    .line 105
    .restart local v0    # "bottom":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "end":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "left":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "right":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "start":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "top":Landroid/graphics/drawable/Drawable;
    :cond_84
    if-nez v4, :cond_87

    .line 106
    move-object v4, v3

    .line 108
    :cond_87
    if-nez v1, :cond_5d

    .line 109
    move-object v1, v2

    goto :goto_5d

    .line 115
    :cond_8b
    invoke-virtual {p0, v2, v5, v3, v0}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_63
.end method

.method private setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 142
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :goto_9
    return-void

    .line 144
    :cond_a
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method private setCompoundDrawablesVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 237
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lpl/droidsonroids/gif/GifTextView;->setDrawablesVisible([Landroid/graphics/drawable/Drawable;Z)V

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    .line 239
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lpl/droidsonroids/gif/GifTextView;->setDrawablesVisible([Landroid/graphics/drawable/Drawable;Z)V

    .line 241
    :cond_14
    return-void
.end method

.method private static setDrawablesVisible([Landroid/graphics/drawable/Drawable;Z)V
    .registers 6
    .param p0, "drawables"    # [Landroid/graphics/drawable/Drawable;
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 80
    array-length v3, p0

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_f

    aget-object v0, p0, v1

    .line 81
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_c

    .line 82
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 80
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 85
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_f
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 222
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesVisible(Z)V

    .line 223
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 227
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesVisible(Z)V

    .line 229
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 10
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 199
    instance-of v3, p1, Lpl/droidsonroids/gif/GifViewSavedState;

    if-nez v3, :cond_c

    .line 200
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 217
    :goto_b
    return-void

    :cond_c
    move-object v2, p1

    .line 203
    check-cast v2, Lpl/droidsonroids/gif/GifViewSavedState;

    .line 204
    .local v2, "ss":Lpl/droidsonroids/gif/GifViewSavedState;
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 206
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v5

    invoke-virtual {v2, v3, v5}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 208
    aget-object v3, v0, v4

    invoke-virtual {v2, v3, v4}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 209
    aget-object v3, v0, v6

    invoke-virtual {v2, v3, v6}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 210
    aget-object v3, v0, v7

    invoke-virtual {v2, v3, v7}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 211
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_44

    .line 212
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 213
    .local v1, "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v1, v5

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 214
    aget-object v3, v1, v6

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 216
    .end local v1    # "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    :cond_44
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_b
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 182
    const/4 v3, 0x7

    new-array v2, v3, [Landroid/graphics/drawable/Drawable;

    .line 183
    .local v2, "savedDrawables":[Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iget-boolean v3, v3, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    if-eqz v3, :cond_2e

    .line 184
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_27

    .line 188
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 189
    .local v1, "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x4

    aget-object v4, v1, v5

    aput-object v4, v2, v3

    .line 190
    const/4 v3, 0x5

    const/4 v4, 0x2

    aget-object v4, v1, v4

    aput-object v4, v2, v3

    .line 192
    .end local v1    # "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    :cond_27
    const/4 v3, 0x6

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 194
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_2e
    new-instance v3, Lpl/droidsonroids/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lpl/droidsonroids/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method public setBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 234
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x11
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p3}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p4}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 178
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p3}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p4}, Lpl/droidsonroids/gif/GifTextView;->getGifOrDefaultDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method

.method public setFreezesAnimation(Z)V
    .registers 3
    .param p1, "freezesAnimation"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    iput-boolean p1, v0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    .line 251
    return-void
.end method
