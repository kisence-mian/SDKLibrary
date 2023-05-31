.class public Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
.super Landroid/webkit/WebView;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;,
        Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;,
        Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;,
        Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;,
        Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;,
        Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;,
        Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;
    }
.end annotation


# static fields
.field private static final APP_CACHE_MAX_SIZE:I = 0x800000

.field private static final BRIDGE_NAME:Ljava/lang/String; = "webViewJavascriptInterface"

.field private static final EXEC_SCRIPT:I = 0x1

.field private static final HANDLE_MESSAGE:I = 0x4

.field private static final LOAD_URL:I = 0x2

.field private static final LOAD_URL_WITH_HEADERS:I = 0x3


# instance fields
.field private APP_CACHE_DIRNAME:Ljava/lang/String;

.field private alertboxBlock:Z

.field private javascriptCloseWindowListener:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field mainThreadHandler:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;

.field private messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private responseCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private startupMessageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueId:J

.field webChromeClient:Landroid/webkit/WebChromeClient;

.field webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 74
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;

    .line 75
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    .line 141
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    .line 142
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 143
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->uniqueId:J

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->alertboxBlock:Z

    .line 511
    new-instance v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V

    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 846
    new-instance v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V

    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 138
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->init()V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;

    .line 75
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    .line 141
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    .line 142
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 143
    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->uniqueId:J

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->alertboxBlock:Z

    .line 511
    new-instance v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$7;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V

    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 846
    new-instance v0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$8;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V

    iput-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 133
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->init()V

    .line 134
    return-void
.end method

.method private JSONObject2WebViewJavascriptBridgeMessage(Lorg/json/JSONObject;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    .registers 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 329
    new-instance v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;)V

    .line 331
    .local v1, "message":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    :try_start_6
    const-string v2, "callbackId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 332
    const-string v2, "callbackId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    .line 334
    :cond_16
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 335
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    .line 337
    :cond_26
    const-string v2, "handlerName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 338
    const-string v2, "handlerName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    .line 340
    :cond_36
    const-string v2, "responseId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 341
    const-string v2, "responseId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 343
    :cond_46
    const-string v2, "responseData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 344
    const-string v2, "responseData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_56} :catch_57

    .line 349
    :cond_56
    :goto_56
    return-object v1

    .line 346
    :catch_57
    move-exception v0

    .line 347
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_56
.end method

.method private _evaluateJavascript(Ljava/lang/String;)V
    .registers 4
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 445
    const/4 v0, 0x0

    # invokes: Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    invoke-static {p0, p1, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->access$801(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 449
    :goto_a
    return-void

    .line 447
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_a
.end method

.method static synthetic access$000(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->_evaluateJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$101(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->handleMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    .param p1, "x1"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->dispatchMessage(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    return-object v0
.end method

.method static synthetic access$801(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->alertboxBlock:Z

    return v0
.end method

.method private dispatchMessage(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    .registers 6
    .param p1, "message"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->message2JSONObject(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "messageJSON":Ljava/lang/String;
    const-string v1, "WebViewJavascriptBridge._handleMessageFromJava(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->evaluateJavascript(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private handleMessage(Ljava/lang/String;)V
    .registers 10
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 265
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 266
    .local v3, "jo":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->JSONObject2WebViewJavascriptBridgeMessage(Lorg/json/JSONObject;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    move-result-object v4

    .line 267
    .local v4, "message":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    iget-object v6, v4, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    if-eqz v6, :cond_1f

    .line 268
    iget-object v6, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    iget-object v7, v4, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 269
    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 270
    .local v5, "responseCallback":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    if-eqz v5, :cond_1e

    .line 271
    iget-object v6, v4, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    invoke-interface {v5, v6}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 297
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v4    # "message":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    .end local v5    # "responseCallback":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    :cond_1e
    :goto_1e
    return-void

    .line 274
    .restart local v3    # "jo":Lorg/json/JSONObject;
    .restart local v4    # "message":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    :cond_1f
    const/4 v5, 0x0

    .line 275
    .restart local v5    # "responseCallback":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    iget-object v6, v4, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    if-eqz v6, :cond_2b

    .line 276
    iget-object v0, v4, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    .line 277
    .local v0, "callbackId":Ljava/lang/String;
    new-instance v5, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$2;

    .end local v5    # "responseCallback":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    invoke-direct {v5, p0, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$2;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;)V

    .line 289
    .end local v0    # "callbackId":Ljava/lang/String;
    .restart local v5    # "responseCallback":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    :cond_2b
    iget-object v6, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    iget-object v7, v4, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;

    .line 290
    .local v2, "handler":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;
    if-eqz v2, :cond_1e

    .line 291
    iget-object v6, v4, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    invoke-interface {v2, v6, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;->handler(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_1e

    .line 294
    .end local v2    # "handler":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v4    # "message":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    .end local v5    # "responseCallback":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    :catch_3d
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method private message2JSONObject(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)Lorg/json/JSONObject;
    .registers 6
    .param p1, "message"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    .prologue
    .line 305
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 307
    .local v1, "jo":Lorg/json/JSONObject;
    :try_start_5
    iget-object v2, p1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 308
    const-string v2, "callbackId"

    iget-object v3, p1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    :cond_10
    iget-object v2, p1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    if-eqz v2, :cond_1b

    .line 311
    const-string v2, "data"

    iget-object v3, p1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    :cond_1b
    iget-object v2, p1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    if-eqz v2, :cond_26

    .line 314
    const-string v2, "handlerName"

    iget-object v3, p1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    :cond_26
    iget-object v2, p1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    if-eqz v2, :cond_31

    .line 317
    const-string v2, "responseId"

    iget-object v3, p1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    :cond_31
    iget-object v2, p1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    if-eqz v2, :cond_3c

    .line 320
    const-string v2, "responseData"

    iget-object v3, p1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3c} :catch_3d

    .line 325
    :cond_3c
    :goto_3c
    return-object v1

    .line 322
    :catch_3d
    move-exception v0

    .line 323
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3c
.end method

.method private declared-synchronized queueMessage(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    .prologue
    .line 250
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 251
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 255
    :goto_a
    monitor-exit p0

    return-void

    .line 253
    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->dispatchMessage(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_a

    .line 250
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendData(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;Ljava/lang/String;)V
    .registers 12
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "responseCallback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    .param p3, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 230
    if-nez p1, :cond_b

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 246
    :cond_a
    :goto_a
    return-void

    .line 233
    :cond_b
    new-instance v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;)V

    .line 234
    .local v1, "message":Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    if-eqz p1, :cond_15

    .line 235
    iput-object p1, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    .line 237
    :cond_15
    if-eqz p2, :cond_38

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "java_cb_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->uniqueId:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->uniqueId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "callbackId":Ljava/lang/String;
    iget-object v2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iput-object v0, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    .line 242
    .end local v0    # "callbackId":Ljava/lang/String;
    :cond_38
    if-eqz p3, :cond_3c

    .line 243
    iput-object p3, v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    .line 245
    :cond_3c
    invoke-direct {p0, v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->queueMessage(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    goto :goto_a
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;)V
    .registers 3
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    .line 174
    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    .line 178
    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 4
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "responseCallback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .prologue
    .line 182
    invoke-direct {p0, p2, p3, p1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->sendData(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->stopLoading()V

    .line 1086
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->clearMatches()V

    .line 1087
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->clearHistory()V

    .line 1088
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->clearDisappearingChildren()V

    .line 1089
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->clearAnimation()V

    .line 1090
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->removeAllViews()V

    .line 1091
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 1092
    return-void
.end method

.method public disableJavascriptAlertBoxSafetyTimeout(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .prologue
    .line 169
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->alertboxBlock:Z

    .line 170
    return-void

    .line 169
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1080
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .registers 5
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_e

    .line 458
    invoke-direct {p0, p1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->_evaluateJavascript(Ljava/lang/String;)V

    .line 465
    :goto_d
    return-void

    .line 460
    :cond_e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 461
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 462
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d
.end method

.method public getRegisteredHandlerNameList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 208
    :goto_b
    return-object v1

    .line 207
    :catch_c
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b
.end method

.method public hasJavascriptMethod(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;)V
    .registers 5
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;

    .prologue
    .line 191
    const-string v0, "_hasJavascriptMethod"

    new-instance v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;

    invoke-direct {v1, p0, p2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$1;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    .line 197
    return-void
.end method

.method init()V
    .registers 11
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/16 v9, 0x15

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 355
    new-instance v4, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/TapTapForumWebCache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->APP_CACHE_DIRNAME:Ljava/lang/String;

    .line 357
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 358
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    .line 359
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 361
    .local v3, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 362
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_5a

    .line 363
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v4, p0, v8}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 364
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 367
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 368
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 370
    .local v2, "method":Ljava/lang/reflect/Method;
    :try_start_5f
    const-string v4, "setAllowUniversalAccessFromFileURLs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5f .. :try_end_6c} :catch_fc

    move-result-object v2

    .line 375
    :goto_6d
    if-eqz v2, :cond_7d

    .line 377
    const/4 v4, 0x1

    :try_start_70
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catch Ljava/lang/IllegalAccessException; {:try_start_70 .. :try_end_7d} :catch_102
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_70 .. :try_end_7d} :catch_108

    .line 385
    :cond_7d
    :goto_7d
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 386
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 387
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 388
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 389
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 390
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 391
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 392
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 393
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 394
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 395
    iget-object v4, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->APP_CACHE_DIRNAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 396
    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 398
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_be

    .line 399
    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->isHardwareAccelerated()Z

    .line 400
    const-string v4, "searchBoxJavaBridge_"

    invoke-virtual {p0, v4}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 401
    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 402
    const-string v4, "accessibilityTraversal"

    invoke-virtual {p0, v4}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 404
    :cond_be
    iget-object v4, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-super {p0, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 405
    iget-object v4, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-super {p0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 406
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v9, :cond_d3

    invoke-virtual {p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 408
    :cond_d3
    const-string v4, "_hasNativeMethod"

    new-instance v5, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$3;

    invoke-direct {v5, p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$3;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V

    invoke-virtual {p0, v4, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 414
    const-string v4, "_closePage"

    new-instance v5, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$4;

    invoke-direct {v5, p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$4;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V

    invoke-virtual {p0, v4, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 423
    const-string v4, "_disableJavascriptAlertBoxSafetyTimeout"

    new-instance v5, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$5;

    invoke-direct {v5, p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$5;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V

    invoke-virtual {p0, v4, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 429
    new-instance v4, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$6;

    invoke-direct {v4, p0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$6;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;)V

    const-string v5, "webViewJavascriptInterface"

    invoke-super {p0, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    return-void

    .line 372
    :catch_fc
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_6d

    .line 378
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_102
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_7d

    .line 380
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_108
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_7d
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 475
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 476
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 477
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 478
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 491
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 492
    new-instance v1, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$RequestInfo;-><init>(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 493
    iget-object v1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 494
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public registerHandler(Ljava/lang/String;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V
    .registers 4
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;

    .prologue
    .line 221
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_b

    .line 225
    :cond_a
    :goto_a
    return-void

    .line 224
    :cond_b
    iget-object v0, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public setJavascriptCloseWindowListener(Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    .line 218
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 2
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    .line 504
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 2
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 509
    return-void
.end method
