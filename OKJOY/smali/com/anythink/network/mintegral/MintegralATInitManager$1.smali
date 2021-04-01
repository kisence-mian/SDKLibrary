.class final Lcom/anythink/network/mintegral/MintegralATInitManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;

.field final synthetic d:Lcom/anythink/network/mintegral/MintegralATInitManager;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATInitManager;Ljava/util/Map;Landroid/content/Context;Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;)V
    .registers 5

    .prologue
    .line 60
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    iput-object p2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->c:Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    .line 63
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->a:Ljava/util/Map;

    const-string v1, "appid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->a:Ljava/util/Map;

    const-string v2, "appkey"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c5

    .line 68
    :try_start_20
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-static {v2}, Lcom/anythink/network/mintegral/MintegralATInitManager;->a(Lcom/anythink/network/mintegral/MintegralATInitManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-static {v2}, Lcom/anythink/network/mintegral/MintegralATInitManager;->b(Lcom/anythink/network/mintegral/MintegralATInitManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-static {v2}, Lcom/anythink/network/mintegral/MintegralATInitManager;->a(Lcom/anythink/network/mintegral/MintegralATInitManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-static {v2}, Lcom/anythink/network/mintegral/MintegralATInitManager;->b(Lcom/anythink/network/mintegral/MintegralATInitManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c8

    .line 69
    :cond_50
    invoke-static {}, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->getMIntegralSDK()Lcom/mintegral/msdk/system/a;

    move-result-object v3

    .line 70
    invoke-interface {v3, v0, v1}, Lcom/mintegral/msdk/MIntegralSDK;->getMTGConfigurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 72
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v2

    sput-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    .line 74
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->a:Ljava/util/Map;

    const-string v5, "gdpr_consent"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->a:Ljava/util/Map;

    const-string v5, "need_set_gdpr"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 76
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->a:Ljava/util/Map;

    const-string v5, "gdpr_consent"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 78
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->a:Ljava/util/Map;

    const-string v6, "need_set_gdpr"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 80
    if-eqz v2, :cond_9a

    .line 81
    if-eqz v5, :cond_c6

    const/4 v2, 0x1

    .line 82
    :goto_93
    const-string v5, "authority_all_info"

    .line 83
    iget-object v6, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->b:Landroid/content/Context;

    invoke-interface {v3, v6, v5, v2}, Lcom/mintegral/msdk/MIntegralSDK;->setUserPrivateInfoType(Landroid/content/Context;Ljava/lang/String;I)V

    .line 87
    :cond_9a
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-static {v2}, Lcom/anythink/network/mintegral/MintegralATInitManager;->c(Lcom/anythink/network/mintegral/MintegralATInitManager;)V

    .line 89
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/mintegral/msdk/MIntegralSDK;->init(Ljava/util/Map;Landroid/content/Context;)V

    .line 90
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-static {v2, v0}, Lcom/anythink/network/mintegral/MintegralATInitManager;->a(Lcom/anythink/network/mintegral/MintegralATInitManager;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-static {v2, v1}, Lcom/anythink/network/mintegral/MintegralATInitManager;->b(Lcom/anythink/network/mintegral/MintegralATInitManager;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-static {v2, v0}, Lcom/anythink/network/mintegral/MintegralATInitManager;->a(Lcom/anythink/network/mintegral/MintegralATInitManager;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->d:Lcom/anythink/network/mintegral/MintegralATInitManager;

    invoke-static {v0, v1}, Lcom/anythink/network/mintegral/MintegralATInitManager;->b(Lcom/anythink/network/mintegral/MintegralATInitManager;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->c:Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;

    if-eqz v0, :cond_c5

    .line 97
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->c:Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;

    invoke-interface {v0}, Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;->onSuccess()V

    .line 112
    :cond_c5
    :goto_c5
    return-void

    .line 81
    :cond_c6
    const/4 v2, 0x0

    goto :goto_93

    .line 100
    :cond_c8
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->c:Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;

    if-eqz v0, :cond_c5

    .line 101
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->c:Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;

    invoke-interface {v0}, Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;->onSuccess()V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_d1} :catch_d2

    goto :goto_c5

    .line 104
    :catch_d2
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->c:Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;

    if-eqz v1, :cond_c5

    .line 108
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInitManager$1;->c:Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;

    invoke-interface {v1, v0}, Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_c5
.end method
