.class Lcom/bytedance/sdk/openadsdk/core/f;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/f$b;,
        Lcom/bytedance/sdk/openadsdk/core/f$a;,
        Lcom/bytedance/sdk/openadsdk/core/f$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/f$c;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_17

    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f$c;

    if-nez v0, :cond_16

    .line 38
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f$c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;-><init>(Lcom/bytedance/sdk/openadsdk/core/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f$c;

    .line 42
    :cond_16
    :goto_16
    return-void

    .line 36
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_9

    .line 40
    :catch_1c
    move-exception v0

    goto :goto_16
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f;->c()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Landroid/content/Context;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Landroid/content/Context;

    goto :goto_8
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/f$c;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f$c;

    return-object v0
.end method
