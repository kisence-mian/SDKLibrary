.class Lcom/kwad/sdk/b/c/f/b/b$b;
.super Lcom/kwad/sdk/b/e/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/c/f/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/c/f/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/c/f/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/c/f/b/b$b;->a:Lcom/kwad/sdk/b/c/f/b/b;

    invoke-direct {p0}, Lcom/kwad/sdk/b/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b$b;->a:Lcom/kwad/sdk/b/c/f/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/c/f/b/b;->c(Lcom/kwad/sdk/b/c/f/b/b;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b$b;->a:Lcom/kwad/sdk/b/c/f/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/f/b/b;->g(Lcom/kwad/sdk/b/c/f/b/b;)J

    move-result-wide v0

    sput-wide v0, Lcom/kwad/sdk/b/c/c;->h:J

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b$b;->a:Lcom/kwad/sdk/b/c/f/b/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/b/c/f/b/b;->b(Lcom/kwad/sdk/b/c/f/b/b;J)J

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b$b;->a:Lcom/kwad/sdk/b/c/f/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/f/b/b;->a(Lcom/kwad/sdk/b/c/f/b/b;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/b/c/f/b/b;->d(Lcom/kwad/sdk/b/c/f/b/b;J)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b$b;->a:Lcom/kwad/sdk/b/c/f/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/f/b/b;->b(Lcom/kwad/sdk/b/c/f/b/b;)V

    return-void
.end method

.method public c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b$b;->a:Lcom/kwad/sdk/b/c/f/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/c/f/b/b;->c(Lcom/kwad/sdk/b/c/f/b/b;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b$b;->a:Lcom/kwad/sdk/b/c/f/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/f/b/b;->e(Lcom/kwad/sdk/b/c/f/b/b;)V

    return-void
.end method
