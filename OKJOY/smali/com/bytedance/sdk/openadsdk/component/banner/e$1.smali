.class Lcom/bytedance/sdk/openadsdk/component/banner/e$1;
.super Ljava/lang/Object;
.source "TTBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/banner/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    .line 228
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .registers 3
    .param p1    # Lcom/bytedance/sdk/openadsdk/component/banner/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/e;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->d(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/component/banner/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->e()V

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    .line 223
    return-void
.end method
