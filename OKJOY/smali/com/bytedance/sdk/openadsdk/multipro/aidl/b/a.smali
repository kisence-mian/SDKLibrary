.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;
.super Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;
.source "CommonDialogListenerImpl.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/bytedance/sdk/openadsdk/utils/g$a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/g$a;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a:Landroid/os/Handler;

    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b:Lcom/bytedance/sdk/openadsdk/utils/g$a;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)Lcom/bytedance/sdk/openadsdk/utils/g$a;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b:Lcom/bytedance/sdk/openadsdk/utils/g$a;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method


# virtual methods
.method public onDialogBtnNo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "CommonDialogListenerImpl"

    const-string v1, "CommonDialogListenerImpl: onDialogBtnNo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public onDialogBtnYes()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    const-string v0, "CommonDialogListenerImpl"

    const-string v1, "CommonDialogListenerImpl: onDialogBtnYes"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public onDialogCancel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "CommonDialogListenerImpl"

    const-string v1, "CommonDialogListenerImpl: onDialogCancel"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
