.class public Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;,
        Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/webview/a;

.field private b:Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;

.field private c:Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$a;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;->b:Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;->a:Lcom/kwad/sdk/core/webview/a;

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;->c:Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$a;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;)Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;->b:Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;)Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;->c:Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$a;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "videoPosition"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;->b:Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->parseJson(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;->c:Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$a;

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;->d:Landroid/os/Handler;

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$1;-><init>(Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
