.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;
.super Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;
.source "TTAppDownloadListenerImpl.java"


# instance fields
.field private volatile a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;)Z
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->c()Z

    move-result p0

    return p0
.end method

.method private b()Landroid/os/Handler;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b:Landroid/os/Handler;

    :cond_f
    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    return-object p0
.end method

.method private c()Z
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_6

    .line 30
    const/4 v0, 0x1

    return v0

    .line 32
    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 172
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b:Landroid/os/Handler;

    .line 173
    return-void
.end method

.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    move-object v8, p0

    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_19

    .line 64
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$2;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_19
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    move-object v8, p0

    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_19

    .line 112
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$4;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$4;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_19
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_15

    .line 135
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$5;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    :cond_15
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    move-object v8, p0

    iget-object v0, v8, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_19

    .line 88
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$3;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    :cond_19
    return-void
.end method

.method public onIdle()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_10

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_10
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->a:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-eqz v0, :cond_10

    .line 157
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e$6;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    :cond_10
    return-void
.end method
