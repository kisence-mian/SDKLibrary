.class public Lcom/iab/omid/library/mintegral/b/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iab/omid/library/mintegral/b/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iab/omid/library/mintegral/b/d;

    invoke-direct {v0}, Lcom/iab/omid/library/mintegral/b/d;-><init>()V

    sput-object v0, Lcom/iab/omid/library/mintegral/b/d;->a:Lcom/iab/omid/library/mintegral/b/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/iab/omid/library/mintegral/b/d;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/b/d;->a:Lcom/iab/omid/library/mintegral/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .registers 4

    const-string v0, "finishSession"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;F)V
    .registers 7

    const-string v0, "setDeviceVolume"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Lcom/iab/omid/library/mintegral/adsession/ErrorType;Ljava/lang/String;)V
    .registers 8

    const-string v0, "error"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/ErrorType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_11

    const-string v0, "publishVideoEvent"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return-void

    :cond_11
    const-string v0, "publishVideoEvent"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "startSession"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method varargs a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "javascript: if(window.omidBridge!==undefined){omidBridge."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p3}, Lcom/iab/omid/library/mintegral/b/d;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/StringBuilder;)V

    :goto_21
    return-void

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The WebView is null for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/c;->a(Ljava/lang/String;)V

    goto :goto_21
.end method

.method a(Landroid/webkit/WebView;Ljava/lang/StringBuilder;)V
    .registers 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_18

    :cond_14
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    new-instance v2, Lcom/iab/omid/library/mintegral/b/d$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/iab/omid/library/mintegral/b/d$1;-><init>(Lcom/iab/omid/library/mintegral/b/d;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17
.end method

.method public a(Landroid/webkit/WebView;Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "init"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .registers 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/16 v4, 0x22

    if-eqz p2, :cond_4b

    array-length v0, p2

    if-lez v0, :cond_4b

    array-length v1, p2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_42

    aget-object v2, p2, v0

    if-nez v2, :cond_1e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_16
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1e
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3e

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_32
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_3e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_4b
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_20

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public b(Landroid/webkit/WebView;)V
    .registers 4

    const-string v0, "publishImpressionEvent"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_d

    const-string v0, "var script=document.createElement(\'script\');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);"

    const-string v1, "%SCRIPT_SRC%"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    :cond_d
    return-void
.end method

.method public c(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    const-string v0, "setNativeViewHierarchy"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    const-string v0, "setState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
