.class public Lcom/sigmob/sdk/mraid/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid/a$a;,
        Lcom/sigmob/sdk/mraid/a$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private b:Ljava/lang/String;

.field private final c:Lcom/sigmob/sdk/base/models/PlacementType;

.field private final d:Lcom/sigmob/sdk/mraid/f;

.field private e:Lcom/sigmob/sdk/mraid/a$b;

.field private f:Lcom/sigmob/sdk/mraid/MraidWebView;

.field private g:Lcom/sigmob/sdk/base/common/w;

.field private h:Z

.field private final i:Landroid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/mraid/f;

    invoke-direct {v0}, Lcom/sigmob/sdk/mraid/f;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/mraid/a;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/f;)V

    return-void
.end method

.method constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/f;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/mraid/a$4;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/a$4;-><init>(Lcom/sigmob/sdk/mraid/a;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/a;->i:Landroid/webkit/WebViewClient;

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/a;->c:Lcom/sigmob/sdk/base/models/PlacementType;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/a;->d:Lcom/sigmob/sdk/mraid/f;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/a;)Lcom/sigmob/sdk/mraid/a$b;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_15

    const-string p0, "message"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    if-eqz p2, :cond_1c

    const-string p0, "data"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-object p0

    :catchall_21
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;
    .registers 3

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/a;->h(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/sigmob/sdk/mraid/e;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.nativeCallComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid/e;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.notifyErrorEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .registers 3

    if-nez p1, :cond_3

    return p2

    :cond_3
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/a;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/a;)Lcom/sigmob/sdk/base/common/w;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/a;->g:Lcom/sigmob/sdk/base/common/w;

    return-object p0
.end method

.method private b(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .registers 5

    if-nez p1, :cond_8

    :try_start_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    :try_start_f
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception p2

    new-instance p2, Lcom/sigmob/sdk/mraid/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URL parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic c(Lcom/sigmob/sdk/mraid/a;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method static synthetic d(Lcom/sigmob/sdk/mraid/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/a;->i()V

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "undefined"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_16

    :cond_15
    return-object p0

    :cond_16
    :goto_16
    return-object v0
.end method

.method private f(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/g;
    .registers 5

    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p1, Lcom/sigmob/sdk/mraid/g;->a:Lcom/sigmob/sdk/mraid/g;

    return-object p1

    :cond_b
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p1, Lcom/sigmob/sdk/mraid/g;->b:Lcom/sigmob/sdk/mraid/g;

    return-object p1

    :cond_16
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object p1, Lcom/sigmob/sdk/mraid/g;->c:Lcom/sigmob/sdk/mraid/g;

    return-object p1

    :cond_21
    new-instance v0, Lcom/sigmob/sdk/mraid/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    new-instance v0, Lcom/sigmob/sdk/mraid/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid boolean parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h(Ljava/lang/String;)Ljava/net/URI;
    .registers 5

    if-eqz p1, :cond_22

    :try_start_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    new-instance v0, Lcom/sigmob/sdk/mraid/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance p1, Lcom/sigmob/sdk/mraid/b;

    const-string v0, "Parameter cannot be null"

    invoke-direct {p1, v0}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i()V
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/a;->h:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/a;->h:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/a$b;->a()V

    :cond_f
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/location/Location;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setLocation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Landroid/webkit/RenderProcessGoneDetail;)V
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/sigmob/sdk/common/models/SigmobError;

    goto :goto_d

    :cond_b
    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/sigmob/sdk/common/models/SigmobError;

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRenderProcessGone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/a;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    if-eqz v0, :cond_31

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/a$b;->a(Lcom/sigmob/sdk/common/models/SigmobError;)V

    :cond_31
    return-void
.end method

.method a(Landroid/webkit/ValueCallback;)V
    .registers 3

    const-string v0, "mraidbridge.getPlayProgress();"

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/mraid/a;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/CurrentAppOrientation;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "="

    const-string v2, ":"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "});"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/ExposureChange;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ExposureChange;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "="

    const-string v2, ":"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "});"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/PlacementType;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setPlacementType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/PlacementType;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/VideoItem;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sigmob.fireChangeEvent({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/VideoItem;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "="

    const-string v2, ":"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "});"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/ViewState;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ViewState;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;)V
    .registers 4

    const-string v0, "ad"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/common/d/b;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sigmob.fireChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)V
    .registers 4

    const-string v0, "material"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/common/d/b;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sigmob.fireChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sigmob.fireChangeEvent({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->has_companion_endcard:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->RvSettingToString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "="

    const-string v2, ":"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "});"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/MraidWebView;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->c:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v2, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne v0, v2, :cond_1e

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_1e
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->setScrollContainer(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->i:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v0, Lcom/sigmob/sdk/mraid/a$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/a$1;-><init>(Lcom/sigmob/sdk/mraid/a;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Lcom/sigmob/sdk/base/common/w;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/a;->g:Lcom/sigmob/sdk/base/common/w;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v0, Lcom/sigmob/sdk/mraid/a$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/a$2;-><init>(Lcom/sigmob/sdk/mraid/a;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v0, Lcom/sigmob/sdk/mraid/a$3;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/a$3;-><init>(Lcom/sigmob/sdk/mraid/a;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->setVisibilityChangedListener(Lcom/sigmob/sdk/mraid/MraidWebView$a;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/mraid/a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    return-void
.end method

.method a(Lcom/sigmob/sdk/mraid/e;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/mraid/e;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    if-eqz v0, :cond_f4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_ec

    sget-object v0, Lcom/sigmob/sdk/mraid/a$6;->a:[I

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "event"

    const-string v2, "uri"

    const/4 v3, 0x0

    const-string v4, "shouldUseCustomClose"

    const-string v5, "url"

    packed-switch v0, :pswitch_data_fc

    goto/16 :goto_eb

    :pswitch_1e
    new-instance p1, Lcom/sigmob/sdk/mraid/b;

    const-string p2, "Unspecified MRAID Javascript command"

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_26
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/mraid/a$b;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_eb

    :pswitch_33
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/mraid/a$b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_eb

    :pswitch_40
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->d:Lcom/sigmob/sdk/mraid/f;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/sigmob/sdk/mraid/f;->a(Landroid/content/Context;Ljava/util/Map;)V

    goto/16 :goto_eb

    :pswitch_4d
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/mraid/a;->h(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->d:Lcom/sigmob/sdk/mraid/f;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/sigmob/sdk/mraid/a$5;

    invoke-direct {v2, p0, p1}, Lcom/sigmob/sdk/mraid/a$5;-><init>(Lcom/sigmob/sdk/mraid/a;Lcom/sigmob/sdk/mraid/e;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/sigmob/sdk/mraid/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/mraid/f$a;)V

    goto/16 :goto_eb

    :pswitch_6d
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/a;->h(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/mraid/a$b;->a(Ljava/net/URI;)V

    goto :goto_eb

    :pswitch_7d
    const-string p1, "allowOrientationChange"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/a;->g(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "forceOrientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/mraid/a;->f(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/g;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/mraid/a$b;->a(ZLcom/sigmob/sdk/mraid/g;)V

    goto :goto_eb

    :pswitch_9b
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "https://m.sigmob.com"

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/mraid/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    const-string v0, "ext"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    invoke-interface {v0, p1, v1, p2}, Lcom/sigmob/sdk/mraid/a$b;->a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;)V

    goto :goto_eb

    :pswitch_bb
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/sigmob/sdk/mraid/a;->a(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/mraid/a$b;->b(Z)V

    goto :goto_eb

    :pswitch_cb
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/mraid/a;->a(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, v3}, Lcom/sigmob/sdk/mraid/a;->a(Ljava/lang/String;Z)Z

    move-result p2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/mraid/a$b;->a(Ljava/net/URI;Z)V

    goto :goto_eb

    :pswitch_e6
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/a$b;->c()V

    :goto_eb
    :pswitch_eb
    return-void

    :cond_ec
    new-instance p1, Lcom/sigmob/sdk/mraid/b;

    const-string p2, "The current WebView is being destroyed"

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f4
    new-instance p1, Lcom/sigmob/sdk/mraid/b;

    const-string p2, "Invalid state to execute this command"

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_eb
        :pswitch_cb
        :pswitch_bb
        :pswitch_9b
        :pswitch_7d
        :pswitch_6d
        :pswitch_4d
        :pswitch_40
        :pswitch_33
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method public a(Lcom/sigmob/sdk/mraid/h;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setScreenSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/a;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraidbridge.setMaxSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/a;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraidbridge.setCurrentPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->c()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraidbridge.setDefaultPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraidbridge.notifySizeChangeEvent("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->c()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/a;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_a

    const-string p1, "MRAID bridge called setContentHtml before WebView was attached"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v1, Lcom/sigmob/sdk/mraid/a$a;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/mraid/a$a;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v2, "sigandroid"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/MraidWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/a;->h:Z

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "://localhost/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sigmob/sdk/mraid/MraidWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_1b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Injecting Javascript into MRAID WebView:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/MraidWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_53

    :cond_3d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Injecting Javascript into MRAID WebView:\n\t can\'t support less KITKAT"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_53
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const-string v1, "%s,%s,%s,%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    instance-of v1, v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v1, "_DOWNX_"

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_DOWNY_"

    invoke-virtual {v0, v1, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_UPX_"

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_UPY_"

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method a(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setIsViewable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(ZZZZZZZ)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setSupports("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method b()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    :cond_a
    return-void
.end method

.method b(Landroid/webkit/ValueCallback;)V
    .registers 3

    const-string v0, "mraidbridge.getAdDuration();"

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/mraid/a;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_a

    const-string p1, "MRAID bridge called setContentHtml while WebView was not attached"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v1, Lcom/sigmob/sdk/mraid/a$a;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/mraid/a$a;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v2, "sigandroid"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/MraidWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/a;->h:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method c()V
    .registers 2

    const-string v0, "mraidbridge.notifyReadyEvent();"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Injecting Javascript into MRAID WebView:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_56

    :cond_3e
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->loadUrl(Ljava/lang/String;)V

    :goto_56
    return-void
.end method

.method d()V
    .registers 2

    const-string v0, "mraidbridge.startAd();"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method d(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_9b

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sigmob"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string p1, "failLoad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->c:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v1, Lcom/sigmob/sdk/base/models/PlacementType;->INLINE:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne p1, v1, :cond_2f

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a$b;

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/a$b;->b()V

    :cond_2f
    return v0

    :cond_30
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/a;->e()Z

    move-result v4

    const-string v5, "mraid"

    if-eqz v4, :cond_7b

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    :try_start_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mraid://open?url="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2
    :try_end_63
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_63} :catch_64

    goto :goto_7b

    :catch_64
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid MRAID URL encoding: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_99

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/e;->a(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/e;

    move-result-object p1

    :try_start_85
    invoke-static {v1}, Lcom/sigmob/sdk/common/a;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/e;Ljava/util/Map;)V
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_8d

    goto :goto_95

    :catchall_8d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/e;Ljava/lang/String;)V

    :goto_95
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/e;)V

    return v0

    :cond_99
    const/4 p1, 0x0

    return p1

    :catch_9b
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MRAID URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/sdk/mraid/e;->l:Lcom/sigmob/sdk/mraid/e;

    const-string v1, "Mraid command sent an invalid URL"

    invoke-direct {p0, p1, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/e;Ljava/lang/String;)V

    return v0
.end method

.method e()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->g:Lcom/sigmob/sdk/base/common/w;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/w;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method f()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method g()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/a;->h:Z

    return v0
.end method
