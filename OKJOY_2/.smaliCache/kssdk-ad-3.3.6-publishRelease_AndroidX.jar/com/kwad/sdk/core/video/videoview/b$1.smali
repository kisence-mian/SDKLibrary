.class Lcom/kwad/sdk/core/video/videoview/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/video/videoview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/video/videoview/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/video/videoview/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/videoview/b$1;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/video/a/c;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/b$1;->a:Lcom/kwad/sdk/core/video/videoview/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->a(Lcom/kwad/sdk/core/video/videoview/b;I)I

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/b$1;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/b;->b(Lcom/kwad/sdk/core/video/videoview/b;)Lcom/kwad/sdk/core/video/videoview/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/b$1;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {v1}, Lcom/kwad/sdk/core/video/videoview/b;->a(Lcom/kwad/sdk/core/video/videoview/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "onPrepared \u2014\u2014> STATE_PREPARED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/kwad/sdk/core/video/a/c;->f()V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/b$1;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/b;->c(Lcom/kwad/sdk/core/video/videoview/b;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/b$1;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/b;->d(Lcom/kwad/sdk/core/video/videoview/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/b$1;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {v1}, Lcom/kwad/sdk/core/video/videoview/b;->e(Lcom/kwad/sdk/core/video/videoview/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/aa;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(J)V

    :cond_3c
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/b$1;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/b;->f(Lcom/kwad/sdk/core/video/videoview/b;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/b$1;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/b;->f(Lcom/kwad/sdk/core/video/videoview/b;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/kwad/sdk/core/video/a/c;->a(J)V

    :cond_53
    return-void
.end method
