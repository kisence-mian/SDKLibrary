.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .prologue
    .line 944
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 947
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 949
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;-><init>(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 950
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 951
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_4e

    .line 954
    :try_start_1a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V

    .line 955
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    const-string v0, "DMLibManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMultiProcessListener, mTTAppDownloadListenerList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_4e} :catch_4f

    .line 961
    :cond_4e
    :goto_4e
    return-void

    .line 958
    :catch_4f
    move-exception v0

    .line 959
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4e
.end method
