.class public Lcom/kwad/sdk/core/webview/jshandler/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/webview/a;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/j;->a:Lcom/kwad/sdk/core/webview/a;

    return-void
.end method

.method private a(Lcom/kwad/sdk/core/webview/jshandler/j$a;)V
    .registers 5

    invoke-static {p1}, Lcom/kwad/sdk/core/webview/jshandler/j$a;->a(Lcom/kwad/sdk/core/webview/jshandler/j$a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const-string p1, "WebCardLogHandler"

    const-string v0, "handleH5Log actionType is AD_ITEM_IMPRESSION"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :cond_f
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/jshandler/j$a;->a(Lcom/kwad/sdk/core/webview/jshandler/j$a;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/j;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a;->c:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/j;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, v1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v2, p0, Lcom/kwad/sdk/core/webview/jshandler/j;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v2, v2, Lcom/kwad/sdk/core/webview/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/core/webview/jshandler/j$a;->b(Lcom/kwad/sdk/core/webview/jshandler/j$a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v0, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/utils/o$a;Ljava/lang/String;)V

    goto :goto_53

    :cond_30
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/j;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/j;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v1, v1, Lcom/kwad/sdk/core/webview/a;->d:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/kwad/sdk/core/webview/jshandler/j$a;->b(Lcom/kwad/sdk/core/webview/jshandler/j$a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_53

    :cond_40
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/j;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/webview/jshandler/j$a;->a(Lcom/kwad/sdk/core/webview/jshandler/j$a;)I

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/core/webview/jshandler/j;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v2, v2, Lcom/kwad/sdk/core/webview/a;->d:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/kwad/sdk/core/webview/jshandler/j$a;->b(Lcom/kwad/sdk/core/webview/jshandler/j$a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;Ljava/lang/String;)V

    :goto_53
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "log"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/j;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, -0x1

    if-nez v0, :cond_c

    const-string v0, "native adTemplate is null"

    invoke-interface {p2, v1, v0}, Lcom/kwad/sdk/core/webview/a/c;->a(ILjava/lang/String;)V

    :cond_c
    :try_start_c
    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/j$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/j$a;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/webview/jshandler/j$a;->a(Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/webview/jshandler/j;->a(Lcom/kwad/sdk/core/webview/jshandler/j$a;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(ILjava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
