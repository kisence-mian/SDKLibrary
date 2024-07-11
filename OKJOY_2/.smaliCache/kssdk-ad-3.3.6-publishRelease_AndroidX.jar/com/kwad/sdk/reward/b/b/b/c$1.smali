.class Lcom/kwad/sdk/reward/b/b/b/c$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/b/c;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 9

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/b/c;

    invoke-static {v0, p3, p4}, Lcom/kwad/sdk/reward/b/b/b/c;->a(Lcom/kwad/sdk/reward/b/b/b/c;J)J

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/b/c;->a(Lcom/kwad/sdk/reward/b/b/b/c;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->k(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/b/c;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/b/b/c;->a(Lcom/kwad/sdk/reward/b/b/b/c;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->j(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-wide/16 p1, 0x1388

    cmp-long p1, p3, p1

    if-ltz p1, :cond_36

    :goto_21
    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/b/c;->b(Lcom/kwad/sdk/reward/b/b/b/c;)V

    goto :goto_36

    :cond_27
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_36

    cmp-long p1, p1, v0

    if-lez p1, :cond_36

    cmp-long p1, p3, v0

    if-lez p1, :cond_36

    goto :goto_21

    :cond_36
    :goto_36
    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c$1;->a:Lcom/kwad/sdk/reward/b/b/b/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/b/b/b/c;->a(Lcom/kwad/sdk/reward/b/b/b/c;Z)Z

    return-void
.end method
