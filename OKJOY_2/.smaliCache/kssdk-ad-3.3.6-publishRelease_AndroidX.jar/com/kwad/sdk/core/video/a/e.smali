.class public Lcom/kwad/sdk/core/video/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kwad/sdk/core/video/a/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    const-string v0, "KwaiPlayHelper"

    const-string v1, "initConfigSync()"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/video/ksvodplayerkit/KSVodPlayerCoreInitConfig;->updatePlayerConfig(Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->b()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lcom/kwad/sdk/core/video/a/e;->d(Landroid/content/Context;)V

    :cond_17
    invoke-static {p0}, Lcom/kwad/sdk/core/video/a/e;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Z
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/video/a/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_9
    const-string v0, "com.kwai.video.player.KsMediaMeta"

    :try_start_b
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kwad/sdk/core/video/a/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    return v1

    :catchall_1a
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_1e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kwad/sdk/core/video/a/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return v1
.end method

.method static synthetic b(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/video/a/e;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/video/a/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getIsExternal()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/video/a/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 1

    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/core/video/a/d;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method

.method static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->e()V

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/crash/utils/AbiUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "https://static.yximgs.com/udata/pkg/KS-Android-KSAdSDk/ks_so-kwaiPlayerArm64v8aRelease-3.3.9.apk"

    :cond_12
    const-string v1, "kwaiplayer-v8a"

    goto :goto_23

    :cond_15
    invoke-static {}, Lcom/kwad/sdk/core/config/c;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "https://static.yximgs.com/udata/pkg/KS-Android-KSAdSDk/ks_so-kwaiPlayerArmeabiv7aRelease-3.3.9.apk"

    :cond_21
    const-string v1, "kwaiplayer-v7a"

    :goto_23
    invoke-static {p0}, Lcom/kwai/sodler/a/b;->a(Landroid/content/Context;)V

    new-instance v2, Lcom/kwad/sdk/core/video/a/e$1;

    invoke-direct {v2, v0, v1}, Lcom/kwad/sdk/core/video/a/e$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kwai/sodler/a/b;->a(Lcom/kwai/sodler/lib/a/b$a;)V

    new-instance v0, Lcom/kwad/sdk/core/video/a/e$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/video/a/e$2;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0}, Lcom/kwai/sodler/a/b;->a(Ljava/lang/String;Lcom/kwai/sodler/lib/ext/b;)V

    return-void
.end method

.method private static e()V
    .registers 0

    return-void
.end method
