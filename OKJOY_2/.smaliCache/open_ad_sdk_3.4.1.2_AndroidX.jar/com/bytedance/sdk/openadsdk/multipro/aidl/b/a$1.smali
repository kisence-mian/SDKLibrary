.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$1;
.super Ljava/lang/Object;
.source "CommonDialogListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->onDialogBtnYes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)Lcom/bytedance/sdk/openadsdk/utils/g$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)Lcom/bytedance/sdk/openadsdk/utils/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->a()V

    .line 37
    :cond_11
    return-void
.end method
