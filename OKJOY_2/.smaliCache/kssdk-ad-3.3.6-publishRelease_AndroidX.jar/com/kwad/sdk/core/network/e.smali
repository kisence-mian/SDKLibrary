.class public Lcom/kwad/sdk/core/network/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/kwad/sdk/core/network/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kwad/sdk/core/network/e;->a:Lcom/kwad/sdk/core/network/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/kwad/sdk/core/network/e;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/network/e;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/kwad/sdk/core/network/e;->a:Lcom/kwad/sdk/core/network/e;

    if-nez v1, :cond_e

    new-instance v1, Lcom/kwad/sdk/core/network/e;

    invoke-direct {v1}, Lcom/kwad/sdk/core/network/e;-><init>()V

    sput-object v1, Lcom/kwad/sdk/core/network/e;->a:Lcom/kwad/sdk/core/network/e;

    :cond_e
    sget-object v1, Lcom/kwad/sdk/core/network/e;->a:Lcom/kwad/sdk/core/network/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cookie"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/e;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CookieStrHelper saveCookieString newCookieString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CookieStrHelper"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/network/e;->b(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/e;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CookieStrHelper getCookieString cookieString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CookieStrHelper"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
