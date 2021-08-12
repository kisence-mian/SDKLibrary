.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$6;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)V
    .registers 2

    .line 1187
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$6;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1190
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 1192
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1193
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    .line 1195
    :try_start_11
    const-string v1, "DMLibManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterMultiProcessListener, mTTAppDownloadListenerList size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$6;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    if-eqz v0, :cond_6a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$6;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6a

    .line 1197
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$6;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    .line 1198
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$6;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->unregisterTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V

    .line 1199
    goto :goto_4b

    .line 1200
    :cond_61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$6;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_6a} :catch_6b

    .line 1204
    :cond_6a
    goto :goto_6f

    .line 1202
    :catch_6b
    move-exception v0

    .line 1203
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1205
    :goto_6f
    return-void
.end method
