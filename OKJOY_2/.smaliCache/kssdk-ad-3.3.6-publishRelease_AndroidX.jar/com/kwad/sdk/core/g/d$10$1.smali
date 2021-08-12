.class Lcom/kwad/sdk/core/g/d$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/d$10;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/kwad/sdk/core/g/d$10;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/d$10;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$10$1;->c:Lcom/kwad/sdk/core/g/d$10;

    iput p2, p0, Lcom/kwad/sdk/core/g/d$10$1;->a:I

    iput-object p3, p0, Lcom/kwad/sdk/core/g/d$10$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadSplashAd onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/kwad/sdk/core/g/d$10$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/kwad/sdk/core/g/d$10$1;->b:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "code:%s__msg:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdRequestManager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$10$1;->c:Lcom/kwad/sdk/core/g/d$10;

    iget-object v0, v0, Lcom/kwad/sdk/core/g/d$10;->c:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    iget v1, p0, Lcom/kwad/sdk/core/g/d$10$1;->a:I

    iget-object v2, p0, Lcom/kwad/sdk/core/g/d$10$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;->onError(ILjava/lang/String;)V

    iget v0, p0, Lcom/kwad/sdk/core/g/d$10$1;->a:I

    sget-object v1, Lcom/kwad/sdk/core/network/f;->f:Lcom/kwad/sdk/core/network/f;

    iget v1, v1, Lcom/kwad/sdk/core/network/f;->k:I

    if-ne v0, v1, :cond_46

    invoke-static {v3}, Lcom/kwad/sdk/core/report/e;->a(I)V

    goto :goto_4a

    :cond_46
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/kwad/sdk/core/report/e;->a(I)V

    :goto_4a
    return-void
.end method
