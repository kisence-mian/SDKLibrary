.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;
.super Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub;
.source "CommonPermissionListenerImpl.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/bytedance/sdk/openadsdk/utils/h$a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/h$a;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a:Landroid/os/Handler;

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->b:Lcom/bytedance/sdk/openadsdk/utils/h$a;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)Lcom/bytedance/sdk/openadsdk/utils/h$a;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->b:Lcom/bytedance/sdk/openadsdk/utils/h$a;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a:Landroid/os/Handler;

    .line 55
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method public onGranted()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;->a(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
