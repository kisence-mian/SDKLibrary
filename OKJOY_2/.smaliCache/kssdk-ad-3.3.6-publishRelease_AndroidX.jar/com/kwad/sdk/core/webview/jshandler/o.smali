.class public Lcom/kwad/sdk/core/webview/jshandler/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/o$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/webview/a;

.field private final b:Lcom/kwad/sdk/core/download/b/b;

.field private c:Lcom/kwad/sdk/core/webview/a/c;

.field private d:Lcom/kwad/sdk/api/KsAppDownloadListener;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/download/b/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->a:Lcom/kwad/sdk/core/webview/a;

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->b:Lcom/kwad/sdk/core/download/b/b;

    return-void
.end method

.method private a(IF)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->c:Lcom/kwad/sdk/core/webview/a/c;

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/o$a;-><init>()V

    iput p2, v0, Lcom/kwad/sdk/core/webview/jshandler/o$a;->a:F

    iput p1, v0, Lcom/kwad/sdk/core/webview/jshandler/o$a;->b:I

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iget-wide p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->totalBytes:J

    iput-wide p1, v0, Lcom/kwad/sdk/core/webview/jshandler/o$a;->c:J

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->c:Lcom/kwad/sdk/core/webview/a/c;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    :cond_1e
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/o;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/webview/jshandler/o;->a(IF)V

    return-void
.end method

.method private c()Lcom/kwad/sdk/api/KsAppDownloadListener;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/o$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/webview/jshandler/o$1;-><init>(Lcom/kwad/sdk/core/webview/jshandler/o;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "registerProgressListener"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez p1, :cond_d

    const/4 p1, -0x1

    const-string v0, "native photo is null"

    invoke-interface {p2, p1, v0}, Lcom/kwad/sdk/core/webview/a/c;->a(ILjava/lang/String;)V

    return-void

    :cond_d
    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->c:Lcom/kwad/sdk/core/webview/a/c;

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->b:Lcom/kwad/sdk/core/download/b/b;

    if-eqz p1, :cond_26

    iget-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->d:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-nez p2, :cond_23

    invoke-direct {p0}, Lcom/kwad/sdk/core/webview/jshandler/o;->c()Lcom/kwad/sdk/api/KsAppDownloadListener;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->d:Lcom/kwad/sdk/api/KsAppDownloadListener;

    iget-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->b:Lcom/kwad/sdk/core/download/b/b;

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    goto :goto_26

    :cond_23
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/download/b/b;->c(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->c:Lcom/kwad/sdk/core/webview/a/c;

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->b:Lcom/kwad/sdk/core/download/b/b;

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->d:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v2, :cond_10

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/download/b/b;->b(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/o;->d:Lcom/kwad/sdk/api/KsAppDownloadListener;

    :cond_10
    return-void
.end method
