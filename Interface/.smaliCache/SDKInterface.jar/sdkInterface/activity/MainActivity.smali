.class public LsdkInterface/activity/MainActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "MainActivity.java"


# static fields
.field public static instance:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 19
    invoke-static {p1, p2, p3}, LsdkInterface/SdkInterface;->onActivityResult(IILandroid/content/Intent;)V

    .line 20
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 106
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onAttachedToWindow()V

    .line 108
    invoke-static {}, LsdkInterface/SdkInterface;->onAttachedToWindow()V

    .line 109
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 121
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onBackPressed()V

    .line 123
    invoke-static {}, LsdkInterface/SdkInterface;->onBackPressed()V

    .line 125
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 99
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    invoke-static {p1}, LsdkInterface/SdkInterface;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sput-object p0, LsdkInterface/activity/MainActivity;->instance:Landroid/content/Context;

    .line 27
    invoke-static {}, LsdkInterface/SdkInterface;->Init()V

    .line 29
    invoke-static {p1}, LsdkInterface/SdkInterface;->OnCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 64
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    .line 65
    invoke-static {}, LsdkInterface/SdkInterface;->OnDestroy()V

    .line 66
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 70
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 72
    invoke-static {p1}, LsdkInterface/SdkInterface;->OnNewIntent(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 52
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 53
    invoke-static {}, LsdkInterface/SdkInterface;->OnPause()V

    .line 54
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 79
    invoke-static {p1, p2, p3}, LsdkInterface/SdkInterface;->OnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 80
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .line 40
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onRestart()V

    .line 41
    invoke-static {}, LsdkInterface/SdkInterface;->OnRestart()V

    .line 42
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 91
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 93
    invoke-static {p1}, LsdkInterface/SdkInterface;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 58
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 59
    invoke-static {}, LsdkInterface/SdkInterface;->OnResume()V

    .line 60
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p1}, LsdkInterface/SdkInterface;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 34
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    .line 35
    invoke-static {}, LsdkInterface/SdkInterface;->OnStart()V

    .line 36
    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 46
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V

    .line 47
    invoke-static {}, LsdkInterface/SdkInterface;->OnStop()V

    .line 48
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .line 113
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onWindowFocusChanged(Z)V

    .line 115
    invoke-static {p1}, LsdkInterface/SdkInterface;->onWindowFocusChanged(Z)V

    .line 117
    return-void
.end method
