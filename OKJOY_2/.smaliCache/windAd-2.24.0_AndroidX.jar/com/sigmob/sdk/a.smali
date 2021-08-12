.class public Lcom/sigmob/sdk/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/sigmob/sdk/a;


# instance fields
.field b:Lcom/sigmob/sdk/common/b/b;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/a;->a:Lcom/sigmob/sdk/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/a;->b:Lcom/sigmob/sdk/common/b/b;

    iput-object p1, p0, Lcom/sigmob/sdk/a;->c:Landroid/content/Context;

    sget-object v1, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/sigmob/volley/u;->b:Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->d()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->g()V

    sget-object v1, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->c()V

    :cond_21
    invoke-static {p1}, Lcom/sigmob/sdk/base/common/d;->a(Landroid/content/Context;)V

    const-string v1, "init"

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/sigmob/sdk/a$1;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/sigmob/sdk/a$1;-><init>(Lcom/sigmob/sdk/a;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sigmob/sdk/a;->b:Lcom/sigmob/sdk/common/b/b;

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/SDKConfig;->getAdTrackerRetryInterval()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sigmob/sdk/common/b/b;->a(J)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/SDKConfig;->isEnable_permission()Z

    move-result v2

    if-eqz v2, :cond_59

    new-instance v2, Lcom/sigmob/sdk/a$2;

    invoke-direct {v2, p0, p1}, Lcom/sigmob/sdk/a$2;-><init>(Lcom/sigmob/sdk/a;Landroid/content/Context;)V

    const-string p1, "permission"

    invoke-static {p1, v1, v0, v2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    :cond_59
    const-string p1, "app"

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sigmob/sdk/a;
    .registers 3

    if-nez p0, :cond_10

    const-string p0, "initialize: failed "

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_10
    sget-object v0, Lcom/sigmob/sdk/a;->a:Lcom/sigmob/sdk/a;

    if-nez v0, :cond_27

    const-class v0, Lcom/sigmob/sdk/a;

    monitor-enter v0

    :try_start_17
    sget-object v1, Lcom/sigmob/sdk/a;->a:Lcom/sigmob/sdk/a;

    if-nez v1, :cond_22

    new-instance v1, Lcom/sigmob/sdk/a;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sigmob/sdk/a;->a:Lcom/sigmob/sdk/a;

    :cond_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    :goto_27
    sget-object p0, Lcom/sigmob/sdk/a;->a:Lcom/sigmob/sdk/a;

    return-object p0
.end method

.method public static b()Z
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/a;->a:Lcom/sigmob/sdk/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a;->c:Landroid/content/Context;

    return-object v0
.end method
