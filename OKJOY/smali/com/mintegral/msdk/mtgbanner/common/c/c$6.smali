.class final Lcom/mintegral/msdk/mtgbanner/common/c/c$6;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 2

    .prologue
    .line 419
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$6;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 433
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$6;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    const-string v1, "banner show failed because banner default view is exception"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 422
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$6;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->l(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 423
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$6;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->l(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 425
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$6;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->m(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Z

    .line 426
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$6;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    .line 427
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$6;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    .line 428
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$6;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    .line 429
    return-void
.end method
