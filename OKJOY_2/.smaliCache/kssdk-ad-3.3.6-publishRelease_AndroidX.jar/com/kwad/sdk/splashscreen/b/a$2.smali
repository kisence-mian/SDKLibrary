.class Lcom/kwad/sdk/splashscreen/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/splashscreen/b/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

.field final synthetic b:Lcom/kwad/sdk/splashscreen/b/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/splashscreen/b/a;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/b/a$2;->b:Lcom/kwad/sdk/splashscreen/b/a;

    iput-object p2, p0, Lcom/kwad/sdk/splashscreen/b/a$2;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/video/a/c;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/b/a$2;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/16 v0, 0x32

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;IZ)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onPrepared"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashPlayModule"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/b/a$2;->b:Lcom/kwad/sdk/splashscreen/b/a;

    invoke-static {p1}, Lcom/kwad/sdk/splashscreen/b/a;->b(Lcom/kwad/sdk/splashscreen/b/a;)Lcom/kwad/sdk/contentalliance/detail/video/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()V

    :cond_2c
    return-void
.end method
