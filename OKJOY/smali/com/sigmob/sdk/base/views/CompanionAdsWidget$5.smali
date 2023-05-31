.class Lcom/sigmob/sdk/base/views/CompanionAdsWidget$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$5;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/ae;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/s;Z)V
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$5;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$5;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$5;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$5;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->e(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    :cond_2a
    return-void
.end method
