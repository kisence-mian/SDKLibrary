.class Lcom/bytedance/sdk/openadsdk/component/reward/j$2;
.super Ljava/lang/Object;
.source "TTRewardVideoAdImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/j;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/j;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/j;I)V
    .registers 3

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 238
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->a:I

    packed-switch v1, :pswitch_data_4c

    .line 258
    :cond_f
    :goto_f
    return-void

    .line 240
    :pswitch_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 241
    const-string v1, "MultiProcess"

    const-string v2, "start registerRewardVideoListener ! "

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;-><init>(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 243
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_f

    .line 247
    :try_start_35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->c(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V

    .line 248
    const-string v0, "MultiProcess"

    const-string v1, "end registerRewardVideoListener ! "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_45} :catch_46

    goto :goto_f

    .line 250
    :catch_46
    move-exception v0

    .line 251
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f

    .line 238
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
