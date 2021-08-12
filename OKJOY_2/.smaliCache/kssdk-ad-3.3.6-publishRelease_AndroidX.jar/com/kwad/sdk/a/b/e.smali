.class public Lcom/kwad/sdk/a/b/e;
.super Lcom/kwad/sdk/a/a/a;


# instance fields
.field private b:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

.field private c:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/a/a/a;-><init>()V

    new-instance v0, Lcom/kwad/sdk/a/b/e$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/a/b/e$1;-><init>(Lcom/kwad/sdk/a/b/e;)V

    iput-object v0, p0, Lcom/kwad/sdk/a/b/e;->c:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/a/b/e;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/b/e;->b:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/e;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->b:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    iput-object v0, p0, Lcom/kwad/sdk/a/b/e;->b:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    iget-object v0, p0, Lcom/kwad/sdk/a/b/e;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/e;->c:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/a/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/e;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/e;->c:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/a/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method
