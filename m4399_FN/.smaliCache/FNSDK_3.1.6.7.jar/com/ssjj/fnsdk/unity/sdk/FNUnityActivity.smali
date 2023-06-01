.class public Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 4

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p1, p2, p3}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->onActivityResult(IILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z

    if-eqz v0, :cond_11

    invoke-static {p1, p2, p3}, Lcom/ssjj/chat/sdk/kit/ChatKit;->onActivityResult(IILandroid/content/Intent;)V

    :cond_11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    :try_start_5
    const-class v1, Lcom/ssjj/chat/sdk/kit/ChatKit;

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    goto :goto_d

    :catchall_a
    move-exception v1

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z

    :goto_d
    :try_start_d
    const-string v1, "com.ssjj.fnsdk.tool.fnchatui.FNToolAdapter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_16

    const/4 p1, 0x1

    :cond_16
    iput-boolean p1, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_1c

    :catchall_19
    move-exception p1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z

    :goto_1c
    new-instance p1, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    const-string v0, "activity"

    invoke-virtual {p1, v0, p0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/ssjj/fnsdk/unity/sdk/i;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/unity/sdk/i;-><init>(Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;)V

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/unity/sdk/FNSDKUnity;->init(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->onDestroy()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/ssjj/chat/sdk/kit/ChatKit;->onDestroy()V

    :cond_11
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->onNewIntent(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/ssjj/chat/sdk/kit/ChatKit;->onNewIntent(Landroid/content/Intent;)V

    :cond_11
    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->onPause()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/ssjj/chat/sdk/kit/ChatKit;->onPause()V

    :cond_11
    return-void
.end method

.method protected onRestart()V
    .registers 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onRestart()V

    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->onRestart()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/ssjj/chat/sdk/kit/ChatKit;->onRestart()V

    :cond_11
    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->onResume()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/ssjj/chat/sdk/kit/ChatKit;->onResume()V

    :cond_11
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->onStart()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/ssjj/chat/sdk/kit/ChatKit;->onStart()V

    :cond_11
    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->onStop()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->b:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/ssjj/chat/sdk/kit/ChatKit;->onStop()V

    :cond_11
    return-void
.end method
