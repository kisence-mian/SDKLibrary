.class public Lcom/bytedance/sdk/adnet/d/d;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/d/d$c;,
        Lcom/bytedance/sdk/adnet/d/d$b;,
        Lcom/bytedance/sdk/adnet/d/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/adnet/d/d$a;

.field private b:Lcom/bytedance/sdk/adnet/d/d$b;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/bytedance/sdk/adnet/d/d$a;->d:Lcom/bytedance/sdk/adnet/d/d$a;

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/d/d;->a:Lcom/bytedance/sdk/adnet/d/d$a;

    .line 29
    new-instance v0, Lcom/bytedance/sdk/adnet/d/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/d/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/d/d;->b:Lcom/bytedance/sdk/adnet/d/d$b;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/adnet/d/d$1;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/d/d;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/adnet/d/d$a;)V
    .registers 3

    .prologue
    .line 53
    const-class v1, Lcom/bytedance/sdk/adnet/d/d;

    monitor-enter v1

    .line 54
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/d$c;->a()Lcom/bytedance/sdk/adnet/d/d;

    move-result-object v0

    iput-object p0, v0, Lcom/bytedance/sdk/adnet/d/d;->a:Lcom/bytedance/sdk/adnet/d/d$a;

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 59
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/d$c;->a()Lcom/bytedance/sdk/adnet/d/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/d/d;->a:Lcom/bytedance/sdk/adnet/d/d$a;

    sget-object v1, Lcom/bytedance/sdk/adnet/d/d$a;->c:Lcom/bytedance/sdk/adnet/d/d$a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/d/d$a;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_17

    .line 60
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/d$c;->a()Lcom/bytedance/sdk/adnet/d/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/d/d;->b:Lcom/bytedance/sdk/adnet/d/d$b;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/adnet/d/d$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_17
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 77
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/d$c;->a()Lcom/bytedance/sdk/adnet/d/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/d/d;->a:Lcom/bytedance/sdk/adnet/d/d$a;

    sget-object v1, Lcom/bytedance/sdk/adnet/d/d$a;->a:Lcom/bytedance/sdk/adnet/d/d$a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/d/d$a;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_17

    .line 78
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/d$c;->a()Lcom/bytedance/sdk/adnet/d/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/d/d;->b:Lcom/bytedance/sdk/adnet/d/d$b;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/adnet/d/d$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_17
    return-void
.end method
