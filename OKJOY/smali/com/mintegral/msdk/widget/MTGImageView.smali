.class public Lcom/mintegral/msdk/widget/MTGImageView;
.super Landroid/widget/ImageView;
.source "MTGImageView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGImageView;->a:Landroid/graphics/Bitmap;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGImageView;->a:Landroid/graphics/Bitmap;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGImageView;->a:Landroid/graphics/Bitmap;

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/widget/MTGImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/mintegral/msdk/widget/MTGImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 44
    const-string v0, "mtg-widget-imageview"

    const-string v1, "onDraw bitmap recycled"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Lcom/mintegral/msdk/widget/MTGImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1053
    invoke-virtual {p0}, Lcom/mintegral/msdk/widget/MTGImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/widget/MTGImageView;->b:Ljava/lang/String;

    new-instance v2, Lcom/mintegral/msdk/widget/MTGImageView$1;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/widget/MTGImageView$1;-><init>(Lcom/mintegral/msdk/widget/MTGImageView;)V

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 49
    :cond_2b
    :goto_2b
    return-void

    .line 47
    :cond_2c
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_2b
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 68
    iput-object p1, p0, Lcom/mintegral/msdk/widget/MTGImageView;->a:Landroid/graphics/Bitmap;

    .line 69
    if-eqz p1, :cond_18

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 73
    iput-object v1, p0, Lcom/mintegral/msdk/widget/MTGImageView;->a:Landroid/graphics/Bitmap;

    .line 74
    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    const-string v0, "mtg-widget-imageview"

    const-string v1, "setImageBitmap recycled"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_17
    return-void

    .line 78
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_17
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mintegral/msdk/widget/MTGImageView;->b:Ljava/lang/String;

    .line 39
    return-void
.end method
