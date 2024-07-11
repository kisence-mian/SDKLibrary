.class Lcom/kwad/sdk/reward/b/b/b/e$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/b/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/e$1;->a:Lcom/kwad/sdk/reward/b/b/b/e;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 10

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e$1;->a:Lcom/kwad/sdk/reward/b/b/b/e;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/b/e;->a(Lcom/kwad/sdk/reward/b/b/b/e;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->k(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->j(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1e

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1e
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/e$1;->a:Lcom/kwad/sdk/reward/b/b/b/e;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/kwad/sdk/reward/b/b/b/e;->a(Lcom/kwad/sdk/reward/b/b/b/e;JJ)V

    return-void
.end method
