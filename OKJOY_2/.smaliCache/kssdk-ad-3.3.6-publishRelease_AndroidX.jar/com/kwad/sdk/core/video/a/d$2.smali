.class Lcom/kwad/sdk/core/video/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/video/ksvodplayerkit/IKSVodPlayer$OnVodPlayerReleaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/video/a/d;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/video/a/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/video/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/d$2;->a:Lcom/kwad/sdk/core/video/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerRelease()V
    .registers 3

    const-string v0, "KwaiMediaPlayer"

    const-string v1, "onPlayerRelease"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
