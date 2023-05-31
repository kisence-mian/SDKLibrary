.class Lcom/mintegral/msdk/out/LoadingActivity$1;
.super Ljava/lang/Object;
.source "LoadingActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/out/LoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/out/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/out/LoadingActivity;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mintegral/msdk/out/LoadingActivity$1;->a:Lcom/mintegral/msdk/out/LoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 48
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity$1;->a:Lcom/mintegral/msdk/out/LoadingActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/out/LoadingActivity;->a(Lcom/mintegral/msdk/out/LoadingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_30

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 38
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity$1;->a:Lcom/mintegral/msdk/out/LoadingActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/out/LoadingActivity;->a(Lcom/mintegral/msdk/out/LoadingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 39
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity$1;->a:Lcom/mintegral/msdk/out/LoadingActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/out/LoadingActivity;->a(Lcom/mintegral/msdk/out/LoadingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity$1;->a:Lcom/mintegral/msdk/out/LoadingActivity;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/out/LoadingActivity;->a(Lcom/mintegral/msdk/out/LoadingActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 43
    :cond_30
    return-void
.end method
