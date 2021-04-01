.class public Lcom/bytedance/sdk/openadsdk/component/a/a;
.super Ljava/lang/Object;
.source "FeedAdManager.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/component/a/a;


# instance fields
.field private final b:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 43
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/component/a/a;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/a/a;->a:Lcom/bytedance/sdk/openadsdk/component/a/a;

    if-nez v0, :cond_13

    .line 32
    const-class v1, Lcom/bytedance/sdk/openadsdk/component/a/a;

    monitor-enter v1

    .line 33
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/a/a;->a:Lcom/bytedance/sdk/openadsdk/component/a/a;

    if-nez v0, :cond_12

    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/a/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/a/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/a/a;->a:Lcom/bytedance/sdk/openadsdk/component/a/a;

    .line 36
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 38
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/a/a;->a:Lcom/bytedance/sdk/openadsdk/component/a/a;

    return-object v0

    .line 36
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V
    .registers 8

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    const/4 v1, 0x0

    const/16 v2, 0x9

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/a/a$2;

    invoke-direct {v3, p0, p3, p1}, Lcom/bytedance/sdk/openadsdk/component/a/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;Landroid/content/Context;)V

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V

    .line 130
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .registers 8

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/a/a$1;

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V

    .line 85
    return-void
.end method
