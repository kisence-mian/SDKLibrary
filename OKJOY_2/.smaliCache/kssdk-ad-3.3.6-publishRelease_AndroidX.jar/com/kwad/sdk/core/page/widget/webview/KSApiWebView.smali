.class public Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;
.super Lcom/kwad/sdk/api/core/ApiWebView;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/kwad/sdk/utils/ah;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/core/ApiWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-static {p1}, Lcom/kwad/sdk/utils/ah;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/api/core/ApiWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-static {p1}, Lcom/kwad/sdk/utils/ah;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/api/core/ApiWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-static {p1}, Lcom/kwad/sdk/utils/ah;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/api/core/ApiWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .registers 5

    invoke-static {p1}, Lcom/kwad/sdk/utils/ah;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/api/core/ApiWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a:Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_15

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    :cond_15
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a:Z

    if-eqz v0, :cond_7

    invoke-super {p0}, Lcom/kwad/sdk/api/core/ApiWebView;->destroy()V

    :cond_7
    return-void
.end method

.method public setEnableDestroy(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KSApiWebView;->a:Z

    return-void
.end method
