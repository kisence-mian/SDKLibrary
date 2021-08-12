.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;
.super Ljava/lang/Object;
.source "TTBannerExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 3

    .line 252
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;I)Z
    .registers 5

    .line 256
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l()V

    .line 257
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;-><init>(Landroid/content/Context;)V

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p2, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 259
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/dislike/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->setDislikeInner(Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V

    .line 260
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->g:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_28

    .line 263
    nop

    .line 264
    const/4 p1, 0x1

    return p1

    .line 261
    :catch_28
    move-exception p1

    .line 262
    const/4 p1, 0x0

    return p1
.end method
