.class Lcom/sigmob/sdk/base/common/b/a$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/b/a$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/b/a$2;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/b/a$2;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/b/a$2$1;->a:Lcom/sigmob/sdk/base/common/b/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert Point db fail seqId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/b/a$2$1;->a:Lcom/sigmob/sdk/base/common/b/a$2;

    iget-object v1, v1, Lcom/sigmob/sdk/base/common/b/a$2;->g:Lcom/sigmob/sdk/base/common/b/a;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/b/a;->d(Lcom/sigmob/sdk/base/common/b/a;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert Point success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/b/a$2$1;->a:Lcom/sigmob/sdk/base/common/b/a$2;

    iget-object v1, v1, Lcom/sigmob/sdk/base/common/b/a$2;->g:Lcom/sigmob/sdk/base/common/b/a;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/b/a;->d(Lcom/sigmob/sdk/base/common/b/a;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method
