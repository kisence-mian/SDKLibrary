.class Lcom/sigmob/sdk/base/common/d$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/d;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/d;)V
    .registers 5

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->i()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    sget-object v1, Lcom/sigmob/volley/toolbox/d$a;->a:Lcom/sigmob/volley/toolbox/d$a;

    if-ne v0, v1, :cond_43

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/d$a;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_74

    :cond_43
    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    sget-object v1, Lcom/sigmob/volley/toolbox/d$a;->c:Lcom/sigmob/volley/toolbox/d$a;

    if-ne v0, v1, :cond_74

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/d$a;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_74
    :goto_74
    new-instance v0, Lcom/sigmob/sdk/base/common/d$c;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/base/common/d$c;-><init>(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/volley/toolbox/d;)V

    invoke-static {}, Lcom/sigmob/sdk/common/b/c$a;->b()Lcom/sigmob/sdk/common/b/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/b/c$a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/common/d$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/d;JJ)V
    .registers 10

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    if-eqz p2, :cond_b0

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object p2

    if-eqz p2, :cond_b0

    iget-object p2, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    sget-object p3, Lcom/sigmob/volley/toolbox/d$a;->a:Lcom/sigmob/volley/toolbox/d$a;

    if-ne p2, p3, :cond_b0

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b0

    iget-object p1, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->i()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object p3, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {p3}, Lcom/sigmob/sdk/base/common/d;->f(Lcom/sigmob/sdk/base/common/d;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    const-wide/32 v0, 0xf000

    cmp-long v0, p4, v0

    if-lez v0, :cond_b0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->k()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_7b

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->i()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->l()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/d;->f(Lcom/sigmob/sdk/base/common/d;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/d$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_b0

    :cond_7b
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p4, v0

    const-wide/32 v2, 0x7d000

    cmp-long p3, v0, v2

    if-lez p3, :cond_b0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->l()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p2, p3, :cond_b0

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/d;->f(Lcom/sigmob/sdk/base/common/d;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/d$a;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_b0
    :goto_b0
    return-void
.end method

.method public b(Lcom/sigmob/volley/toolbox/d;)V
    .registers 5

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->i()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    sget-object v1, Lcom/sigmob/volley/toolbox/d$a;->a:Lcom/sigmob/volley/toolbox/d$a;

    if-ne v0, v1, :cond_43

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/base/common/d$a;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_6e

    :cond_43
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object v0

    if-eqz v0, :cond_6e

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    sget-object v1, Lcom/sigmob/volley/toolbox/d$a;->c:Lcom/sigmob/volley/toolbox/d$a;

    if-ne v0, v1, :cond_6e

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/base/common/d$a;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public c(Lcom/sigmob/volley/toolbox/d;)V
    .registers 5

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/t;

    const-string v1, "onErrorResponse: "

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->i()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    sget-object v1, Lcom/sigmob/volley/toolbox/d$a;->a:Lcom/sigmob/volley/toolbox/d$a;

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/d$a;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_6d

    :cond_4a
    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    sget-object v1, Lcom/sigmob/volley/toolbox/d$a;->c:Lcom/sigmob/volley/toolbox/d$a;

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->j()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/d$a;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_6d
    :goto_6d
    new-instance v0, Lcom/sigmob/sdk/base/common/d$c;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$8;->a:Lcom/sigmob/sdk/base/common/d;

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/base/common/d$c;-><init>(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/volley/toolbox/d;)V

    invoke-static {}, Lcom/sigmob/sdk/common/b/c$a;->b()Lcom/sigmob/sdk/common/b/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/b/c$a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/common/d$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
