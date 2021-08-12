.class Lcom/kwad/sdk/core/g/d$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic b:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

.field final synthetic c:Lcom/kwad/sdk/core/g/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/core/g/d$b;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$9;->c:Lcom/kwad/sdk/core/g/d;

    iput-object p2, p0, Lcom/kwad/sdk/core/g/d$9;->a:Lcom/kwad/sdk/core/g/d$b;

    iput-object p3, p0, Lcom/kwad/sdk/core/g/d$9;->b:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$9;->a:Lcom/kwad/sdk/core/g/d$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/g/d$b;->a(Lcom/kwad/sdk/core/g/d$b;Z)Z

    const-string v0, "AdRequestManager"

    const-string v1, "loadSplashAd mTimeOutRunnable timeOut"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$9;->b:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    sget-object v1, Lcom/kwad/sdk/core/network/f;->e:Lcom/kwad/sdk/core/network/f;

    iget v1, v1, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v2, Lcom/kwad/sdk/core/network/f;->e:Lcom/kwad/sdk/core/network/f;

    iget-object v2, v2, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;->onError(ILjava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/kwad/sdk/core/report/e;->a(I)V

    return-void
.end method
