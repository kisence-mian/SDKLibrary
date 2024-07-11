.class Lcom/kwad/sdk/fullscreen/a/a/d$2;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/fullscreen/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/fullscreen/a/a/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/fullscreen/a/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/a/a/d$2;->a:Lcom/kwad/sdk/fullscreen/a/a/d;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 5

    const-wide/16 p1, 0x1388

    cmp-long p1, p3, p1

    if-lez p1, :cond_b

    iget-object p1, p0, Lcom/kwad/sdk/fullscreen/a/a/d$2;->a:Lcom/kwad/sdk/fullscreen/a/a/d;

    invoke-static {p1}, Lcom/kwad/sdk/fullscreen/a/a/d;->a(Lcom/kwad/sdk/fullscreen/a/a/d;)V

    :cond_b
    return-void
.end method
