.class public abstract Landroidx/browser/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabsService$Relation;,
        Landroidx/browser/customtabs/CustomTabsService$Result;
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field public static final KEY_URL:Ljava/lang/String; = "android.support.customtabs.otherurls.URL"

.field public static final RELATION_HANDLE_ALL_URLS:I = 0x2

.field public static final RELATION_USE_AS_ORIGIN:I = 0x1

.field public static final RESULT_FAILURE_DISALLOWED:I = -0x1

.field public static final RESULT_FAILURE_MESSAGING_ERROR:I = -0x3

.field public static final RESULT_FAILURE_REMOTE_ERROR:I = -0x2

.field public static final RESULT_SUCCESS:I


# instance fields
.field private mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

.field final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 101
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 104
    new-instance v0, Landroidx/browser/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Landroidx/browser/customtabs/CustomTabsService$1;-><init>(Landroidx/browser/customtabs/CustomTabsService;)V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

    return-void
.end method


# virtual methods
.method protected cleanUpSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z
    .registers 7
    .param p1, "sessionToken"    # Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 186
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    monitor-enter v1
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_20

    .line 187
    :try_start_4
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 188
    .local v2, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 189
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder$DeathRecipient;

    .line 190
    .local v3, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 191
    iget-object v4, p0, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    nop

    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v3    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    monitor-exit v1

    .line 195
    nop

    .line 196
    const/4 v0, 0x1

    return v0

    .line 192
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    .end local p1    # "sessionToken":Landroidx/browser/customtabs/CustomTabsSessionToken;
    :try_start_1f
    throw v2
    :try_end_20
    .catch Ljava/util/NoSuchElementException; {:try_start_1f .. :try_end_20} :catch_20

    .line 193
    .restart local p1    # "sessionToken":Landroidx/browser/customtabs/CustomTabsSessionToken;
    :catch_20
    move-exception v1

    .line 194
    .local v1, "e":Ljava/util/NoSuchElementException;
    return v0
.end method

.method protected abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract mayLaunchUrl(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/browser/customtabs/CustomTabsSessionToken;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract newSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 172
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

    return-object v0
.end method

.method protected abstract postMessage(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method protected abstract requestPostMessageChannel(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z
.end method

.method protected abstract updateVisuals(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z
.end method

.method protected abstract validateRelationship(Landroidx/browser/customtabs/CustomTabsSessionToken;ILandroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method protected abstract warmup(J)Z
.end method
