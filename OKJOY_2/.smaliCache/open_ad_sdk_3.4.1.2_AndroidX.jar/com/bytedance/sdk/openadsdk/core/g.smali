.class Lcom/bytedance/sdk/openadsdk/core/g;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/g$b;,
        Lcom/bytedance/sdk/openadsdk/core/g$a;,
        Lcom/bytedance/sdk/openadsdk/core/g$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/g$c;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/g;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_a

    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->b:Landroid/content/Context;

    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->a:Lcom/bytedance/sdk/openadsdk/core/g$c;

    if-nez p1, :cond_1b

    .line 38
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/g$c;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/g$c;-><init>(Lcom/bytedance/sdk/openadsdk/core/g;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->a:Lcom/bytedance/sdk/openadsdk/core/g$c;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    .line 41
    :cond_1b
    goto :goto_1d

    .line 40
    :catchall_1c
    move-exception p1

    .line 42
    :goto_1d
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/g;)Landroid/content/Context;
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/g;->c()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/g;)Landroid/content/Context;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .registers 1

    .line 24
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/g;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Landroid/content/Context;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->b:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/g$c;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->a:Lcom/bytedance/sdk/openadsdk/core/g$c;

    return-object v0
.end method
