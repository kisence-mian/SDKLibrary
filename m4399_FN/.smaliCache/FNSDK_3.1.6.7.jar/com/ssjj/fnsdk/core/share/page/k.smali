.class Lcom/ssjj/fnsdk/core/share/page/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SharePage;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final synthetic e:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SharePage;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/share/page/SharePageView;Lcom/ssjj/fnsdk/core/SsjjFNParams;Landroid/app/Dialog;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/k;->a:Lcom/ssjj/fnsdk/core/share/page/SharePage;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/k;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/page/k;->c:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/page/k;->d:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/share/page/k;->e:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/k;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_14

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v2, 0x2

    const-string v3, ""

    invoke-interface {v0, v2, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/k;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_14
    return-void
.end method

.method public onShare(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/k;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/k;->c:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->genShareImage()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/k;->d:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v1, "savePath"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/k;->a:Lcom/ssjj/fnsdk/core/share/page/SharePage;

    invoke-static {v2, v0}, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a(Lcom/ssjj/fnsdk/core/share/page/SharePage;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/game_share/p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4d
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/k;->a:Lcom/ssjj/fnsdk/core/share/page/SharePage;

    invoke-static {v2, v0, p1}, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a(Lcom/ssjj/fnsdk/core/share/page/SharePage;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/k;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-interface {v0, v1, v2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/k;->e:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_67
    return-void
.end method
