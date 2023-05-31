.class Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;->onAdClicked()V

    .line 146
    :cond_11
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1a

    const/4 v0, 0x5

    if-ne p2, v0, :cond_30

    .line 149
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->i(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;->onAdDismiss()V

    .line 154
    :cond_30
    return-void
.end method
