.class Lcom/kwad/sdk/core/request/b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/request/b$a;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/kwad/sdk/core/request/b$a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/request/b$a;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/request/b$a$a;->c:Lcom/kwad/sdk/core/request/b$a;

    iput p2, p0, Lcom/kwad/sdk/core/request/b$a$a;->a:I

    iput-object p3, p0, Lcom/kwad/sdk/core/request/b$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFullScreenVideoAd onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/kwad/sdk/core/request/b$a$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/kwad/sdk/core/request/b$a$a;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "code:%s__msg:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdRequestManager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/request/b$a$a;->c:Lcom/kwad/sdk/core/request/b$a;

    iget-object v0, v0, Lcom/kwad/sdk/core/request/b$a;->a:Lcom/kwad/sdk/export/i/IAdRequestManager$FullScreenVideoAdListener;

    iget v1, p0, Lcom/kwad/sdk/core/request/b$a$a;->a:I

    iget-object v2, p0, Lcom/kwad/sdk/core/request/b$a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/export/i/IAdRequestManager$FullScreenVideoAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method
