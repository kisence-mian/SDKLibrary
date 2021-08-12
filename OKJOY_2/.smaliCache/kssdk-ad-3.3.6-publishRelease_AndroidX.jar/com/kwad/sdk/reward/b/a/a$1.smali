.class Lcom/kwad/sdk/reward/b/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/a/a;->a(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/contentalliance/detail/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/a/a;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/a/a;->a(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/contentalliance/detail/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/contentalliance/detail/a/a/a;->e()J

    move-result-wide v2

    sub-long v5, v0, v2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/a/a;->a(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/contentalliance/detail/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/a/a/a;->d()Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->a()I

    move-result v9

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/a/a;->a(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/contentalliance/detail/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/a/a/a;->d()Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->b()J

    move-result-wide v7

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/a/a;->b(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/reward/a;

    move-result-object v4

    invoke-virtual/range {v4 .. v9}, Lcom/kwad/sdk/reward/a;->a(JJI)V

    goto :goto_58

    :cond_42
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/a/a;->c(Lcom/kwad/sdk/reward/b/a/a;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/a/a;->d(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/reward/a;

    move-result-object v1

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/kwad/sdk/reward/a;->a(JJI)V

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a$1;->a:Lcom/kwad/sdk/reward/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/a/a;->e(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/e;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method
