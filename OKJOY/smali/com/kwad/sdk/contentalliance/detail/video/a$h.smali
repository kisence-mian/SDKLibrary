.class Lcom/kwad/sdk/contentalliance/detail/video/a$h;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/video/a;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/video/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$h;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$h;->a:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->f(Lcom/kwad/sdk/contentalliance/detail/video/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/a$h$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/video/a$h$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/a$h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
