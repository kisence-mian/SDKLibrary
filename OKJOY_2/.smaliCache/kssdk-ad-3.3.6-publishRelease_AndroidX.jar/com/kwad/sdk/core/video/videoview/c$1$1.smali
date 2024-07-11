.class Lcom/kwad/sdk/core/video/videoview/c$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/video/videoview/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/video/videoview/c$1;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/video/videoview/c$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/videoview/c$1$1;->a:Lcom/kwad/sdk/core/video/videoview/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/c$1$1;->a:Lcom/kwad/sdk/core/video/videoview/c$1;

    iget-object v0, v0, Lcom/kwad/sdk/core/video/videoview/c$1;->a:Lcom/kwad/sdk/core/video/videoview/c;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/video/videoview/c;->g()V

    return-void
.end method
