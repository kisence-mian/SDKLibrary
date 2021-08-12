.class Lcom/kwad/sdk/reward/c/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/c/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/c/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/c/a$3;->a:Lcom/kwad/sdk/reward/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/video/a/c;)V
    .registers 2

    iget-object p1, p0, Lcom/kwad/sdk/reward/c/a$3;->a:Lcom/kwad/sdk/reward/c/a;

    invoke-static {p1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/reward/c/a;)Lcom/kwad/sdk/contentalliance/detail/video/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()V

    return-void
.end method
