.class public LsdkInterface/activity/MainActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "MainActivity.java"


# static fields
.field public static instance:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 18
    invoke-static {p1, p2, p3}, LsdkInterface/SdkInterface;->onActivityResult(IILandroid/content/Intent;)V

    .line 19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 23
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sput-object p0, LsdkInterface/activity/MainActivity;->instance:Landroid/content/Context;

    .line 26
    invoke-static {}, LsdkInterface/SdkInterface;->Init()V

    .line 28
    invoke-static {p1}, LsdkInterface/SdkInterface;->OnCreate(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 63
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    .line 64
    invoke-static {}, LsdkInterface/SdkInterface;->OnDestroy()V

    .line 65
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 69
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 51
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 52
    invoke-static {}, LsdkInterface/SdkInterface;->OnPause()V

    .line 53
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 76
    invoke-static {p1, p2, p3}, LsdkInterface/SdkInterface;->OnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 77
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .line 39
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onRestart()V

    .line 40
    invoke-static {}, LsdkInterface/SdkInterface;->OnRestart()V

    .line 41
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 57
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 58
    invoke-static {}, LsdkInterface/SdkInterface;->OnResume()V

    .line 59
    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 33
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    .line 34
    invoke-static {}, LsdkInterface/SdkInterface;->OnStart()V

    .line 35
    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 45
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V

    .line 46
    invoke-static {}, LsdkInterface/SdkInterface;->OnStop()V

    .line 47
    return-void
.end method
