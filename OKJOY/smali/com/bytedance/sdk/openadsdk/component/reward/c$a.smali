.class Lcom/bytedance/sdk/openadsdk/component/reward/c$a;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .prologue
    .line 334
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 336
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 337
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/component/reward/a$a;)V

    .line 349
    return-void
.end method
