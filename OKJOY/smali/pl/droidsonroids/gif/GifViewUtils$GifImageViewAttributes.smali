.class Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;
.super Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifImageViewAttributes"
.end annotation


# instance fields
.field final mBackgroundResId:I

.field final mSourceResId:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;-><init>()V

    .line 129
    iput v0, p0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->mSourceResId:I

    .line 130
    iput v0, p0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->mBackgroundResId:I

    .line 131
    return-void
.end method

.method constructor <init>(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 123
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->mSourceResId:I

    .line 124
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifViewUtils$GifImageViewAttributes;->mBackgroundResId:I

    .line 125
    return-void
.end method

.method private static getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I
    .registers 8
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "isSrc"    # Z

    .prologue
    const/4 v3, 0x0

    .line 134
    const-string v4, "http://schemas.android.com/apk/res/android"

    if-eqz p2, :cond_24

    const-string v2, "src"

    :goto_7
    invoke-interface {p1, v4, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, "resId":I
    if-lez v0, :cond_27

    .line 136
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "resourceTypeName":Ljava/lang/String;
    sget-object v2, Lpl/droidsonroids/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p0, p2, v0}, Lpl/droidsonroids/gif/GifViewUtils;->setResource(Landroid/widget/ImageView;ZI)Z

    move-result v2

    if-nez v2, :cond_27

    .line 141
    .end local v0    # "resId":I
    .end local v1    # "resourceTypeName":Ljava/lang/String;
    :goto_23
    return v0

    .line 134
    :cond_24
    const-string v2, "background"

    goto :goto_7

    .restart local v0    # "resId":I
    :cond_27
    move v0, v3

    .line 141
    goto :goto_23
.end method
