.class public Lcom/bytedance/sdk/openadsdk/component/interaction/a;
.super Ljava/lang/Object;
.source "InteractionAdManager.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 26
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/component/interaction/a;
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/interaction/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .registers 8

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;

    invoke-direct {v3, p0, p3, p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;Landroid/content/Context;)V

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V

    .line 60
    return-void
.end method
