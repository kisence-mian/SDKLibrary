.class Lcom/bytedance/sdk/openadsdk/component/splash/TsView$1;
.super Ljava/lang/Object;
.source "TsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/TsView;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/TsView$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->a(Lcom/bytedance/sdk/openadsdk/component/splash/TsView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->h(Landroid/view/View;)V

    .line 144
    return-void
.end method
