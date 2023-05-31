.class final Lcom/bytedance/sdk/openadsdk/utils/g$1;
.super Ljava/lang/Object;
.source "CommonDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/utils/g$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V
    .registers 3

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/g$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/g$1;->b:Lcom/bytedance/sdk/openadsdk/utils/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 94
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/g;->a()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/g$1;->a:Ljava/lang/String;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/g$1;->b:Lcom/bytedance/sdk/openadsdk/utils/g$a;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerDialogListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 97
    :goto_10
    return-void

    .line 95
    :catch_11
    move-exception v0

    goto :goto_10
.end method
