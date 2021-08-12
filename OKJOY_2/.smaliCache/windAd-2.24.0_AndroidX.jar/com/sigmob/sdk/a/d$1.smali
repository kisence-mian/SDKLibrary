.class Lcom/sigmob/sdk/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/a/d;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/sdk/a/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/a/d;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    iput-object p2, p0, Lcom/sigmob/sdk/a/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/d;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, ".jpg"

    const-string v3, ".gif"

    if-eqz v1, :cond_79

    iget-object p1, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_6c

    :cond_46
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sigmob/sdk/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_6c
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_75
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_d5

    :cond_79
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sigmob/sdk/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_cc

    goto :goto_d5

    :cond_cc
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d4

    move-object p1, v0

    goto :goto_d5

    :cond_d4
    const/4 p1, 0x0

    :goto_d5
    iget-object v0, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    iput-object p1, v0, Lcom/sigmob/sdk/a/d;->e:Ljava/io/File;

    iget-object p1, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {p1}, Lcom/sigmob/sdk/a/d;->a(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/k$a;

    move-result-object p1

    if-eqz p1, :cond_f0

    iget-object p1, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {p1}, Lcom/sigmob/sdk/a/d;->c(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/k$a;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {v0}, Lcom/sigmob/sdk/a/d;->b(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/base/common/k$a;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_f0
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

    iget-object v0, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {v0}, Lcom/sigmob/sdk/a/d;->d(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/k$a;

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
    iget-object v1, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {v1}, Lcom/sigmob/sdk/a/d;->f(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/k$a;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {v2}, Lcom/sigmob/sdk/a/d;->e(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/base/common/k$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_2d
    iget-object p1, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/t;

    const-string v0, "onErrorResponse: "

    invoke-static {v0, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
