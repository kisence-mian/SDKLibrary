.class Lcom/bytedance/sdk/openadsdk/core/e/a$2;
.super Ljava/lang/Object;
.source "TTNativeAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/DownloadStatusController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/e/a;->getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/e/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/a;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 3

    .prologue
    .line 275
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$2;->b:Lcom/bytedance/sdk/openadsdk/core/e/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$2;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$2;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->g()V

    .line 284
    return-void
.end method

.method public changeDownloadStatus()V
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/a$2;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->f()V

    .line 279
    return-void
.end method
