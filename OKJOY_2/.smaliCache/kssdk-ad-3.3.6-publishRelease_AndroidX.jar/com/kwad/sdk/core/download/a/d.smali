.class public Lcom/kwad/sdk/core/download/a/d;
.super Lcom/kwad/sdk/core/e/b;


# instance fields
.field public a:I

.field protected b:Lcom/kwad/sdk/core/download/a/e;

.field protected c:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

.field public d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field public e:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field public f:Lcom/kwad/sdk/core/download/b/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/d;->f:Lcom/kwad/sdk/core/download/b/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/core/download/b/b;->f()V

    :cond_7
    return-void
.end method
