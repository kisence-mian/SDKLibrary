.class public Lcom/bytedance/sdk/openadsdk/component/banner/b;
.super Ljava/lang/Object;
.source "BannerAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/banner/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/component/banner/b;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/core/q;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->b:Ljava/lang/ref/WeakReference;

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->c:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 37
    return-void
.end method

.method private a()Landroid/content/Context;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_18

    :cond_14
    :goto_14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    :goto_18
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/banner/b;
    .registers 3

    .line 45
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    if-nez v0, :cond_17

    .line 46
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/banner/b;

    monitor-enter v0

    .line 47
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    if-nez v1, :cond_12

    .line 48
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/banner/b;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/banner/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    .line 50
    :cond_12
    monitor-exit v0

    goto :goto_1c

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 52
    :cond_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->b(Landroid/content/Context;)V

    .line 54
    :goto_1c
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/b;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/banner/b;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V
    .registers 6

    .line 130
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->g()Lcom/bytedance/sdk/adnet/b/d;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/b;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V

    .line 168
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->b:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->c:Lcom/bytedance/sdk/openadsdk/core/q;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/b;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 123
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V
    .registers 6

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b;->c:Lcom/bytedance/sdk/openadsdk/core/q;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/banner/b;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 82
    return-void
.end method
