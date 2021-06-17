.class public Lcom/facebook/bidding/a/i/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x7530

.field private static final b:I = 0x57e40

.field private static final c:I = 0x1d4c0

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/bidding/a/i/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/bidding/a/i/a;->e:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lcom/facebook/bidding/a/i/a;->f:Ljava/util/Set;

    const-string v2, "1ww8E0AYsR2oX5lndk2hwp2Uosk=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "toZ2GRnRjC9P5VVUdCpOrFH8lfQ=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "B08QtE4yLCdli4rptyqAEczXOeA=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "XZXI6anZbdKf+taURdnyUH5ipgM=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/bidding/a/h/a/a;
    .registers 2

    new-instance v0, Lcom/facebook/bidding/a/h/a/a;

    invoke-direct {v0}, Lcom/facebook/bidding/a/h/a/a;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/bidding/a/i/a;->a(Landroid/content/Context;Lcom/facebook/bidding/a/h/a/a;)V

    invoke-static {}, Lcom/facebook/bidding/a/i/a;->a()Z

    move-result p0

    if-nez p0, :cond_18

    sget-object p0, Lcom/facebook/bidding/a/i/a;->f:Ljava/util/Set;

    invoke-virtual {v0, p0}, Lcom/facebook/bidding/a/h/a/a;->b(Ljava/util/Set;)V

    sget-object p0, Lcom/facebook/bidding/a/i/a;->e:Ljava/util/Set;

    invoke-virtual {v0, p0}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/util/Set;)V

    :cond_18
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v3, [Ljava/lang/Class;

    const-string v4, "getUserAgentString"

    invoke-virtual {p1, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :try_start_22
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const/4 p0, 0x0

    aput-object p0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_39

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    return-object p0

    :catchall_39
    move-exception p0

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    throw p0
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/bidding/a/h/a/a;)V
    .registers 5

    new-instance v0, Lcom/facebook/bidding/a/b/a;

    invoke-direct {v0, p0}, Lcom/facebook/bidding/a/b/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/facebook/bidding/a/i/a;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    const v1, 0x57e40

    invoke-virtual {p1, v1}, Lcom/facebook/bidding/a/h/a/a;->a(I)V

    const v1, 0x1d4c0

    invoke-virtual {p1, v1}, Lcom/facebook/bidding/a/h/a/a;->b(I)V

    goto :goto_1d

    :cond_18
    const/16 v1, 0x7530

    invoke-virtual {p1, v1}, Lcom/facebook/bidding/a/h/a/a;->a(I)V

    :goto_1d
    invoke-static {p0}, Lcom/facebook/bidding/a/b/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {p0}, Lcom/facebook/ads/BidderTokenProvider;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-FB-Pool-Routing-Token"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/bidding/a/h/a/a;

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/bidding/a/i/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " [FBAN/AudienceNetworkForAndroid;FBSN/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "Android"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ";FBSV/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Lcom/facebook/bidding/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ";FBAB/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/facebook/bidding/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ";FBAV/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/facebook/bidding/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ";FBBV/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/facebook/bidding/a/b/a;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ";FBVS/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ";FBLC/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "user-agent"

    invoke-virtual {p1, v0, p0}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/bidding/a/h/a/a;

    return-void
.end method

.method public static a()Z
    .registers 2

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, ".sb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, "Unknown"

    return-object p0

    :cond_5
    sget-object v0, Lcom/facebook/bidding/a/i/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    const-class v0, Lcom/facebook/bidding/a/i/a;

    monitor-enter v0

    :try_start_d
    sget-object v1, Lcom/facebook/bidding/a/i/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_13

    monitor-exit v0

    return-object v1

    :cond_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_54

    const/16 v2, 0x11

    if-lt v1, v2, :cond_22

    :try_start_19
    invoke-static {p0}, Lcom/facebook/bidding/a/i/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/bidding/a/i/a;->d:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_21
    .catchall {:try_start_19 .. :try_end_1f} :catchall_54

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_54

    return-object v1

    :catch_21
    move-exception v1

    :cond_22
    :try_start_22
    const-string v1, "android.webkit.WebSettings"

    const-string v2, "android.webkit.WebView"

    invoke-static {p0, v1, v2}, Lcom/facebook/bidding/a/i/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/bidding/a/i/a;->d:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_2d
    .catchall {:try_start_22 .. :try_end_2c} :catchall_54

    goto :goto_50

    :catch_2d
    move-exception v1

    :try_start_2e
    const-string v1, "android.webkit.WebSettingsClassic"

    const-string v2, "android.webkit.WebViewClassic"

    invoke-static {p0, v1, v2}, Lcom/facebook/bidding/a/i/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/bidding/a/i/a;->d:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_39
    .catchall {:try_start_2e .. :try_end_38} :catchall_54

    goto :goto_50

    :catch_39
    move-exception v1

    :try_start_3a
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/facebook/bidding/a/i/a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_54

    sget-object p0, Lcom/facebook/bidding/a/i/a;->d:Ljava/lang/String;

    return-object p0

    :catchall_54
    move-exception p0

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
