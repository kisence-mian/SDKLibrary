.class final Lpl/droidsonroids/gif/GifViewUtils;
.super Ljava/lang/Object;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;,
        Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;
    }
.end annotation


# static fields
.field static final ANDROID_NS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field static final SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "drawable"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mipmap"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lpl/droidsonroids/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static applyLoopCount(ILandroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p0, "loopCount"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 42
    instance-of v0, p1, Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_9

    .line 43
    check-cast p1, Lpl/droidsonroids/gif/GifDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, p0}, Lpl/droidsonroids/gif/GifDrawable;->setLoopCount(I)V

    .line 45
    :cond_9
    return-void
.end method

.method static getDensityScale(Landroid/content/res/Resources;I)F
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .prologue
    .line 81
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 82
    .local v3, "value":Landroid/util/TypedValue;
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 83
    iget v1, v3, Landroid/util/TypedValue;->density:I

    .line 85
    .local v1, "resourceDensity":I
    if-nez v1, :cond_1d

    .line 86
    const/16 v0, 0xa0

    .line 92
    .local v0, "density":I
    :goto_f
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 94
    .local v2, "targetDensity":I
    if-lez v0, :cond_26

    if-lez v2, :cond_26

    .line 95
    int-to-float v4, v2

    int-to-float v5, v0

    div-float/2addr v4, v5

    .line 97
    :goto_1c
    return v4

    .line 87
    .end local v0    # "density":I
    .end local v2    # "targetDensity":I
    :cond_1d
    const v4, 0xffff

    if-eq v1, v4, :cond_24

    .line 88
    move v0, v1

    .restart local v0    # "density":I
    goto :goto_f

    .line 90
    .end local v0    # "density":I
    :cond_24
    const/4 v0, 0x0

    .restart local v0    # "density":I
    goto :goto_f

    .line 97
    .restart local v2    # "targetDensity":I
    :cond_26
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1c
.end method

.method static initImageView(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;
    .registers 7
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    .line 29
    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_20

    .line 30
    new-instance v1, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;

    invoke-direct {v1, p0, p1, p2, p3}, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;-><init>(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)V

    .line 31
    .local v1, "viewAttributes":Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;
    iget v0, v1, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->mLoopCount:I

    .line 32
    .local v0, "loopCount":I
    if-ltz v0, :cond_1f

    .line 33
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lpl/droidsonroids/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lpl/droidsonroids/gif/GifViewUtils;->applyLoopCount(ILandroid/graphics/drawable/Drawable;)V

    .line 38
    .end local v0    # "loopCount":I
    .end local v1    # "viewAttributes":Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;
    :cond_1f
    :goto_1f
    return-object v1

    :cond_20
    new-instance v1, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;

    invoke-direct {v1}, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;-><init>()V

    goto :goto_1f
.end method

.method static setGifImageUri(Landroid/widget/ImageView;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 69
    if-eqz p1, :cond_15

    .line 71
    :try_start_2
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_14

    .line 72
    const/4 v0, 0x1

    .line 77
    :goto_13
    return v0

    .line 73
    :catch_14
    move-exception v0

    .line 77
    :cond_15
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static setResource(Landroid/widget/ImageView;ZI)Z
    .registers 7
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "isSrc"    # Z
    .param p2, "resId"    # I

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 50
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_1d

    .line 52
    :try_start_6
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v0, v1, p2}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 53
    .local v0, "d":Lpl/droidsonroids/gif/GifDrawable;
    if-eqz p1, :cond_12

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :goto_10
    const/4 v2, 0x1

    .line 65
    .end local v0    # "d":Lpl/droidsonroids/gif/GifDrawable;
    :goto_11
    return v2

    .line 55
    .restart local v0    # "d":Lpl/droidsonroids/gif/GifDrawable;
    :cond_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1f

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    .line 61
    .end local v0    # "d":Lpl/droidsonroids/gif/GifDrawable;
    :catch_1c
    move-exception v2

    .line 65
    :cond_1d
    :goto_1d
    const/4 v2, 0x0

    goto :goto_11

    .line 58
    .restart local v0    # "d":Lpl/droidsonroids/gif/GifDrawable;
    :cond_1f
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_22} :catch_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_22} :catch_23

    goto :goto_10

    .line 61
    .end local v0    # "d":Lpl/droidsonroids/gif/GifDrawable;
    :catch_23
    move-exception v2

    goto :goto_1d
.end method
