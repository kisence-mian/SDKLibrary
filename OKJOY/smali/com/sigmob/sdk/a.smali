.class public Lcom/sigmob/sdk/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "2.17.1"

.field private static d:Lcom/sigmob/sdk/a;


# instance fields
.field b:Lcom/sigmob/sdk/base/common/a/c;

.field private final c:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/a;->d:Lcom/sigmob/sdk/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/a;->b:Lcom/sigmob/sdk/base/common/a/c;

    iput-object p1, p0, Lcom/sigmob/sdk/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sigmob/volley/af;->b:Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->d()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->h()V

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->c()V

    :cond_21
    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->g()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    const-string v2, "1"

    sget-object v3, Lcom/sigmob/sdk/base/common/b/b;->a:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v4

    move-object v3, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/sigmob/sdk/a$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/a$1;-><init>(Lcom/sigmob/sdk/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sigmob/sdk/a;->b:Lcom/sigmob/sdk/base/common/a/c;

    iget-object v0, p0, Lcom/sigmob/sdk/a;->b:Lcom/sigmob/sdk/base/common/a/c;

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/SDKConfig;->getAdTrackerRetryInterval()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/common/a/c;->a(J)V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/a;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/a;->d:Lcom/sigmob/sdk/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/sigmob/sdk/a;
    .registers 5

    if-eqz p0, :cond_4

    if-nez p1, :cond_12

    :cond_4
    const-string v0, "initialize: failed "

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "appId or context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Lcom/sigmob/sdk/a;->d:Lcom/sigmob/sdk/a;

    if-nez v0, :cond_25

    const-class v1, Lcom/sigmob/sdk/a;

    monitor-enter v1

    :try_start_19
    sget-object v0, Lcom/sigmob/sdk/a;->d:Lcom/sigmob/sdk/a;

    if-nez v0, :cond_24

    new-instance v0, Lcom/sigmob/sdk/a;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/sigmob/sdk/a;->d:Lcom/sigmob/sdk/a;

    :cond_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_28

    :cond_25
    sget-object v0, Lcom/sigmob/sdk/a;->d:Lcom/sigmob/sdk/a;

    goto :goto_11

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5

    return-void
.end method

.method public a(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 5

    return-void
.end method

.method public a(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/sigmob/sdk/a;->e:Z

    if-eqz p1, :cond_a

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_6
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V

    return-void

    :cond_a
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    goto :goto_6
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public c()Lcom/sigmob/sdk/base/common/SDKConfig;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/a;->e:Z

    return v0
.end method

.method public e(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public h(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
