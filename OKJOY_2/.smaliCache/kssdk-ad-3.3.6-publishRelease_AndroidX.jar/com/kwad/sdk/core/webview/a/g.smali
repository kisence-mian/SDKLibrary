.class public Lcom/kwad/sdk/core/webview/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/webview/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/kwad/sdk/core/webview/a/a;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/a/g;->a:Ljava/util/Map;

    new-instance v0, Lcom/kwad/sdk/core/webview/a/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/a/d;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/a/g;->c:Lcom/kwad/sdk/core/webview/a/a;

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/a/g;->b:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/a/g;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/webview/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/g;->d:Z

    const-string v1, "KSAdJSBridge"

    if-eqz v0, :cond_1d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callJS after destroy jsInterface, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_19
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string p1, "callJS callback is empty"

    goto :goto_19

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callJS callback:+ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--params: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/g;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_4b

    return-void

    :cond_4b
    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/utils/al;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "KSAdJSBridge"

    const-string v1, "destroy jsInterface"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/webview/a/a;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Lcom/kwad/sdk/core/webview/a/a;->b()V

    goto :goto_11

    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/g;->d:Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/webview/a/a;)V
    .registers 5

    const-string v0, "KSAdJSBridge"

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Lcom/kwad/sdk/core/webview/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/a/g;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/kwad/sdk/core/webview/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot register handler again, handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/kwad/sdk/core/webview/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/g;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/kwad/sdk/core/webview/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_3e
    const-string p1, "handler and handler\'key cannot be null"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    return-void
.end method

.method public callAdBridge(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callAdBridge =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSAdJSBridge"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_18
    new-instance v0, Lcom/kwad/sdk/core/webview/a/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/a/b;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/webview/a/b;->a(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/g;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/kwad/sdk/core/webview/a/b;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/webview/a/a;

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/g;->c:Lcom/kwad/sdk/core/webview/a/a;

    :cond_33
    if-eqz p1, :cond_4e

    iget-object v2, v0, Lcom/kwad/sdk/core/webview/a/b;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    new-instance v2, Lcom/kwad/sdk/core/webview/a/g$1;

    invoke-direct {v2, p0, v0}, Lcom/kwad/sdk/core/webview/a/g$1;-><init>(Lcom/kwad/sdk/core/webview/a/g;Lcom/kwad/sdk/core/webview/a/b;)V

    goto :goto_48

    :cond_43
    new-instance v2, Lcom/kwad/sdk/core/webview/a/g$2;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/core/webview/a/g$2;-><init>(Lcom/kwad/sdk/core/webview/a/g;)V

    :goto_48
    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a/b;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/kwad/sdk/core/webview/a/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V

    goto :goto_6e

    :cond_4e
    const-string p1, "bridgeHandler is null"

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_53} :catch_54

    goto :goto_6e

    :catch_54
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callAdBridge JSONException:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    return-void
.end method
