.class Lcom/sigmob/sdk/base/views/CompanionAdsWidget$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$4;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/k$c;Z)V
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$4;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {p2}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$4;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->c(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$4;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->d(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CompanionAdsWidget$4;->a:Lcom/sigmob/sdk/base/views/CompanionAdsWidget;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/CompanionAdsWidget;->e(Lcom/sigmob/sdk/base/views/CompanionAdsWidget;)V

    :cond_2a
    return-void
.end method

.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 2

    return-void
.end method
