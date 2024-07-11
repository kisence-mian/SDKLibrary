.class Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper$1;
.super Ljava/lang/Object;
.source "GoogleReferrerHelper.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;

    .line 38
    iput-object p1, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper$1;->this$0:Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;

    iput-object p2, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .registers 3

    .line 68
    const-string v0, "loongcheer_google"

    const-string v1, "onInstallReferrerServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .registers 7
    .param p1, "responseCode"    # I

    .line 41
    const-string v0, "loongcheer_google"

    const-string v1, "install_referrer"

    const-string v2, "error"

    packed-switch p1, :pswitch_data_46

    goto :goto_44

    .line 48
    :pswitch_a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, " API not available on the current Play Store app."

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v2

    iget-object v4, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v4, v3, v1}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 51
    const-string v1, "API not available on the current Play Store app."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    goto :goto_44

    .line 55
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_23
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v3, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "  Connection couldn\'t be established."

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v2

    iget-object v4, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v4, v3, v1}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 58
    const-string v1, " Connection couldn\'t be established.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 44
    .end local v3    # "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_3c
    iget-object v0, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper$1;->this$0:Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;

    iget-object v1, p0, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loongcheer/appsflyersdk/referre/GoogleReferrerHelper;->getArgs(Landroid/content/Context;)V

    .line 45
    nop

    .line 62
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_23
        :pswitch_a
    .end packed-switch
.end method
