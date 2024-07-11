.class Lcom/kwad/sdk/fullscreen/a/a/b$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/fullscreen/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/fullscreen/a/a/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/fullscreen/a/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/a/a/b$1;->a:Lcom/kwad/sdk/fullscreen/a/a/b;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 5

    iget-object p1, p0, Lcom/kwad/sdk/fullscreen/a/a/b$1;->a:Lcom/kwad/sdk/fullscreen/a/a/b;

    invoke-static {p1}, Lcom/kwad/sdk/fullscreen/a/a/b;->a(Lcom/kwad/sdk/fullscreen/a/a/b;)J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-ltz p1, :cond_f

    iget-object p1, p0, Lcom/kwad/sdk/fullscreen/a/a/b$1;->a:Lcom/kwad/sdk/fullscreen/a/a/b;

    invoke-static {p1}, Lcom/kwad/sdk/fullscreen/a/a/b;->b(Lcom/kwad/sdk/fullscreen/a/a/b;)V

    :cond_f
    return-void
.end method
