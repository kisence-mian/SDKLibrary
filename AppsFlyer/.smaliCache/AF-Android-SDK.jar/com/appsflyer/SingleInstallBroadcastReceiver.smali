.class public Lcom/appsflyer/SingleInstallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 11
    const-string v0, "referrer"

    if-nez p2, :cond_5

    .line 12
    return-void

    .line 14
    :cond_5
    nop

    .line 16
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    .line 19
    goto :goto_13

    .line 17
    :catchall_c
    move-exception v2

    .line 18
    const-string v3, "error in BroadcastReceiver "

    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    .line 21
    :goto_13
    if-eqz v2, :cond_27

    .line 23
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 24
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 25
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/appsflyer/internal/af;->valueOf(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void

    .line 31
    :cond_27
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "referrer_timestamp"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 33
    if-eqz v0, :cond_47

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-gez v0, :cond_47

    .line 34
    return-void

    .line 37
    :cond_47
    const-string v0, "SingleInstallBroadcastReceiver called"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
