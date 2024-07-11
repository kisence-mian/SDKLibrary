.class public Lcom/kwad/sdk/core/webview/jshandler/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/i$a;,
        Lcom/kwad/sdk/core/webview/jshandler/i$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:Landroid/webkit/WebView;

.field private c:Lcom/kwad/sdk/core/webview/a/c;

.field private d:Lcom/kwad/sdk/core/webview/jshandler/i$b;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/webview/jshandler/i$b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->a:Landroid/os/Handler;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/a;->f:Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->b:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->d:Lcom/kwad/sdk/core/webview/jshandler/i$b;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/i;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->b:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/core/webview/jshandler/i;)Lcom/kwad/sdk/core/webview/jshandler/i$b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->d:Lcom/kwad/sdk/core/webview/jshandler/i$b;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/core/webview/jshandler/i;)Lcom/kwad/sdk/core/webview/a/c;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->c:Lcom/kwad/sdk/core/webview/a/c;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "initKsAdFrame"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 5

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->c:Lcom/kwad/sdk/core/webview/a/c;

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/kwad/sdk/core/webview/jshandler/i$a;

    invoke-direct {p1}, Lcom/kwad/sdk/core/webview/jshandler/i$a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/webview/jshandler/i$a;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->a:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/core/webview/jshandler/i$1;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/webview/jshandler/i$1;-><init>(Lcom/kwad/sdk/core/webview/jshandler/i;Lcom/kwad/sdk/core/webview/jshandler/i$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->a:Landroid/os/Handler;

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/i$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/webview/jshandler/i$2;-><init>(Lcom/kwad/sdk/core/webview/jshandler/i;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_30

    :catch_24
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(ILjava/lang/String;)V

    :goto_30
    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->c:Lcom/kwad/sdk/core/webview/a/c;

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->d:Lcom/kwad/sdk/core/webview/jshandler/i$b;

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/i;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
