.class public Lcom/tapjoy/TJWebViewJSInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJWebViewJSInterface$a;
    }
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lcom/tapjoy/TJWebViewJSInterfaceListener;

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/tapjoy/TJWebViewJSInterfaceListener;)V
    .registers 4
    .param p1, "w"    # Landroid/webkit/WebView;
    .param p2, "l"    # Lcom/tapjoy/TJWebViewJSInterfaceListener;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 28
    iput-object p1, p0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    .line 29
    iput-object p2, p0, Lcom/tapjoy/TJWebViewJSInterface;->b:Lcom/tapjoy/TJWebViewJSInterfaceListener;

    .line 30
    return-void
.end method


# virtual methods
.method public callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 80
    invoke-virtual {p0, v0, p2, p3}, Lcom/tapjoy/TJWebViewJSInterface;->callbackToJavaScript(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 83
    return-void

    .line 82
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    return-void
.end method

.method public callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 100
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 101
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 102
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    invoke-virtual {p0, v0, p2, p3}, Lcom/tapjoy/TJWebViewJSInterface;->callbackToJavaScript(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 107
    return-void

    .line 104
    :catch_11
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in callback to JS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJWebViewJSInterface"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    return-void
.end method

.method public callbackToJavaScript(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;

    .line 125
    const-string v0, "TJWebViewJSInterface"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    const-string v2, "arguments"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 129
    const-string v2, "method"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_19
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 135
    if-eqz p3, :cond_2b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2b

    .line 136
    const-string v3, "callbackId"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    :cond_2b
    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "javascript:if(window.AndroidWebViewJavascriptBridge) AndroidWebViewJavascriptBridge._handleMessageFromAndroid(\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    iget-boolean v2, p0, Lcom/tapjoy/TJWebViewJSInterface;->d:Z

    if-nez v2, :cond_4f

    .line 144
    iget-object v2, p0, Lcom/tapjoy/TJWebViewJSInterface;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 147
    :cond_4f
    iget-object v2, p0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    if-eqz v2, :cond_64

    .line 148
    new-instance v2, Lcom/tapjoy/TJWebViewJSInterface$a;

    iget-object v3, p0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    invoke-direct {v2, p0, v3}, Lcom/tapjoy/TJWebViewJSInterface$a;-><init>(Lcom/tapjoy/TJWebViewJSInterface;Landroid/webkit/WebView;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJWebViewJSInterface$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 150
    :cond_64
    const-string v1, "No available webview to execute js"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_69} :catch_6a

    .line 156
    return-void

    .line 153
    :catch_6a
    move-exception v1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in callback to JS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    return-void
.end method

.method public dispatchMethod(Ljava/lang/String;)V
    .registers 7
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dispatchMethod params: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJWebViewJSInterface"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 52
    const-string v3, "method"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "method: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/tapjoy/TJWebViewJSInterface;->b:Lcom/tapjoy/TJWebViewJSInterfaceListener;

    if-eqz v1, :cond_38

    iget-object v3, p0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    if-eqz v3, :cond_38

    .line 58
    invoke-interface {v1, v2, v0}, Lcom/tapjoy/TJWebViewJSInterfaceListener;->onDispatchMethod(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_38} :catch_39

    .line 62
    :cond_38
    return-void

    .line 61
    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    return-void
.end method

.method public flushMessageQueue()V
    .registers 5

    .line 164
    iget-boolean v0, p0, Lcom/tapjoy/TJWebViewJSInterface;->d:Z

    if-nez v0, :cond_25

    .line 166
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 167
    iget-object v2, p0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    if-eqz v2, :cond_4

    .line 168
    new-instance v2, Lcom/tapjoy/TJWebViewJSInterface$a;

    iget-object v3, p0, Lcom/tapjoy/TJWebViewJSInterface;->a:Landroid/webkit/WebView;

    invoke-direct {v2, p0, v3}, Lcom/tapjoy/TJWebViewJSInterface$a;-><init>(Lcom/tapjoy/TJWebViewJSInterface;Landroid/webkit/WebView;)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/tapjoy/TJWebViewJSInterface$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 171
    :cond_23
    iput-boolean v1, p0, Lcom/tapjoy/TJWebViewJSInterface;->d:Z

    .line 173
    :cond_25
    return-void
.end method
