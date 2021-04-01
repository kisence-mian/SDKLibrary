.class Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$2;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 3

    .prologue
    .line 195
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 199
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->r()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onFullScreenVideoCached()V

    .line 202
    :cond_1f
    return-void
.end method
