.class Lcom/bytedance/sdk/openadsdk/component/reward/c$1;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 147
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$1;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .line 150
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 151
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onFullScreenVideoCached()V

    .line 153
    :cond_11
    return-void
.end method
