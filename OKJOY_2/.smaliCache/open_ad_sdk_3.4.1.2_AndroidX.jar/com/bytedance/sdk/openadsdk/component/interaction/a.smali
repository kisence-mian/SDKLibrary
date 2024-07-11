.class public Lcom/bytedance/sdk/openadsdk/component/interaction/a;
.super Ljava/lang/Object;
.source "InteractionAdManager.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/q;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a;->a:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 26
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/component/interaction/a;
    .registers 1

    .line 21
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/interaction/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .registers 6

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/a;->a:Lcom/bytedance/sdk/openadsdk/core/q;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/interaction/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 p3, 0x2

    invoke-interface {v0, p2, p1, p3, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 60
    return-void
.end method
