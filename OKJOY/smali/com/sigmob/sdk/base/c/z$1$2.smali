.class Lcom/sigmob/sdk/base/c/z$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/c/z$1;->a(Lcom/sigmob/volley/ae;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/c/z$1;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/c/z$1;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/z$1$2;->a:Lcom/sigmob/sdk/base/c/z$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/z$1$2;->a:Lcom/sigmob/sdk/base/c/z$1;

    iget-boolean v0, v0, Lcom/sigmob/sdk/base/c/z$1;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/z$1$2;->a:Lcom/sigmob/sdk/base/c/z$1;

    iget-object v0, v0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/j;->insertToDB(Lcom/sigmob/sdk/base/a/m;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/sigmob/sdk/base/c/z;->h()I

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/SDKConfig;->getAdTrackerMaxRetryNum()I

    move-result v1

    if-le v0, v1, :cond_e

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Z)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->h()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/c/t;->a()V

    goto :goto_e
.end method
