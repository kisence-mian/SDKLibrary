.class Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$2;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/component/reward/i;)V
    .registers 4

    .prologue
    .line 220
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .registers 6

    .prologue
    .line 223
    const-string v0, "FullScreenVideoLoadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download video file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-eqz p1, :cond_3f

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Ljava/lang/String;)V

    .line 228
    :cond_3f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez v0, :cond_5a

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 230
    if-eqz p1, :cond_59

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz v0, :cond_59

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onFullScreenVideoCached()V

    .line 239
    :cond_59
    :goto_59
    return-void

    .line 235
    :cond_5a
    if-eqz p1, :cond_59

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    goto :goto_59
.end method
