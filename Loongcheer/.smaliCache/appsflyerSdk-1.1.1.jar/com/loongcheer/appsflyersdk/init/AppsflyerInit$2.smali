.class Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$2;
.super Ljava/lang/Object;
.source "AppsflyerInit.java"

# interfaces
.implements Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->init(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;


# direct methods
.method constructor <init>(Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    .line 74
    iput-object p1, p0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$2;->this$0:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidateInApp()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$2;->this$0:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    iget-object v0, v0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->playCallback:Lcom/loongcheer/appsflyersdk/callback/PlayCallback;

    if-nez v0, :cond_7

    goto :goto_e

    .line 80
    :cond_7
    iget-object v0, p0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$2;->this$0:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    iget-object v0, v0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->playCallback:Lcom/loongcheer/appsflyersdk/callback/PlayCallback;

    invoke-interface {v0}, Lcom/loongcheer/appsflyersdk/callback/PlayCallback;->onValidateInApp()V

    .line 82
    :goto_e
    return-void
.end method

.method public onValidateInAppFailure(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$2;->this$0:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    iget-object v0, v0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->playCallback:Lcom/loongcheer/appsflyersdk/callback/PlayCallback;

    if-nez v0, :cond_7

    goto :goto_e

    .line 88
    :cond_7
    iget-object v0, p0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit$2;->this$0:Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    iget-object v0, v0, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->playCallback:Lcom/loongcheer/appsflyersdk/callback/PlayCallback;

    invoke-interface {v0, p1}, Lcom/loongcheer/appsflyersdk/callback/PlayCallback;->onValidateInAppFailure(Ljava/lang/String;)V

    .line 90
    :goto_e
    return-void
.end method
