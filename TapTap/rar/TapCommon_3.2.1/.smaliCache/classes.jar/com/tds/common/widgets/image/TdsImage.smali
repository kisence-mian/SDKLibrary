.class public final Lcom/tds/common/widgets/image/TdsImage;
.super Ljava/lang/Object;
.source "TdsImage.java"


# static fields
.field private static instance:Lcom/tds/common/widgets/image/TdsImage;


# instance fields
.field final client:Lcom/tds/common/net/TdsHttp$Client;

.field final context:Landroid/content/Context;

.field final diskCache:Lcom/tds/common/widgets/image/DiskCache;

.field final memCache:Lcom/tds/common/widgets/image/MemCache;

.field final targetToAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_27

    .line 31
    iput-object p1, p0, Lcom/tds/common/widgets/image/TdsImage;->context:Landroid/content/Context;

    .line 32
    invoke-static {}, Lcom/tds/common/net/TdsHttp;->newClientBuilder()Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Client$Builder;->build()Lcom/tds/common/net/TdsHttp$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsImage;->client:Lcom/tds/common/net/TdsHttp$Client;

    .line 33
    new-instance v0, Lcom/tds/common/widgets/image/MemCache;

    invoke-direct {v0, p1}, Lcom/tds/common/widgets/image/MemCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsImage;->memCache:Lcom/tds/common/widgets/image/MemCache;

    .line 34
    new-instance v0, Lcom/tds/common/widgets/image/DiskCache;

    invoke-direct {v0, p1}, Lcom/tds/common/widgets/image/DiskCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsImage;->diskCache:Lcom/tds/common/widgets/image/DiskCache;

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsImage;->targetToAction:Ljava/util/Map;

    .line 36
    return-void

    .line 29
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcom/tds/common/widgets/image/TdsImage;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/tds/common/widgets/image/TdsImage;->instance:Lcom/tds/common/widgets/image/TdsImage;

    if-nez v0, :cond_1b

    .line 40
    const-class v0, Lcom/tds/common/widgets/image/TdsImage;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lcom/tds/common/widgets/image/TdsImage;->instance:Lcom/tds/common/widgets/image/TdsImage;

    if-nez v1, :cond_16

    .line 42
    new-instance v1, Lcom/tds/common/widgets/image/TdsImage;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/common/widgets/image/TdsImage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tds/common/widgets/image/TdsImage;->instance:Lcom/tds/common/widgets/image/TdsImage;

    .line 44
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 46
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/tds/common/widgets/image/TdsImage;->instance:Lcom/tds/common/widgets/image/TdsImage;

    return-object v0
.end method


# virtual methods
.method public cancelRequest(Ljava/lang/Object;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;

    .line 82
    if-eqz p1, :cond_f

    .line 83
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsImage;->targetToAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 84
    .local v0, "subscription":Lcom/tds/common/reactor/Subscription;
    if-eqz v0, :cond_f

    .line 85
    invoke-interface {v0}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 88
    .end local v0    # "subscription":Lcom/tds/common/reactor/Subscription;
    :cond_f
    return-void
.end method

.method enqueue(Ljava/lang/Object;Lcom/tds/common/reactor/Subscription;)V
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "subscription"    # Lcom/tds/common/reactor/Subscription;

    .line 74
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsImage;->targetToAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 75
    .local v0, "old":Lcom/tds/common/reactor/Subscription;
    if-eq v0, p2, :cond_12

    .line 76
    invoke-virtual {p0, p1}, Lcom/tds/common/widgets/image/TdsImage;->cancelRequest(Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/tds/common/widgets/image/TdsImage;->targetToAction:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_12
    return-void
.end method

.method public load(I)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 4
    .param p1, "resId"    # I

    .line 66
    new-instance v0, Lcom/tds/common/widgets/image/LoadBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/tds/common/widgets/image/LoadBuilder;-><init>(Lcom/tds/common/widgets/image/TdsImage;Landroid/net/Uri;I)V

    return-object v0
.end method

.method load(Landroid/net/Uri;)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 70
    new-instance v0, Lcom/tds/common/widgets/image/LoadBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/tds/common/widgets/image/LoadBuilder;-><init>(Lcom/tds/common/widgets/image/TdsImage;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public load(Ljava/io/File;)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 58
    if-nez p1, :cond_a

    .line 59
    const/4 v0, 0x0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/image/TdsImage;->load(Landroid/net/Uri;)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v0

    return-object v0

    .line 61
    :cond_a
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/image/TdsImage;->load(Landroid/net/Uri;)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 51
    const/4 v0, 0x0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/image/TdsImage;->load(Landroid/net/Uri;)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v0

    return-object v0

    .line 53
    :cond_e
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/image/TdsImage;->load(Landroid/net/Uri;)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v0

    return-object v0
.end method
