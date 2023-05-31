.class Lcom/kwad/sdk/c/h/e/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/d/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/h/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/e/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/h/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/b$a;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/c/h/d/c;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$a;->a:Lcom/kwad/sdk/c/h/e/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;I)I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$a;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->b(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b$a;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "onPrepared \u2014\u2014> STATE_PREPARED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/kwad/sdk/c/h/d/c;->start()V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$a;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->c(Lcom/kwad/sdk/c/h/e/b;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$a;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->d(Lcom/kwad/sdk/c/h/e/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b$a;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/c/h/e/b;->e(Lcom/kwad/sdk/c/h/e/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(J)V

    :cond_3c
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$a;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->f(Lcom/kwad/sdk/c/h/e/b;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$a;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->f(Lcom/kwad/sdk/c/h/e/b;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(J)V

    :cond_53
    return-void
.end method
