.class Lcom/bytedance/sdk/openadsdk/component/reward/i$2;
.super Ljava/lang/Object;
.source "TTFullScreenVideoAdImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/i;I)V
    .registers 3

    .prologue
    .line 232
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 237
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->a:I

    packed-switch v1, :pswitch_data_4c

    .line 257
    :cond_f
    :goto_f
    return-void

    .line 239
    :pswitch_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 240
    const-string v1, "MultiProcess"

    const-string v2, "start registerFullScreenVideoListener ! "

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;-><init>(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 242
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_f

    .line 246
    :try_start_35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->c(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerFullVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;)V

    .line 247
    const-string v0, "MultiProcess"

    const-string v1, "end registerFullScreenVideoListener ! "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_45} :catch_46

    goto :goto_f

    .line 249
    :catch_46
    move-exception v0

    .line 250
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f

    .line 237
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method
