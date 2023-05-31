.class public Lcom/tapsdk/bootstrap/TapBootstrap;
.super Ljava/lang/Object;
.source "TapBootstrap.java"


# static fields
.field private static final bootStrapImpl:Lcom/tapsdk/bootstrap/ITapBootstrap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/tapsdk/bootstrap/TapBootstrapImpl;

    invoke-direct {v0}, Lcom/tapsdk/bootstrap/TapBootstrapImpl;-><init>()V

    sput-object v0, Lcom/tapsdk/bootstrap/TapBootstrap;->bootStrapImpl:Lcom/tapsdk/bootstrap/ITapBootstrap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tapConfig"    # Lcom/tds/common/entities/TapConfig;

    .line 18
    sget-object v0, Lcom/tapsdk/bootstrap/TapBootstrap;->bootStrapImpl:Lcom/tapsdk/bootstrap/ITapBootstrap;

    invoke-interface {v0, p0, p1}, Lcom/tapsdk/bootstrap/ITapBootstrap;->init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V

    .line 19
    return-void
.end method

.method private static isInitialized(Lcom/tapsdk/bootstrap/Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapsdk/bootstrap/Callback<",
            "Lcom/tapsdk/bootstrap/entities/TapSdkInitResult;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p0, "callback":Lcom/tapsdk/bootstrap/Callback;, "Lcom/tapsdk/bootstrap/Callback<Lcom/tapsdk/bootstrap/entities/TapSdkInitResult;>;"
    sget-object v0, Lcom/tapsdk/bootstrap/TapBootstrap;->bootStrapImpl:Lcom/tapsdk/bootstrap/ITapBootstrap;

    invoke-interface {v0}, Lcom/tapsdk/bootstrap/ITapBootstrap;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 27
    new-instance v0, Lcom/tapsdk/bootstrap/entities/TapSdkInitResult;

    invoke-direct {v0}, Lcom/tapsdk/bootstrap/entities/TapSdkInitResult;-><init>()V

    invoke-interface {p0, v0}, Lcom/tapsdk/bootstrap/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_19

    .line 29
    :cond_11
    new-instance v0, Lcom/tapsdk/bootstrap/init/exceptions/UnInitializedError;

    invoke-direct {v0}, Lcom/tapsdk/bootstrap/init/exceptions/UnInitializedError;-><init>()V

    invoke-interface {p0, v0}, Lcom/tapsdk/bootstrap/Callback;->onFail(Lcom/tapsdk/bootstrap/exceptions/TapError;)V

    .line 31
    :goto_19
    return-void
.end method

.method public static isInitialized()Z
    .registers 1

    .line 22
    sget-object v0, Lcom/tapsdk/bootstrap/TapBootstrap;->bootStrapImpl:Lcom/tapsdk/bootstrap/ITapBootstrap;

    invoke-interface {v0}, Lcom/tapsdk/bootstrap/ITapBootstrap;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static varargs loginWithTapTap(Landroid/app/Activity;Lcom/tapsdk/bootstrap/Callback;[Ljava/lang/String;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/tapsdk/bootstrap/Callback<",
            "Lcom/tapsdk/bootstrap/account/TDSUser;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    .local p1, "callback":Lcom/tapsdk/bootstrap/Callback;, "Lcom/tapsdk/bootstrap/Callback<Lcom/tapsdk/bootstrap/account/TDSUser;>;"
    sget-object v0, Lcom/tapsdk/bootstrap/TapBootstrap;->bootStrapImpl:Lcom/tapsdk/bootstrap/ITapBootstrap;

    invoke-interface {v0, p0, p1, p2}, Lcom/tapsdk/bootstrap/ITapBootstrap;->loginWithTapTap(Landroid/app/Activity;Lcom/tapsdk/bootstrap/Callback;[Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static setPreferredLanguage(I)V
    .registers 2
    .param p0, "lang"    # I

    .line 44
    sget-object v0, Lcom/tapsdk/bootstrap/TapBootstrap;->bootStrapImpl:Lcom/tapsdk/bootstrap/ITapBootstrap;

    invoke-interface {v0, p0}, Lcom/tapsdk/bootstrap/ITapBootstrap;->setPreferLang(I)V

    return-void
.end method
