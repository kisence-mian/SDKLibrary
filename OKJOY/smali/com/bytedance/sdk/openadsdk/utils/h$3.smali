.class final Lcom/bytedance/sdk/openadsdk/utils/h$3;
.super Ljava/lang/Object;
.source "CommonPermissionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/h;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/utils/h$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V
    .registers 3

    .prologue
    .line 92
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/h$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/h$3;->b:Lcom/bytedance/sdk/openadsdk/utils/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 96
    :try_start_0
    const-string v0, "MultiProcess"

    const-string v1, "getListenerManager().registerPermissionListener..."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/h;->a()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/h$3;->a:Ljava/lang/String;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/h$3;->b:Lcom/bytedance/sdk/openadsdk/utils/h$a;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/b;-><init>(Lcom/bytedance/sdk/openadsdk/utils/h$a;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    .line 102
    :goto_17
    return-void

    .line 98
    :catch_18
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    const-string v1, "MultiProcess"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method
