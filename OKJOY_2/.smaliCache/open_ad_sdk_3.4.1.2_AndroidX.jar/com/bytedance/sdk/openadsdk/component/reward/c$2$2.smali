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
        "Lcom/bytedance/sdk/openadsdk/component/reward/a$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$2;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/component/reward/i;)V
    .registers 4

    .line 232
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .registers 4

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download video file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", preload: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FullScreenVideoLoadManager"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz p1, :cond_3f

    .line 237
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object p2

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Ljava/lang/String;)V

    .line 240
    :cond_3f
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez p2, :cond_5a

    .line 241
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 242
    if-eqz p1, :cond_71

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz p1, :cond_71

    .line 243
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onFullScreenVideoCached()V

    goto :goto_71

    .line 247
    :cond_5a
    if-eqz p1, :cond_71

    .line 248
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 251
    :cond_71
    :goto_71
    return-void
.end method
