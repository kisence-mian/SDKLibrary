.class public Lcom/sigmob/sdk/mraid/d;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "mraid://open?url="


# instance fields
.field private final b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private c:Ljava/lang/String;

.field private final d:Lcom/sigmob/sdk/base/models/PlacementType;

.field private final e:Lcom/sigmob/sdk/mraid/s;

.field private f:Lcom/sigmob/sdk/mraid/f;

.field private g:Lcom/sigmob/sdk/mraid/MraidWebView;

.field private h:Lcom/sigmob/sdk/base/common/ae;

.field private i:Z

.field private final j:Landroid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/mraid/s;

    invoke-direct {v0}, Lcom/sigmob/sdk/mraid/s;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/mraid/d;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/s;)V

    return-void
.end method

.method constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/s;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/mraid/d$4;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/d$4;-><init>(Lcom/sigmob/sdk/mraid/d;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/d;->j:Landroid/webkit/WebViewClient;

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/d;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/d;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/d;->e:Lcom/sigmob/sdk/mraid/s;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/mraid/a;)Lcom/sigmob/sdk/mraid/a;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    const-string v0, "top-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p2, Lcom/sigmob/sdk/mraid/a;->a:Lcom/sigmob/sdk/mraid/a;

    goto :goto_6

    :cond_12
    const-string v0, "top-right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object p2, Lcom/sigmob/sdk/mraid/a;->c:Lcom/sigmob/sdk/mraid/a;

    goto :goto_6

    :cond_1d
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object p2, Lcom/sigmob/sdk/mraid/a;->d:Lcom/sigmob/sdk/mraid/a;

    goto :goto_6

    :cond_28
    const-string v0, "bottom-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object p2, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a;

    goto :goto_6

    :cond_33
    const-string v0, "bottom-right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object p2, Lcom/sigmob/sdk/mraid/a;->g:Lcom/sigmob/sdk/mraid/a;

    goto :goto_6

    :cond_3e
    const-string v0, "top-center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object p2, Lcom/sigmob/sdk/mraid/a;->b:Lcom/sigmob/sdk/mraid/a;

    goto :goto_6

    :cond_49
    const-string v0, "bottom-center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object p2, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/a;

    goto :goto_6

    :cond_54
    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid close position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/mraid/f;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    if-eqz p2, :cond_1c

    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method private a(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/d;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/d;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-object p2

    :cond_3
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/d;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    goto :goto_2
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/d;Lcom/sigmob/sdk/mraid/r;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/r;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid/r;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.nativeCallComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid/r;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.notifyErrorEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return p2

    :cond_3
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/d;->h(Ljava/lang/String;)Z

    move-result p2

    goto :goto_2
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/base/common/ae;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->h:Lcom/sigmob/sdk/base/common/ae;

    return-object v0
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

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic d(Lcom/sigmob/sdk/mraid/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/d;->k()V

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move-object p0, v0

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "undefined"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_15
    move-object p0, v0

    goto :goto_4
.end method

.method private g(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/v;
    .registers 5

    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sigmob/sdk/mraid/v;->a:Lcom/sigmob/sdk/mraid/v;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/sigmob/sdk/mraid/v;->b:Lcom/sigmob/sdk/mraid/v;

    goto :goto_a

    :cond_16
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/sigmob/sdk/mraid/v;->c:Lcom/sigmob/sdk/mraid/v;

    goto :goto_a

    :cond_21
    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_9

    :cond_14
    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid boolean parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i(Ljava/lang/String;)Ljava/net/URI;
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    const-string v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_a
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/d;->i:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/d;->i:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/f;->a()V

    goto :goto_4
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/location/Location;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setLocation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Landroid/webkit/RenderProcessGoneDetail;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/sigmob/sdk/base/models/SigmobError;

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRenderProcessGone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/d;->b()V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/mraid/f;->a(Lcom/sigmob/sdk/base/models/SigmobError;)V

    :cond_30
    return-void

    :cond_31
    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/sigmob/sdk/base/models/SigmobError;

    goto :goto_a
.end method

.method a(Landroid/webkit/ValueCallback;)V
    .registers 3

    const-string v0, "mraidbridge.getPlayProgress();"

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/mraid/d;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/AppInfo;)V
    .registers 2

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/CurrentAppOrientation;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    const-string v3, ":"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/ExposureChange;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ExposureChange;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    const-string v3, ":"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

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

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/VideoItem;)V
    .registers 5

    const-string v0, "video"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/c/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sigmob.fireChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

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

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)V
    .registers 5

    const-string v0, "material"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/c/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sigmob.fireChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sigmob.fireChangeEvent({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->RvSettingToString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    const-string v3, ":"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/MraidWebView;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_20

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v1, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne v0, v1, :cond_20

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_20
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/MraidWebView;->setScrollContainer(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/MraidWebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/MraidWebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/MraidWebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->j:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Lcom/sigmob/sdk/mraid/d$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/d$1;-><init>(Lcom/sigmob/sdk/mraid/d;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/sigmob/sdk/base/common/ae;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/d;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/ae;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/d;->h:Lcom/sigmob/sdk/base/common/ae;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Lcom/sigmob/sdk/mraid/d$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/d$2;-><init>(Lcom/sigmob/sdk/mraid/d;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Lcom/sigmob/sdk/mraid/d$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/d$3;-><init>(Lcom/sigmob/sdk/mraid/d;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->a(Lcom/sigmob/sdk/mraid/y;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/mraid/f;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    return-void
.end method

.method a(Lcom/sigmob/sdk/mraid/r;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/mraid/r;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    if-nez v0, :cond_d

    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    const-string v1, "Invalid state to execute this command"

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_19

    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    const-string v1, "The current WebView is being destroyed"

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    sget-object v0, Lcom/sigmob/sdk/mraid/d$6;->a:[I

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_110

    :goto_24
    :pswitch_24
    return-void

    :pswitch_25
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/f;->c()V

    goto :goto_24

    :pswitch_2b
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    const-string v0, "shouldUseCustomClose"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/mraid/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    invoke-interface {v2, v1, v0}, Lcom/sigmob/sdk/mraid/f;->a(Ljava/net/URI;Z)V

    goto :goto_24

    :pswitch_4a
    const-string v0, "shouldUseCustomClose"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/mraid/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/mraid/f;->b(Z)V

    goto :goto_24

    :pswitch_5c
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/d;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const-string v0, "x"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "y"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    sget-object v4, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    invoke-interface {v3, v1, v4, v2, v0}, Lcom/sigmob/sdk/mraid/f;->a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :pswitch_88
    const-string v0, "allowOrientationChange"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/d;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "forceOrientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/d;->g(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/v;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    invoke-interface {v2, v1, v0}, Lcom/sigmob/sdk/mraid/f;->a(ZLcom/sigmob/sdk/mraid/v;)V

    goto/16 :goto_24

    :pswitch_a7
    const-string v0, "uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/d;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/mraid/f;->a(Ljava/net/URI;)V

    goto/16 :goto_24

    :pswitch_ba
    const-string v0, "uri"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/d;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->e:Lcom/sigmob/sdk/mraid/s;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/sigmob/sdk/mraid/d$5;

    invoke-direct {v3, p0, p1}, Lcom/sigmob/sdk/mraid/d$5;-><init>(Lcom/sigmob/sdk/mraid/d;Lcom/sigmob/sdk/mraid/r;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/sigmob/sdk/mraid/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/mraid/t;)V

    goto/16 :goto_24

    :pswitch_dc
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->e:Lcom/sigmob/sdk/mraid/s;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sigmob/sdk/mraid/s;->a(Landroid/content/Context;Ljava/util/Map;)V

    goto/16 :goto_24

    :pswitch_e9
    const-string v0, "event"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    invoke-interface {v1, v0, p2}, Lcom/sigmob/sdk/mraid/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_24

    :pswitch_f8
    const-string v0, "event"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    invoke-interface {v1, v0, p2}, Lcom/sigmob/sdk/mraid/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_24

    :pswitch_107
    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    const-string v1, "Unspecified MRAID Javascript command"

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_2b
        :pswitch_4a
        :pswitch_5c
        :pswitch_88
        :pswitch_a7
        :pswitch_ba
        :pswitch_dc
        :pswitch_e9
        :pswitch_f8
        :pswitch_107
    .end packed-switch
.end method

.method public a(Lcom/sigmob/sdk/mraid/w;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setScreenSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/w;->c()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/d;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraidbridge.setMaxSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/w;->e()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/d;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraidbridge.setCurrentPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/w;->g()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraidbridge.setDefaultPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/w;->i()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.notifySizeChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/w;->g()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/d;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface",
            "AddJavascriptInterface"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_a

    const-string v0, "MRAID bridge called setContentHtml before WebView was attached"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Lcom/sigmob/sdk/mraid/e;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/d;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/mraid/e;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v2, "sigandroid"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/MraidWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/d;->i:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://localhost/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/mraid/MraidWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :goto_1a
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

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/MraidWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1a

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Injecting Javascript into MRAID WebView:\n\t can\'t support less KITKAT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "%s,%s,%s,%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    instance-of v0, v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v0, :cond_40

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_DOWNX_"

    invoke-virtual {v0, v2, p1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_DOWNY_"

    invoke-virtual {v0, v2, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_UPX_"

    invoke-virtual {v0, v2, p1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v0, "_UPY_"

    invoke-virtual {v1, v0, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
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

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

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

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method b()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    :cond_c
    return-void
.end method

.method b(Landroid/webkit/ValueCallback;)V
    .registers 3

    const-string v0, "mraidbridge.getAdDuration();"

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/mraid/d;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_a

    const-string v0, "MRAID bridge called setContentHtml while WebView was not attached"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Lcom/sigmob/sdk/mraid/e;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/d;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/mraid/e;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v2, "sigandroid"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/MraidWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/d;->i:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_9
.end method

.method c()V
    .registers 2

    const-string v0, "sigmob.fireChangeEvent({\"osType\":2});"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :goto_1a
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

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1a

    :cond_3e
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method d()V
    .registers 2

    const-string v0, "mraidbridge.fireChangeEvent({\"hostSDKVersion\":2.17.1});"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method d(Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x1

    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_33

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sigmob"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    const-string v1, "failLoad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v1, Lcom/sigmob/sdk/base/models/PlacementType;->INLINE:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->f:Lcom/sigmob/sdk/mraid/f;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/f;->b()V

    :cond_31
    move v0, v3

    :goto_32
    return v0

    :catch_33
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid MRAID URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/mraid/r;->l:Lcom/sigmob/sdk/mraid/r;

    const-string v1, "Mraid command sent an invalid URL"

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/r;Ljava/lang/String;)V

    move v0, v3

    goto :goto_32

    :cond_53
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/d;->g()Z

    move-result v4

    if-eqz v4, :cond_86

    const-string v4, "mraid"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    :try_start_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mraid://open?url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
    :try_end_85
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_61 .. :try_end_85} :catch_9e

    move-result-object v1

    :cond_86
    :goto_86
    const-string v4, "mraid"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/r;->a(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/r;

    move-result-object v1

    :try_start_92
    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/r;Ljava/util/Map;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_99} :catch_b6

    :goto_99
    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/r;)V

    move v0, v3

    goto :goto_32

    :catch_9e
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid MRAID URL encoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_86

    :catch_b6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/r;Ljava/lang/String;)V

    goto :goto_99

    :cond_bf
    const/4 v0, 0x0

    goto/16 :goto_32
.end method

.method e()V
    .registers 2

    const-string v0, "mraidbridge.notifyReadyEvent();"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method f()V
    .registers 2

    const-string v0, "mraidbridge.startAd();"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method f(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireVideoSrc(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method g()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->h:Lcom/sigmob/sdk/base/common/ae;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method h()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method i()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d;->g:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/d;->i:Z

    return v0
.end method
