.class Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/reward/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy$1;->a:Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy$1;->a:Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;

    const/4 v1, 0x1

    # setter for: Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->mIsBackEnable:Z
    invoke-static {v0, v1}, Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;->access$002(Lcom/kwad/sdk/fullscreen/KsFullScreenVideoActivityProxy;Z)Z

    return-void
.end method
