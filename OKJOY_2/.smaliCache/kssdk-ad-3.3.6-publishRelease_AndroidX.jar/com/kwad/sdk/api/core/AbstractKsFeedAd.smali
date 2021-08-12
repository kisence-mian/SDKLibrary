.class public abstract Lcom/kwad/sdk/api/core/AbstractKsFeedAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsFeedAd;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFeedView(Landroid/content/Context;)Landroid/view/View;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/core/AbstractKsFeedAd;->getFeedView2(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getFeedView2(Landroid/content/Context;)Landroid/view/View;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method
