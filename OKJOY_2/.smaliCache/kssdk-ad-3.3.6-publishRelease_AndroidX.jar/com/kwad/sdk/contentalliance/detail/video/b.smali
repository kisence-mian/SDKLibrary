.class public Lcom/kwad/sdk/contentalliance/detail/video/b;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->b:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->b:J

    iput-wide p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->a:J

    iput-wide p3, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->b:J

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/contentalliance/detail/video/b;
    .registers 7

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mKsPlayerClickTimeParam:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    goto :goto_25

    :cond_16
    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/d;->c(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mKsPlayerClickTimeParam:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    :goto_25
    return-object v1
.end method
