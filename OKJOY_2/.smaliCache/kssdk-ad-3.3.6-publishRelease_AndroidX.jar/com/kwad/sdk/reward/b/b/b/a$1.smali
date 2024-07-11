.class Lcom/kwad/sdk/reward/b/b/b/a$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/b/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/a$1;->a:Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 12

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a$1;->a:Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/b/a;->a(Lcom/kwad/sdk/reward/b/b/b/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->k(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/a$1;->a:Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/b/b/a;->a(Lcom/kwad/sdk/reward/b/b/b/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->j(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x447a0000    # 1000.0f

    if-eqz v2, :cond_25

    :cond_1a
    sub-long/2addr p1, p3

    long-to-float p1, p1

    :goto_1c
    div-float/2addr p1, v4

    add-float/2addr p1, v3

    float-to-int p1, p1

    iget-object p2, p0, Lcom/kwad/sdk/reward/b/b/b/a$1;->a:Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-static {p2, p1}, Lcom/kwad/sdk/reward/b/b/b/a;->a(Lcom/kwad/sdk/reward/b/b/b/a;I)V

    goto :goto_3c

    :cond_25
    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-lez v2, :cond_1a

    cmp-long v2, p1, v0

    if-lez v2, :cond_1a

    cmp-long p1, p3, v0

    if-ltz p1, :cond_39

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/a$1;->a:Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/b/a;->b(Lcom/kwad/sdk/reward/b/b/b/a;)V

    goto :goto_3c

    :cond_39
    sub-long/2addr v0, p3

    long-to-float p1, v0

    goto :goto_1c

    :goto_3c
    return-void
.end method
