.class final Lcom/alphab/a/b/d$1;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "ReqPKGAndReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/a/b/d;


# direct methods
.method constructor <init>(Lcom/alphab/a/b/d;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .prologue
    .line 36
    const-string v6, ""

    .line 38
    iget-object v0, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    iget-object v1, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    invoke-static {v1}, Lcom/alphab/a/b/d;->a(Lcom/alphab/a/b/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    invoke-static {v2}, Lcom/alphab/a/b/d;->b(Lcom/alphab/a/b/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    invoke-static {v3}, Lcom/alphab/a/b/d;->c(Lcom/alphab/a/b/d;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    invoke-static {v4}, Lcom/alphab/a/b/d;->d(Lcom/alphab/a/b/d;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    invoke-static {v5}, Lcom/alphab/a/b/d;->e(Lcom/alphab/a/b/d;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alphab/a/b/d;->a(Lcom/alphab/a/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    invoke-static {v0}, Lcom/alphab/a/b/d;->f(Lcom/alphab/a/b/d;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 40
    iget-object v0, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    invoke-static {v0}, Lcom/alphab/a/b/d;->f(Lcom/alphab/a/b/d;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/net/l;->c()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/alphab/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_3b
    iget-object v1, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    new-instance v2, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v2}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    iput-object v2, v1, Lcom/alphab/a/b/d;->f:Lcom/mintegral/msdk/base/common/net/l;

    .line 44
    iget-object v1, p0, Lcom/alphab/a/b/d$1;->a:Lcom/alphab/a/b/d;

    iget-object v1, v1, Lcom/alphab/a/b/d;->f:Lcom/mintegral/msdk/base/common/net/l;

    const-string v2, "p"

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    :cond_4e
    move-object v0, v6

    goto :goto_3b
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method
