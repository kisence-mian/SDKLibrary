.class Lcom/sigmob/sdk/splash/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/f;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .registers 3

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/k$a;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/f;->c(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/k$a;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->b(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/base/common/k$a;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

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

    invoke-static {v0}, Lcom/sigmob/sdk/splash/f;->d(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/k$a;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/t;

    invoke-virtual {v0}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/t;

    iget-object v1, v1, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/j;

    if-eqz v1, :cond_1e

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/t;

    iget-object v0, v0, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/j;

    iget v0, v0, Lcom/sigmob/volley/j;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    iget-object v1, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/f;->f(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/k$a;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/f$1;->a:Lcom/sigmob/sdk/splash/f;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/f;->e(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/base/common/k$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_2d
    iget-object p1, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/t;

    const-string v0, "onErrorResponse: "

    invoke-static {v0, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
