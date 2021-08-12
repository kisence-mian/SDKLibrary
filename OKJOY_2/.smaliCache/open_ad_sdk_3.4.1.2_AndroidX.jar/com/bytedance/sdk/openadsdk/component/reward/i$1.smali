.class Lcom/bytedance/sdk/openadsdk/component/reward/i$1;
.super Ljava/lang/Object;
.source "TTFullScreenVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/i;->showFullScreenVideoAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/i;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 168
    :try_start_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    .line 170
    goto :goto_1f

    .line 169
    :catchall_1e
    move-exception v0

    .line 172
    :cond_1f
    :goto_1f
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 5

    .line 177
    const-string v0, "TTFullScreenVideoAdImpl"

    const-string v1, "show full screen video error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 182
    :try_start_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2b

    :cond_29
    const-string p1, "playable tool error open"

    :goto_2b
    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_2f

    .line 184
    goto :goto_30

    .line 183
    :catchall_2f
    move-exception p1

    .line 186
    :cond_30
    :goto_30
    return-void
.end method
