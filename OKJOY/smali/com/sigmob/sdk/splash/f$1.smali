.class Lcom/sigmob/sdk/splash/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/f;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/s;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/f;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/f;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/d;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/s;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->c(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/s;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/f;->b(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/s;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_17
    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/d;JJ)V
    .registers 6

    return-void
.end method

.method public b(Lcom/sigmob/volley/toolbox/d;)V
    .registers 2

    return-void
.end method

.method public c(Lcom/sigmob/volley/toolbox/d;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->d(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/s;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/ae;

    invoke-virtual {v0}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/ae;

    iget-object v1, v1, Lcom/sigmob/volley/ae;->a:Lcom/sigmob/volley/n;

    if-eqz v1, :cond_1e

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/ae;

    iget-object v0, v0, Lcom/sigmob/volley/ae;->a:Lcom/sigmob/volley/n;

    iget v0, v0, Lcom/sigmob/volley/n;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    iget-object v1, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/f;->f(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/s;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/f;->e(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_2d
    const-string v0, "onErrorResponse: "

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/ae;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
