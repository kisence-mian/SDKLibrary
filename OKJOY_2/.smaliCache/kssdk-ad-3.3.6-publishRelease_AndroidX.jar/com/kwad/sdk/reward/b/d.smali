.class public Lcom/kwad/sdk/reward/b/d;
.super Lcom/kwad/sdk/reward/d;


# instance fields
.field private b:Lcom/kwad/sdk/reward/a/b;

.field private c:Lcom/kwad/sdk/reward/c/a;

.field private d:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/d$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/d$1;-><init>(Lcom/kwad/sdk/reward/b/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/d;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/d;)Lcom/kwad/sdk/reward/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/d;->b:Lcom/kwad/sdk/reward/a/b;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/d;->e()V

    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->g:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_9
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/d;->b:Lcom/kwad/sdk/reward/a/b;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/d;->c:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/d;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/d;->c:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/d;->d:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method
