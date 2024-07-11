.class Lcom/kwad/sdk/core/video/videoview/c$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/video/videoview/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/video/videoview/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/video/videoview/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/videoview/c$1;->a:Lcom/kwad/sdk/core/video/videoview/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/c$1;->a:Lcom/kwad/sdk/core/video/videoview/c;

    new-instance v1, Lcom/kwad/sdk/core/video/videoview/c$1$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/video/videoview/c$1$1;-><init>(Lcom/kwad/sdk/core/video/videoview/c$1;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/c;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
