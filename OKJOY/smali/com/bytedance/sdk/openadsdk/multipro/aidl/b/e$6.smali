.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$6;
.super Ljava/lang/Object;
.source "TTAppDownloadListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 157
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$6;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$6;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 165
    :goto_8
    return-void

    .line 164
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$6;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$6;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method
