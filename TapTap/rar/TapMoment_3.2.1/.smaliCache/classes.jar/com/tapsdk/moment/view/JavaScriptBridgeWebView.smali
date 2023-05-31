.class public Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
.super Landroid/webkit/WebView;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;,
        Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;,
        Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;,
        Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;,
        Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;,
        Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$RequestInfo;,
        Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;
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

.field private javascriptCloseWindowListener:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field mainThreadHandler:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;

.field private messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private responseCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private startupMessageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;",
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

    .line 131
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;

    .line 69
    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    .line 135
    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    .line 136
    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 137
    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->uniqueId:J

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->alertboxBlock:Z

    .line 504
    new-instance v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;

    invoke-direct {v0, p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 839
    new-instance v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;

    invoke-direct {v0, p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 132
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->init()V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;

    .line 69
    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    .line 135
    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    .line 136
    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 137
    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->uniqueId:J

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->alertboxBlock:Z

    .line 504
    new-instance v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;

    invoke-direct {v0, p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$7;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 839
    new-instance v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;

    invoke-direct {v0, p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$8;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 127
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->init()V

    .line 128
    return-void
.end method

.method private JSONObject2WebViewJavascriptBridgeMessage(Lorg/json/JSONObject;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    .registers 9
    .param p1, "jo"    # Lorg/json/JSONObject;

    .line 323
    const-string v0, "responseData"

    const-string v1, "responseId"

    const-string v2, "handlerName"

    const-string v3, "data"

    const-string v4, "callbackId"

    new-instance v5, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;)V

    .line 325
    .local v5, "message":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    :try_start_10
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 326
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    .line 328
    :cond_1c
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 329
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v5, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    .line 331
    :cond_28
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 332
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    .line 334
    :cond_34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 335
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 337
    :cond_40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 338
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v5, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_4c} :catch_4d

    .line 342
    :cond_4c
    goto :goto_51

    .line 340
    :catch_4d
    move-exception v0

    .line 341
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 343
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_51
    return-object v5
.end method

.method private _evaluateJavascript(Ljava/lang/String;)V
    .registers 4
    .param p1, "script"    # Ljava/lang/String;

    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 438
    const/4 v0, 0x0

    # invokes: Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    invoke-static {p0, p1, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->access$801(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_21

    .line 440
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

    invoke-virtual {p0, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->loadUrl(Ljava/lang/String;)V

    .line 442
    :goto_21
    return-void
.end method

.method static synthetic access$000(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->_evaluateJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 56
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$101(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .line 56
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->handleMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    .param p1, "x1"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    .line 56
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->dispatchMessage(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 56
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 56
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    return-object v0
.end method

.method static synthetic access$801(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/webkit/ValueCallback;

    .line 56
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    .line 56
    iget-boolean v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->alertboxBlock:Z

    return v0
.end method

.method private dispatchMessage(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    .registers 5
    .param p1, "message"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    .line 252
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->message2JSONObject(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "messageJSON":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "WebViewJavascriptBridge._handleMessageFromJava(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->evaluateJavascript(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private handleMessage(Ljava/lang/String;)V
    .registers 7
    .param p1, "info"    # Ljava/lang/String;

    .line 259
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "jo":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->JSONObject2WebViewJavascriptBridgeMessage(Lorg/json/JSONObject;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    move-result-object v1

    .line 261
    .local v1, "message":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    iget-object v2, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 262
    iget-object v2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    iget-object v3, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 263
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 264
    .local v2, "responseCallback":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    if-eqz v2, :cond_1e

    .line 265
    iget-object v3, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 267
    .end local v2    # "responseCallback":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    :cond_1e
    goto :goto_3d

    .line 268
    :cond_1f
    const/4 v2, 0x0

    .line 269
    .restart local v2    # "responseCallback":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    iget-object v3, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    if-eqz v3, :cond_2c

    .line 270
    iget-object v3, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    .line 271
    .local v3, "callbackId":Ljava/lang/String;
    new-instance v4, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$2;

    invoke-direct {v4, p0, v3}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$2;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;)V

    move-object v2, v4

    .line 283
    .end local v3    # "callbackId":Ljava/lang/String;
    :cond_2c
    iget-object v3, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    iget-object v4, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;

    .line 284
    .local v3, "handler":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;
    if-eqz v3, :cond_3d

    .line 285
    iget-object v4, v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;->handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 290
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v1    # "message":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    .end local v2    # "responseCallback":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    .end local v3    # "handler":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;
    :cond_3d
    :goto_3d
    goto :goto_42

    .line 288
    :catch_3e
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_42
    return-void
.end method

.method private message2JSONObject(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)Lorg/json/JSONObject;
    .registers 5
    .param p1, "message"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    .line 299
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 301
    .local v0, "jo":Lorg/json/JSONObject;
    :try_start_5
    iget-object v1, p1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 302
    const-string v1, "callbackId"

    iget-object v2, p1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    :cond_10
    iget-object v1, p1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    if-eqz v1, :cond_1b

    .line 305
    const-string v1, "data"

    iget-object v2, p1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    :cond_1b
    iget-object v1, p1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 308
    const-string v1, "handlerName"

    iget-object v2, p1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    :cond_26
    iget-object v1, p1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 311
    const-string v1, "responseId"

    iget-object v2, p1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    :cond_31
    iget-object v1, p1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    .line 314
    const-string v1, "responseData"

    iget-object v2, p1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3c} :catch_3d

    .line 318
    :cond_3c
    goto :goto_41

    .line 316
    :catch_3d
    move-exception v1

    .line 317
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 319
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_41
    return-object v0
.end method

.method private declared-synchronized queueMessage(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    monitor-enter p0

    .line 244
    :try_start_1
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 245
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 247
    .end local p0    # "this":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    :cond_9
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->dispatchMessage(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 249
    :goto_c
    monitor-exit p0

    return-void

    .line 243
    .end local p1    # "message":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendData(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;Ljava/lang/String;)V
    .registers 10
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "responseCallback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    .param p3, "handlerName"    # Ljava/lang/String;

    .line 224
    if-nez p1, :cond_b

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 225
    :cond_a
    return-void

    .line 227
    :cond_b
    new-instance v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;)V

    .line 228
    .local v0, "message":Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;
    if-eqz p1, :cond_15

    .line 229
    iput-object p1, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->data:Ljava/lang/Object;

    .line 231
    :cond_15
    if-eqz p2, :cond_38

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java_cb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->uniqueId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->uniqueId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "callbackId":Ljava/lang/String;
    iget-object v2, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iput-object v1, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->callbackId:Ljava/lang/String;

    .line 236
    .end local v1    # "callbackId":Ljava/lang/String;
    :cond_38
    if-eqz p3, :cond_3c

    .line 237
    iput-object p3, v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->handlerName:Ljava/lang/String;

    .line 239
    :cond_3c
    invoke-direct {p0, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->queueMessage(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    .line 240
    return-void
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;)V
    .registers 3
    .param p1, "handlerName"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    .line 168
    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    .line 172
    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 4
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "responseCallback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 176
    invoke-direct {p0, p2, p3, p1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->sendData(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public destroy()V
    .registers 1

    .line 1078
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->stopLoading()V

    .line 1079
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->clearMatches()V

    .line 1080
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->clearHistory()V

    .line 1081
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->clearDisappearingChildren()V

    .line 1082
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->clearAnimation()V

    .line 1083
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->removeAllViews()V

    .line 1084
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 1085
    return-void
.end method

.method public disableJavascriptAlertBoxSafetyTimeout(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .line 163
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->alertboxBlock:Z

    .line 164
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1073
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .registers 4
    .param p1, "script"    # Ljava/lang/String;

    .line 450
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 451
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->_evaluateJavascript(Ljava/lang/String;)V

    goto :goto_1d

    .line 453
    :cond_e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 454
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 455
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 456
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {v1, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1d
    return-void
.end method

.method public getRegisteredHandlerNameList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 201
    :catch_c
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public hasJavascriptMethod(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;)V
    .registers 5
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;

    .line 185
    new-instance v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;

    invoke-direct {v0, p0, p2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$1;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeMethodExistCallback;)V

    const-string v1, "_hasJavascriptMethod"

    invoke-virtual {p0, v1, p1, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    .line 191
    return-void
.end method

.method init()V
    .registers 10

    .line 348
    new-instance v0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/TapTapForumWebCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->APP_CACHE_DIRNAME:Ljava/lang/String;

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->responseCallbacks:Ljava/util/Map;

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->startupMessageQueue:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 354
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 355
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_5a

    .line 356
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 357
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 360
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 361
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 363
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_5f
    const-string v6, "setAllowUniversalAccessFromFileURLs"

    new-array v7, v1, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5f .. :try_end_6b} :catch_6d

    move-object v5, v6

    .line 367
    goto :goto_71

    .line 365
    :catch_6d
    move-exception v6

    .line 366
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 368
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :goto_71
    if-eqz v5, :cond_88

    .line 370
    :try_start_73
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/IllegalAccessException; {:try_start_73 .. :try_end_7e} :catch_84
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_73 .. :try_end_7e} :catch_7f

    goto :goto_88

    .line 373
    :catch_7f
    move-exception v4

    .line 374
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_88

    .line 371
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_84
    move-exception v4

    .line 372
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 378
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :cond_88
    :goto_88
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 379
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 380
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 381
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 383
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 384
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 386
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 388
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->APP_CACHE_DIRNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 389
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 391
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_c9

    .line 392
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->isHardwareAccelerated()Z

    .line 393
    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {p0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 394
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 395
    const-string v1, "accessibilityTraversal"

    invoke-virtual {p0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 397
    :cond_c9
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-super {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 398
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-super {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 399
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_de

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 401
    :cond_de
    new-instance v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$3;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$3;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V

    const-string v3, "_hasNativeMethod"

    invoke-virtual {p0, v3, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 407
    new-instance v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$4;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$4;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V

    const-string v3, "_closePage"

    invoke-virtual {p0, v3, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 416
    new-instance v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$5;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$5;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V

    const-string v3, "_disableJavascriptAlertBoxSafetyTimeout"

    invoke-virtual {p0, v3, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V

    .line 422
    new-instance v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$6;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$6;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;)V

    const-string v3, "webViewJavascriptInterface"

    invoke-super {p0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .line 468
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 469
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 470
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {v1, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 472
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 483
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 484
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 485
    new-instance v1, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$RequestInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$RequestInfo;-><init>(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 486
    iget-object v1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {v1, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 295
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public registerHandler(Ljava/lang/String;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;)V
    .registers 4
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;

    .line 215
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    if-nez p2, :cond_b

    goto :goto_11

    .line 218
    :cond_b
    iget-object v0, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void

    .line 216
    :cond_11
    :goto_11
    return-void
.end method

.method public setJavascriptCloseWindowListener(Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    .line 211
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->javascriptCloseWindowListener:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    .line 212
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 2
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .line 496
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    .line 497
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 2
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .line 501
    iput-object p1, p0, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 502
    return-void
.end method
