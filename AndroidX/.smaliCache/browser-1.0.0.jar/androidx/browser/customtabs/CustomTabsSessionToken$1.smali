.class Landroidx/browser/customtabs/CustomTabsSessionToken$1;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 91
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "callbackName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 105
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 108
    goto :goto_10

    .line 106
    :catch_8
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomTabsSessionToken"

    const-string v2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 114
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, p1}, Landroid/support/customtabs/ICustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 117
    goto :goto_10

    .line 115
    :catch_8
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomTabsSessionToken"

    const-string v2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "navigationEvent"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 96
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 99
    goto :goto_10

    .line 97
    :catch_8
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomTabsSessionToken"

    const-string v2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 123
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 126
    goto :goto_10

    .line 124
    :catch_8
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomTabsSessionToken"

    const-string v2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 8
    .param p1, "relation"    # I
    .param p2, "origin"    # Landroid/net/Uri;
    .param p3, "result"    # Z
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 133
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken$1;->this$0:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/customtabs/ICustomTabsCallback;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 137
    goto :goto_10

    .line 135
    :catch_8
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomTabsSessionToken"

    const-string v2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method
