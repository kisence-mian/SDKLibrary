.class Lcom/sigmob/sdk/base/common/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/common/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/a/c$a;

.field final synthetic b:Lcom/sigmob/sdk/base/common/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/common/a/c$a;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e$1;->b:Lcom/sigmob/sdk/base/common/e;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/e$1;->a:Lcom/sigmob/sdk/common/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$1;->a:Lcom/sigmob/sdk/common/a/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/common/a/c$a;->onFailed(Ljava/lang/Throwable;)V

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e$1;->b:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/common/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e$1;->b:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/e;->b(Lcom/sigmob/sdk/base/common/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequest_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e$1;->b:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/e;->c(Lcom/sigmob/sdk/base/common/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " insert success! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$1;->a:Lcom/sigmob/sdk/common/a/c$a;

    if-eqz v0, :cond_49

    invoke-interface {v0}, Lcom/sigmob/sdk/common/a/c$a;->onSuccess()V

    :cond_49
    return-void
.end method
