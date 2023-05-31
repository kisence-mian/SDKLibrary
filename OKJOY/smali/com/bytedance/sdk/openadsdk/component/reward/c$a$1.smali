.class Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/a$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)V
    .registers 2

    .prologue
    .line 341
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .registers 6

    .prologue
    .line 344
    if-eqz p1, :cond_19

    .line 345
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$a$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 347
    :cond_19
    return-void
.end method
