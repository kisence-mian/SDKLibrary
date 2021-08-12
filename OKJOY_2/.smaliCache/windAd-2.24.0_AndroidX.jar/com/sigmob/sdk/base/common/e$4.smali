.class Lcom/sigmob/sdk/base/common/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/e;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e$4;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e$4;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/e;->d(Lcom/sigmob/sdk/base/common/e;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method
