.class public Lcom/kwad/sdk/contentalliance/detail/photo/b/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:J

.field private b:Lcom/kwad/sdk/core/response/model/PhotoInfo;

.field private c:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .registers 6
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->a:J

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->b:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    iput-wide p2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->d:J

    return-void
.end method


# virtual methods
.method public a()Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->b:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->k(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->a:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;->d:J

    return-wide v0
.end method
