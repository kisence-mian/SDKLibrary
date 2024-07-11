.class public Lcom/tapjoy/TJEventOptimizer;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJEventOptimizer$a;,
        Lcom/tapjoy/TJEventOptimizer$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/tapjoy/TJEventOptimizer;

.field private static c:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-string v0, "TJEventOptimizer"

    sput-object v0, Lcom/tapjoy/TJEventOptimizer;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer;->d:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/tapjoy/TJEventOptimizer;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 32
    :try_start_e
    invoke-virtual {p0}, Lcom/tapjoy/TJEventOptimizer;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 33
    new-instance v0, Lcom/tapjoy/TJEventOptimizer$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/tapjoy/TJEventOptimizer$b;-><init>(Lcom/tapjoy/TJEventOptimizer;B)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJEventOptimizer;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 34
    new-instance v0, Lcom/tapjoy/TJEventOptimizer$a;

    invoke-direct {v0, p0, v2}, Lcom/tapjoy/TJEventOptimizer$a;-><init>(Lcom/tapjoy/TJEventOptimizer;B)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJEventOptimizer;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "events/proxy?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJEventOptimizer;->loadUrl(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4d} :catch_4e

    .line 40
    return-void

    .line 38
    :catch_4e
    move-exception v0

    .line 39
    sget-object v1, Lcom/tapjoy/TJEventOptimizer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0, p1}, Lcom/tapjoy/TJEventOptimizer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJEventOptimizer;)Lcom/tapjoy/TJEventOptimizer;
    .registers 1

    .line 17
    sput-object p0, Lcom/tapjoy/TJEventOptimizer;->b:Lcom/tapjoy/TJEventOptimizer;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 17
    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->c:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic c()Lcom/tapjoy/TJEventOptimizer;
    .registers 1

    .line 17
    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->b:Lcom/tapjoy/TJEventOptimizer;

    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TJEventOptimizer;
    .registers 1

    .line 76
    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->b:Lcom/tapjoy/TJEventOptimizer;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->a:Ljava/lang/String;

    const-string v1, "Initializing event optimizer"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/tapjoy/TJEventOptimizer;->c:Ljava/util/concurrent/CountDownLatch;

    .line 51
    new-instance v0, Lcom/tapjoy/TJEventOptimizer$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJEventOptimizer$1;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 67
    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 69
    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->b:Lcom/tapjoy/TJEventOptimizer;

    if-eqz v0, :cond_21

    .line 72
    return-void

    .line 70
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to init TJEventOptimizer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
