.class public Lcom/kwad/sdk/api/core/ApiWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->unwrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->unwrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->unwrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->unwrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->unwrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method


# virtual methods
.method public getContext2()Landroid/content/Context;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    invoke-virtual {p0}, Lcom/kwad/sdk/api/core/ApiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
