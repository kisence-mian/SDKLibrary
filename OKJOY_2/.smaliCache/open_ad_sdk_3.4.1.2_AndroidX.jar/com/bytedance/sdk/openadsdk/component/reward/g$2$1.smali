.class Lcom/bytedance/sdk/openadsdk/component/reward/g$2$1;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/g$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/g$2;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 3

    .line 223
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/g$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .line 226
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/g$2;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/g$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p1, :cond_1d

    .line 227
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 228
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/g$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoCached()V

    .line 230
    :cond_1d
    return-void
.end method
