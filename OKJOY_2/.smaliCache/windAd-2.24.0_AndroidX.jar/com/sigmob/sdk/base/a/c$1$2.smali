.class Lcom/sigmob/sdk/base/a/c$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/a/c$1;->onErrorResponse(Lcom/sigmob/volley/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/a/c$1;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/a/c$1;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/c$1$2;->a:Lcom/sigmob/sdk/base/a/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/c$1$2;->a:Lcom/sigmob/sdk/base/a/c$1;

    iget-boolean v0, v0, Lcom/sigmob/sdk/base/a/c$1;->d:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/c$1$2;->a:Lcom/sigmob/sdk/base/a/c$1;

    iget-object v0, v0, Lcom/sigmob/sdk/base/a/c$1;->a:Lcom/sigmob/sdk/base/common/e;

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/c$1$2;->a:Lcom/sigmob/sdk/base/a/c$1;

    iget-object v1, v1, Lcom/sigmob/sdk/base/a/c$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/c$1$2;->a:Lcom/sigmob/sdk/base/a/c$1;

    iget-object v0, v0, Lcom/sigmob/sdk/base/a/c$1;->a:Lcom/sigmob/sdk/base/common/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/common/a/c$a;)V

    goto :goto_41

    :cond_1a
    invoke-static {}, Lcom/sigmob/sdk/base/a/c;->f()I

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/SDKConfig;->getAdTrackerMaxRetryNum()I

    move-result v1

    if-le v0, v1, :cond_41

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->U()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a;->a(Z)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->g()Lcom/sigmob/sdk/common/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/e/l;->a()V

    :cond_41
    :goto_41
    return-void
.end method
