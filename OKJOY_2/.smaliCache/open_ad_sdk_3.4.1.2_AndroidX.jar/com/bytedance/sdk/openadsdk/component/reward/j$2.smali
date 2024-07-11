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

    .line 234
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 239
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->a:I

    packed-switch v1, :pswitch_data_4c

    goto :goto_4a

    .line 241
    :pswitch_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 242
    const-string v1, "MultiProcess"

    const-string v2, "start registerRewardVideoListener ! "

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;-><init>(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 244
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_49

    .line 248
    :try_start_35
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->c(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V

    .line 249
    const-string v0, "end registerRewardVideoListener ! "

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_43} :catch_44

    goto :goto_49

    .line 251
    :catch_44
    move-exception v0

    .line 252
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4a

    .line 253
    :cond_49
    :goto_49
    nop

    .line 259
    :cond_4a
    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
