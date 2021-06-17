.class Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsSessionToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MockCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "callbackName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 46
    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 49
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "navigationEvent"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 43
    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 52
    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 5
    .param p1, "relation"    # I
    .param p2, "requestedOrigin"    # Landroid/net/Uri;
    .param p3, "result"    # Z
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 56
    return-void
.end method
