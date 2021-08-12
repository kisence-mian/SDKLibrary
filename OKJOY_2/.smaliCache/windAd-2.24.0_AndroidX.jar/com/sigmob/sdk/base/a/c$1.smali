.class final Lcom/sigmob/sdk/base/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/e;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Z)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/c$1;->a:Lcom/sigmob/sdk/base/common/e;

    iput-object p2, p0, Lcom/sigmob/sdk/base/a/c$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/a/c$1;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-boolean p4, p0, Lcom/sigmob/sdk/base/a/c$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/j;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/c$1;->a:Lcom/sigmob/sdk/base/common/e;

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/c$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/c$1;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/common/e;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/volley/j;Lcom/sigmob/sdk/base/common/s$a;)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/base/a/c$1;->d:Z

    if-eqz p1, :cond_32

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "retry Send success "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/base/a/c;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adtracker"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sigmob/sdk/base/a/c$1$1;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/base/a/c$1$1;-><init>(Lcom/sigmob/sdk/base/a/c$1;)V

    invoke-static {p1}, Lcom/sigmob/sdk/common/b/c;->a(Ljava/lang/Runnable;)V

    :cond_32
    return-void
.end method

.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 5

    iget-object v0, p1, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/j;

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/c$1;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/e;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_16

    new-instance v0, Lcom/sigmob/sdk/base/a/c$1$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/a/c$1$2;-><init>(Lcom/sigmob/sdk/base/a/c$1;)V

    invoke-static {v0}, Lcom/sigmob/sdk/common/b/c;->a(Ljava/lang/Runnable;)V

    :cond_16
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/c$1;->a:Lcom/sigmob/sdk/base/common/e;

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/c$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/c$1;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1, v2, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/common/e;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/volley/t;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method
