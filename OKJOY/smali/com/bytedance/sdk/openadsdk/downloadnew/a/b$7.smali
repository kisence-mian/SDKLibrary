.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V
    .registers 2

    .prologue
    .line 970
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 973
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 975
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 976
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v1

    .line 978
    :try_start_11
    const-string v0, "DMLibManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterMultiProcessListener, mTTAppDownloadListenerList size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    if-eqz v1, :cond_65

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_65

    .line 980
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    .line 981
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->unregisterTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_60} :catch_61

    goto :goto_4b

    .line 985
    :catch_61
    move-exception v0

    .line 986
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 988
    :cond_65
    :goto_65
    return-void

    .line 983
    :cond_66
    :try_start_66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6f} :catch_61

    goto :goto_65
.end method
