.class Lcom/sigmob/sdk/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/a/d;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/s;)V
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
    .registers 7

    new-instance v1, Ljava/io/File;

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4d
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    iput-object v0, v1, Lcom/sigmob/sdk/a/d;->e:Ljava/io/File;

    iget-object v0, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {v0}, Lcom/sigmob/sdk/a/d;->a(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/s;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {v0}, Lcom/sigmob/sdk/a/d;->c(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/s;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {v1}, Lcom/sigmob/sdk/a/d;->b(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/s;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_6b
    return-void

    :cond_6c
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_44

    :cond_95
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sigmob/sdk/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".gif"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f4

    move-object v0, v1

    goto/16 :goto_50

    :cond_f4
    move-object v0, v2

    goto/16 :goto_50
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

    invoke-static {v0}, Lcom/sigmob/sdk/a/d;->d(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/s;

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
    iget-object v1, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {v1}, Lcom/sigmob/sdk/a/d;->f(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/common/s;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/a/d$1;->b:Lcom/sigmob/sdk/a/d;

    invoke-static {v2}, Lcom/sigmob/sdk/a/d;->e(Lcom/sigmob/sdk/a/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_2d
    const-string v0, "onErrorResponse: "

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->i:Lcom/sigmob/volley/ae;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
