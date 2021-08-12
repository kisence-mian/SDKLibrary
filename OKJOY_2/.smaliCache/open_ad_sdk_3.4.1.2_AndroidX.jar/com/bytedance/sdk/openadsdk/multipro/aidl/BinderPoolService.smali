.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;
.super Landroid/app/Service;
.source "BinderPoolService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->a:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 41
    const-string p1, "MultiProcess"

    const-string v0, "BinderPoolService onBind ! "

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->a:Landroid/os/Binder;

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    const-string v0, "MultiProcess"

    const-string v1, "BinderPoolService has been created ! "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 48
    const-string v0, "MultiProcess"

    const-string v1, "BinderPoolService is destroy ! "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
