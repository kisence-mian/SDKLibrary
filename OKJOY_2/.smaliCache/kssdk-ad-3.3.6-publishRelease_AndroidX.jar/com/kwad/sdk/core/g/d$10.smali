.class Lcom/kwad/sdk/core/g/d$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/g/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/d;->loadSplashScreenAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/g/d$b;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

.field final synthetic d:Lcom/kwad/sdk/api/KsScene;

.field final synthetic e:Lcom/kwad/sdk/core/g/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/core/g/d$b;Ljava/lang/Runnable;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsScene;)V
    .registers 6

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$10;->e:Lcom/kwad/sdk/core/g/d;

    iput-object p2, p0, Lcom/kwad/sdk/core/g/d$10;->a:Lcom/kwad/sdk/core/g/d$b;

    iput-object p3, p0, Lcom/kwad/sdk/core/g/d$10;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/kwad/sdk/core/g/d$10;->c:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    iput-object p5, p0, Lcom/kwad/sdk/core/g/d$10;->d:Lcom/kwad/sdk/api/KsScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$10;->a:Lcom/kwad/sdk/core/g/d$b;

    invoke-static {v0}, Lcom/kwad/sdk/core/g/d$b;->a(Lcom/kwad/sdk/core/g/d$b;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadSplashAd onError isTimeOut return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "code:%s__msg:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdRequestManager"

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/g/d$10;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/g/d$10$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/core/g/d$10$1;-><init>(Lcom/kwad/sdk/core/g/d$10;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .registers 9

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "loadSplashAd isTimeOut return "

    const-string v3, "AdRequestManager"

    if-lez v0, :cond_cf

    new-instance v0, Lcom/kwad/sdk/splashscreen/a;

    iget-object v4, p0, Lcom/kwad/sdk/core/g/d$10;->d:Lcom/kwad/sdk/api/KsScene;

    invoke-direct {v0, v4, p1}, Lcom/kwad/sdk/splashscreen/a;-><init>(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/core/response/model/AdResultData;)V

    invoke-static {}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b()Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSplashAd onSuccess "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-eqz v4, :cond_60

    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$10;->a:Lcom/kwad/sdk/core/g/d$b;

    invoke-static {p1}, Lcom/kwad/sdk/core/g/d$b;->a(Lcom/kwad/sdk/core/g/d$b;)Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-static {v3, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_41
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/kwad/sdk/core/g/d$10;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/kwad/sdk/core/g/d$10$2;

    invoke-direct {v1, p0, v0}, Lcom/kwad/sdk/core/g/d$10$2;-><init>(Lcom/kwad/sdk/core/g/d$10;Lcom/kwad/sdk/api/KsSplashScreenAd;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "loadSplashAd cache returned"

    invoke-static {v3, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/kwad/sdk/core/report/e;->a(I)V

    goto/16 :goto_f2

    :cond_60
    invoke-static {}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b()Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v1, "loadSplashAd image returned"

    invoke-static {v3, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b()Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)I

    move-result p1

    iget-object v1, p0, Lcom/kwad/sdk/core/g/d$10;->a:Lcom/kwad/sdk/core/g/d$b;

    invoke-static {v1}, Lcom/kwad/sdk/core/g/d$b;->a(Lcom/kwad/sdk/core/g/d$b;)Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-static {v3, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_83
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/g/d$10;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-lez p1, :cond_9f

    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/kwad/sdk/core/g/d$10$3;

    invoke-direct {v1, p0, v0}, Lcom/kwad/sdk/core/g/d$10$3;-><init>(Lcom/kwad/sdk/core/g/d$10;Lcom/kwad/sdk/api/KsSplashScreenAd;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/kwad/sdk/core/report/e;->a(I)V

    goto :goto_f2

    :cond_9f
    sget-object p1, Lcom/kwad/sdk/core/network/f;->f:Lcom/kwad/sdk/core/network/f;

    iget p1, p1, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v0, Lcom/kwad/sdk/core/network/f;->f:Lcom/kwad/sdk/core/network/f;

    iget-object v0, v0, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/g/d$10;->a(ILjava/lang/String;)V

    goto :goto_f2

    :cond_ab
    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$10;->a:Lcom/kwad/sdk/core/g/d$b;

    invoke-static {p1}, Lcom/kwad/sdk/core/g/d$b;->a(Lcom/kwad/sdk/core/g/d$b;)Z

    move-result p1

    if-eqz p1, :cond_b7

    invoke-static {v3, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b7
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$10;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/kwad/sdk/core/network/f;->d:Lcom/kwad/sdk/core/network/f;

    iget p1, p1, Lcom/kwad/sdk/core/network/f;->k:I

    const-string v0, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u7f13\u5b58\u672a\u547d\u4e2d"

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/g/d$10;->a(ILjava/lang/String;)V

    const-string p1, "loadSplashAd no cache returned"

    invoke-static {v3, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ef

    :cond_cf
    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$10;->a:Lcom/kwad/sdk/core/g/d$b;

    invoke-static {p1}, Lcom/kwad/sdk/core/g/d$b;->a(Lcom/kwad/sdk/core/g/d$b;)Z

    move-result p1

    if-eqz p1, :cond_db

    invoke-static {v3, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_db
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$10;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    iget p1, p1, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v0, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    iget-object v0, v0, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/g/d$10;->a(ILjava/lang/String;)V

    :goto_ef
    invoke-static {v1}, Lcom/kwad/sdk/core/report/e;->a(I)V

    :goto_f2
    return-void
.end method
