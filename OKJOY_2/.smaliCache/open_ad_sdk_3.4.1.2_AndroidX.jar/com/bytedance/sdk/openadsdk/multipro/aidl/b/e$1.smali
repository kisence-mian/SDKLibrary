.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$1;
.super Ljava/lang/Object;
.source "TTAppDownloadListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->onIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 44
    return-void

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onIdle()V

    .line 47
    return-void
.end method
