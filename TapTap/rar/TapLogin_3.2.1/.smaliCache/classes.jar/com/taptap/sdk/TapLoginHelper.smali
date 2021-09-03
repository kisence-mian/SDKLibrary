.class public Lcom/taptap/sdk/TapLoginHelper;
.super Ljava/lang/Object;
.source "TapLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;,
        Lcom/taptap/sdk/TapLoginHelper$b;
    }
.end annotation


# static fields
.field public static final SCOPE_PUBLIC_PROFILE:Ljava/lang/String; = "public_profile"

.field public static final TAG_GAME:Ljava/lang/String; = "GAME"


# instance fields
.field private loginResultCallbackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private testQualificationModel:Lcom/taptap/sdk/j;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/taptap/sdk/j;

    invoke-direct {v0}, Lcom/taptap/sdk/j;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->testQualificationModel:Lcom/taptap/sdk/j;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taptap/sdk/TapLoginHelper$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/TapLoginHelper;-><init>()V

    return-void
.end method

.method static addLoginResultCallbackByTag(Ljava/lang/String;Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    if-nez v0, :cond_13

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    .line 5
    :cond_13
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object p0

    iget-object p0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/taptap/sdk/TapLoginHelper;->deleteNullCallback(Ljava/util/HashMap;)V

    return-void
.end method

.method public static changeTapLoginConfig(Lcom/taptap/sdk/LoginSdkConfig;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/taptap/sdk/h;->a(Lcom/taptap/sdk/LoginSdkConfig;)V

    return-void
.end method

.method static deleteNullCallback(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_26

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object p0

    iget-object p0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3
    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_26
    return-void
.end method

.method public static fetchProfileForCurrentAccessToken(Lcom/taptap/sdk/net/Api$ApiCallback;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/net/Api$ApiCallback<",
            "Lcom/taptap/sdk/Profile;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/taptap/sdk/Profile;->fetchProfileForCurrentAccessToken(Lcom/taptap/sdk/net/Api$ApiCallback;)V

    return-void
.end method

.method public static getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taptap/sdk/AccessToken;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentProfile()Lcom/taptap/sdk/Profile;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taptap/sdk/Profile;->getCurrentProfile()Lcom/taptap/sdk/Profile;

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/taptap/sdk/TapLoginHelper;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper$b;->a()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginCallback()Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;
    .registers 1

    .line 1
    const-string v0, "GAME"

    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->getLoginResultCallbackByTag(Ljava/lang/String;)Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;

    move-result-object v0

    return-object v0
.end method

.method static getLoginResultCallbackByTag(Ljava/lang/String;)Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;
    .registers 2

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    if-eqz v0, :cond_15

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTestQualification(Lcom/taptap/sdk/net/Api$ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/net/Api$ApiCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/TapLoginHelper;->testQualificationModel:Lcom/taptap/sdk/j;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/j;->a(Lcom/taptap/sdk/net/Api$ApiCallback;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/taptap/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/LoginSdkConfig;)V
    .registers 3

    .line 2
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/LoginSdkConfig;)V

    return-void
.end method

.method public static logout()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/taptap/sdk/d;->a()Lcom/taptap/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/d;->b()V

    return-void
.end method

.method public static registerLoginCallback(Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;)V
    .registers 2

    .line 1
    const-string v0, "GAME"

    invoke-static {v0, p0}, Lcom/taptap/sdk/TapLoginHelper;->addLoginResultCallbackByTag(Ljava/lang/String;Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;)V

    return-void
.end method

.method static removeLoginResultCallbackByTag(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    if-nez v0, :cond_13

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    .line 5
    :cond_13
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object p0

    iget-object p0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/taptap/sdk/TapLoginHelper;->deleteNullCallback(Ljava/util/HashMap;)V

    return-void
.end method

.method public static varargs startTapLogin(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "GAME"

    invoke-static {p0, v0, p1}, Lcom/taptap/sdk/TapLoginHelper;->startTapLoginByTag(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static varargs startTapLoginByTag(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    if-eqz v0, :cond_14

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getInstance()Lcom/taptap/sdk/TapLoginHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_14
    nop

    .line 3
    const-string v0, "TapLoginHelper"

    const-string v1, "loginResultCallbackList has no valid item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/taptap/sdk/TapLoginHelperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    const-string v1, "permission"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    const-string p2, "source"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static unregisterLoginCallback()V
    .registers 1

    .line 1
    const-string v0, "GAME"

    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->removeLoginResultCallbackByTag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onLoginCancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->deleteNullCallback(Ljava/util/HashMap;)V

    .line 4
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;

    if-eqz v1, :cond_19

    .line 6
    invoke-interface {v1}, Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;->onLoginCancel()V

    goto :goto_19

    :cond_2b
    return-void
.end method

.method onLoginError(Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->deleteNullCallback(Ljava/util/HashMap;)V

    .line 4
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;

    if-eqz v1, :cond_19

    .line 6
    new-instance v2, Lcom/taptap/sdk/AccountGlobalError;

    const-string v3, "permission_result"

    invoke-direct {v2, v3, p1}, Lcom/taptap/sdk/AccountGlobalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;->onLoginError(Lcom/taptap/sdk/AccountGlobalError;)V

    goto :goto_19

    :cond_32
    return-void
.end method

.method onLoginSuccess(Lcom/taptap/sdk/LoginResponse;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->deleteNullCallback(Ljava/util/HashMap;)V

    .line 4
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelper;->loginResultCallbackList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;

    if-eqz v1, :cond_19

    .line 6
    iget-object v2, p1, Lcom/taptap/sdk/LoginResponse;->token:Lcom/taptap/sdk/AccessToken;

    invoke-interface {v1, v2}, Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;->onLoginSuccess(Lcom/taptap/sdk/AccessToken;)V

    goto :goto_19

    :cond_2d
    return-void
.end method
