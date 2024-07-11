.class public Lcom/kwad/sdk/core/webview/jshandler/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/q$b;,
        Lcom/kwad/sdk/core/webview/jshandler/q$a;
    }
.end annotation


# static fields
.field private static c:Landroid/os/Handler;


# instance fields
.field private a:Lcom/kwad/sdk/core/webview/a;

.field private b:Lcom/kwad/sdk/core/download/b/b;

.field private d:Lcom/kwad/sdk/core/webview/jshandler/q$b;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/core/webview/jshandler/q$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/q;->a:Lcom/kwad/sdk/core/webview/a;

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/q;->b:Lcom/kwad/sdk/core/download/b/b;

    iput-object p3, p0, Lcom/kwad/sdk/core/webview/jshandler/q;->d:Lcom/kwad/sdk/core/webview/jshandler/q$b;

    sget-object p1, Lcom/kwad/sdk/core/webview/jshandler/q;->c:Landroid/os/Handler;

    if-nez p1, :cond_18

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lcom/kwad/sdk/core/webview/jshandler/q;->c:Landroid/os/Handler;

    :cond_18
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/q;)Lcom/kwad/sdk/core/webview/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/q;->a:Lcom/kwad/sdk/core/webview/a;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/core/webview/jshandler/q;)Lcom/kwad/sdk/core/webview/jshandler/q$b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/q;->d:Lcom/kwad/sdk/core/webview/jshandler/q$b;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/core/webview/jshandler/q;)Lcom/kwad/sdk/core/download/b/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/q;->b:Lcom/kwad/sdk/core/download/b/b;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "playableConvert"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 4

    :try_start_0
    new-instance p2, Lcom/kwad/sdk/core/webview/jshandler/q$a;

    invoke-direct {p2}, Lcom/kwad/sdk/core/webview/jshandler/q$a;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/webview/jshandler/q$a;->parseJson(Lorg/json/JSONObject;)V

    iget p1, p2, Lcom/kwad/sdk/core/webview/jshandler/q$a;->a:I

    sget-object p2, Lcom/kwad/sdk/core/webview/jshandler/q;->c:Landroid/os/Handler;

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/q$1;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/core/webview/jshandler/q$1;-><init>(Lcom/kwad/sdk/core/webview/jshandler/q;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_1e
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
