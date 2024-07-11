.class public Lcom/kwad/sdk/core/webview/jshandler/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/a$a;,
        Lcom/kwad/sdk/core/webview/jshandler/a$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/webview/a;

.field private b:Landroid/os/Handler;

.field private final c:Lcom/kwad/sdk/core/download/b/b;

.field private d:Lcom/kwad/sdk/core/webview/jshandler/a$b;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/core/webview/jshandler/a$b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->a:Lcom/kwad/sdk/core/webview/a;

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->c:Lcom/kwad/sdk/core/download/b/b;

    if-eqz p2, :cond_18

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/b;->a(I)V

    :cond_18
    iput-object p3, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->d:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/a;)Lcom/kwad/sdk/core/download/b/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->c:Lcom/kwad/sdk/core/download/b/b;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/core/webview/jshandler/a;)Lcom/kwad/sdk/core/webview/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->a:Lcom/kwad/sdk/core/webview/a;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/core/webview/jshandler/a;)Lcom/kwad/sdk/core/webview/jshandler/a$b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->d:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "convert"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v0, :cond_d

    const/4 p1, -0x1

    const-string v0, "native adTemplate is null"

    invoke-interface {p2, p1, v0}, Lcom/kwad/sdk/core/webview/a/c;->a(ILjava/lang/String;)V

    return-void

    :cond_d
    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/a$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/a$a;-><init>()V

    :try_start_12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/a$a;->parseJson(Lorg/json/JSONObject;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_1f
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->a:Lcom/kwad/sdk/core/webview/a;

    iget-boolean p1, p1, Lcom/kwad/sdk/core/webview/a;->g:Z

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/core/webview/jshandler/a$1;

    invoke-direct {v1, p0, v0}, Lcom/kwad/sdk/core/webview/jshandler/a$1;-><init>(Lcom/kwad/sdk/core/webview/jshandler/a;Lcom/kwad/sdk/core/webview/jshandler/a$a;)V

    :goto_2c
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3c

    :cond_30
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->d:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/core/webview/jshandler/a$2;

    invoke-direct {v1, p0, v0}, Lcom/kwad/sdk/core/webview/jshandler/a$2;-><init>(Lcom/kwad/sdk/core/webview/jshandler/a;Lcom/kwad/sdk/core/webview/jshandler/a$a;)V

    goto :goto_2c

    :cond_3c
    :goto_3c
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/a;->d:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    return-void
.end method
