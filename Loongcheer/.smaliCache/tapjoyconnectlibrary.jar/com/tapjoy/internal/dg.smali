.class public final Lcom/tapjoy/internal/dg;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tapjoy/internal/dg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/dg;

    invoke-direct {v0}, Lcom/tapjoy/internal/dg;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dg;->a:Lcom/tapjoy/internal/dg;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/tapjoy/internal/dg;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/dg;->a:Lcom/tapjoy/internal/dg;

    return-object v0
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/StringBuilder;)V
    .registers 6

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_15

    goto :goto_1e

    :cond_15
    new-instance v1, Lcom/tapjoy/internal/dg$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/dg$1;-><init>(Lcom/tapjoy/internal/dg;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1e
    :goto_1e
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .registers 7

    if-eqz p1, :cond_48

    array-length v0, p1

    if-lez v0, :cond_48

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_3f

    aget-object v2, p1, v1

    const/16 v3, 0x22

    if-nez v2, :cond_17

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_17
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_34

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_2b
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_13

    :cond_34
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_37
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_48
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_17

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "javascript: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;F)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "setDeviceVolume"

    invoke-virtual {p0, p1, p2, v0}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "publishMediaEvent"

    if-eqz p3, :cond_11

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    aput-object p3, v3, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_11
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, v2, p3}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    const-string p2, "startSession"

    invoke-virtual {p0, p1, p2, v0}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    if-eqz p1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "javascript: if(window.omidBridge!==undefined){omidBridge."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p3}, Lcom/tapjoy/internal/dg;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    const-string p2, ")}"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/StringBuilder;)V

    return-void

    :cond_22
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "The WebView is null for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/do;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "setNativeViewHierarchy"

    invoke-virtual {p0, p1, p2, v0}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "setState"

    invoke-virtual {p0, p1, p2, v0}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
