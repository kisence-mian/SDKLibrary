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

    .line 251
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->c(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 256
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->a:I

    packed-switch v1, :pswitch_data_4c

    goto :goto_4a

    .line 258
    :pswitch_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->d(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 259
    const-string v1, "MultiProcess"

    const-string v2, "start registerFullScreenVideoListener ! "

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->d(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;-><init>(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 261
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_49

    .line 265
    :try_start_35
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/i;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->e(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerFullVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;)V

    .line 266
    const-string v0, "end registerFullScreenVideoListener ! "

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_43} :catch_44

    goto :goto_49

    .line 268
    :catch_44
    move-exception v0

    .line 269
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4a

    .line 270
    :cond_49
    :goto_49
    nop

    .line 276
    :cond_4a
    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method
