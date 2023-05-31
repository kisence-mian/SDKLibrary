.class Lcom/sigmob/sdk/base/common/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/j;->insertToDB(Lcom/sigmob/sdk/base/a/m;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/a/m;

.field final synthetic b:Lcom/sigmob/sdk/base/common/j;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/j;Lcom/sigmob/sdk/base/a/m;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/j$1;->b:Lcom/sigmob/sdk/base/common/j;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/j$1;->a:Lcom/sigmob/sdk/base/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j$1;->a:Lcom/sigmob/sdk/base/a/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j$1;->a:Lcom/sigmob/sdk/base/a/m;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/a/m;->onFailed(Ljava/lang/Throwable;)V

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j$1;->b:Lcom/sigmob/sdk/base/common/j;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/j;->a(Lcom/sigmob/sdk/base/common/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j$1;->b:Lcom/sigmob/sdk/base/common/j;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/j;->b(Lcom/sigmob/sdk/base/common/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequest_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j$1;->b:Lcom/sigmob/sdk/base/common/j;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/j;->c(Lcom/sigmob/sdk/base/common/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " insert success! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j$1;->a:Lcom/sigmob/sdk/base/a/m;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j$1;->a:Lcom/sigmob/sdk/base/a/m;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/a/m;->onSuccess()V

    :cond_4b
    return-void
.end method
