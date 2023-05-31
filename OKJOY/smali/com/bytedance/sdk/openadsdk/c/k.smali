.class public Lcom/bytedance/sdk/openadsdk/c/k;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/c/k$c;,
        Lcom/bytedance/sdk/openadsdk/c/k$b;,
        Lcom/bytedance/sdk/openadsdk/c/k$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/c/k;


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/c/k$c;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bytedance/sdk/openadsdk/c/k$b;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k$c;->a()Lcom/bytedance/sdk/openadsdk/c/k$c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k;->b:Lcom/bytedance/sdk/openadsdk/c/k$c;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/k;)Lcom/bytedance/sdk/openadsdk/c/k$b;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k;->d:Lcom/bytedance/sdk/openadsdk/c/k$b;

    return-object v0
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/c/k;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/k;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    if-nez v0, :cond_13

    .line 33
    const-class v1, Lcom/bytedance/sdk/openadsdk/c/k;

    monitor-enter v1

    .line 34
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/k;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    if-nez v0, :cond_12

    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/k;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/k;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/k;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    .line 37
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 40
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/k;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    return-object v0

    .line 37
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/k$b;)V
    .registers 6

    .prologue
    .line 72
    if-nez p1, :cond_3

    .line 85
    :goto_2
    return-void

    .line 76
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/k$b;->b()V

    .line 78
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/k$b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/k;->b:Lcom/bytedance/sdk/openadsdk/c/k$c;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/c/k$c;->a:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/k;->b:Lcom/bytedance/sdk/openadsdk/c/k$c;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/c/k$c;->b:I

    if-le v0, v1, :cond_1e

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/c/k$b;->a(Z)Lcom/bytedance/sdk/openadsdk/c/k$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/k;->c(Lcom/bytedance/sdk/openadsdk/c/k$b;)V

    goto :goto_2

    .line 84
    :cond_1e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/k$a;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/c/k$a;-><init>(Lcom/bytedance/sdk/openadsdk/c/k;I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/k;->b:Lcom/bytedance/sdk/openadsdk/c/k$c;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/c/k$c;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/k;Lcom/bytedance/sdk/openadsdk/c/k$b;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/k;->b(Lcom/bytedance/sdk/openadsdk/c/k$b;)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/c/k$b;)V
    .registers 4

    .prologue
    .line 88
    if-nez p1, :cond_3

    .line 101
    :goto_2
    return-void

    .line 91
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 93
    if-eqz v0, :cond_15

    .line 94
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/c/k$b;)V

    goto :goto_2

    .line 97
    :cond_15
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/c/k$b;->a(Z)Lcom/bytedance/sdk/openadsdk/c/k$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/k;->c(Lcom/bytedance/sdk/openadsdk/c/k$b;)V

    goto :goto_2
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/c/k$b;)V
    .registers 4

    .prologue
    .line 124
    if-nez p1, :cond_3

    .line 128
    :goto_2
    return-void

    .line 127
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->d(Ljava/lang/Runnable;I)V

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k;->c:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/c/k$b;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/c/k$b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k;->d:Lcom/bytedance/sdk/openadsdk/c/k$b;

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/k$a;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/c/k$a;-><init>(Lcom/bytedance/sdk/openadsdk/c/k;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    .line 69
    return-void
.end method
