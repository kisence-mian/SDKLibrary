.class Lcom/kwad/sdk/reward/c/a$2;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/c/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic b:Lcom/kwad/sdk/reward/c/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/c/a;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/reward/c/a$2;->b:Lcom/kwad/sdk/reward/c/a;

    iput-object p2, p0, Lcom/kwad/sdk/reward/c/a$2;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/detail/video/e;->a(II)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a$2;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/core/report/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    return-void
.end method
