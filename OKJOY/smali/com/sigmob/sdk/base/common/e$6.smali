.class Lcom/sigmob/sdk/base/common/e$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/e;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/d;)V
    .registers 5

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->j()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->i()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    if-ne v0, v1, :cond_58

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/f;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_42
    :goto_42
    new-instance v0, Lcom/sigmob/sdk/base/common/h;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/base/common/h;-><init>(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/volley/toolbox/d;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/a/e;->b()Lcom/sigmob/sdk/base/common/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_58
    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->c:Lcom/sigmob/volley/toolbox/e;

    if-ne v0, v1, :cond_42

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/f;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_42
.end method

.method public a(Lcom/sigmob/volley/toolbox/d;JJ)V
    .registers 14

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    if-eqz v0, :cond_7a

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    if-ne v0, v1, :cond_7a

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->j()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/e;->f(Lcom/sigmob/sdk/base/common/e;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/32 v4, 0xf000

    cmp-long v3, p4, v4

    if-lez v3, :cond_7a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->l()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_7b

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->j()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->f(Lcom/sigmob/sdk/base/common/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_7a
    :goto_7a
    return-void

    :cond_7b
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p4, v4

    const-wide/32 v6, 0x7d000

    cmp-long v1, v4, v6

    if-lez v1, :cond_7a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_7a

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->f(Lcom/sigmob/sdk/base/common/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/f;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_7a
.end method

.method public b(Lcom/sigmob/volley/toolbox/d;)V
    .registers 5

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->j()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->i()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    if-ne v0, v1, :cond_43

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/f;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_42
    :goto_42
    return-void

    :cond_43
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->c:Lcom/sigmob/volley/toolbox/e;

    if-ne v0, v1, :cond_42

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/f;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_42
.end method

.method public c(Lcom/sigmob/volley/toolbox/d;)V
    .registers 5

    const-string v0, "onErrorResponse: "

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/ae;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->j()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->i()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    if-ne v0, v1, :cond_5f

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/f;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_49
    :goto_49
    new-instance v0, Lcom/sigmob/sdk/base/common/h;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/base/common/h;-><init>(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/volley/toolbox/d;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/a/e;->b()Lcom/sigmob/sdk/base/common/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_5f
    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->c:Lcom/sigmob/volley/toolbox/e;

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$6;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->k()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/f;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_49
.end method
