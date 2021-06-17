.class public Lcom/appsflyer/share/ShareInviteHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateInviteUrl(Landroid/content/Context;)Lcom/appsflyer/share/LinkGenerator;
    .registers 7

    .line 31
    nop

    .line 1035
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "oneLinkSlug"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "onelinkDomain"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1038
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v4, "AppUserId"

    invoke-virtual {v3, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1039
    new-instance v4, Lcom/appsflyer/share/LinkGenerator;

    const-string v5, "af_app_invites"

    invoke-direct {v4, v5}, Lcom/appsflyer/share/LinkGenerator;-><init>(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Lcom/appsflyer/share/LinkGenerator;->setBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v1

    .line 1041
    invoke-virtual {v1, v0}, Lcom/appsflyer/share/LinkGenerator;->setReferrerUID(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    .line 1042
    invoke-virtual {v0, v3}, Lcom/appsflyer/share/LinkGenerator;->setReferrerCustomerId(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    .line 1043
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "af_siteid"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/share/LinkGenerator;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object p0

    .line 1045
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "onelinkScheme"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_5e

    .line 1047
    invoke-virtual {p0, v0}, Lcom/appsflyer/share/LinkGenerator;->setBaseDeeplink(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    .line 1049
    :cond_5e
    nop

    .line 31
    return-object p0
.end method

.method public static logInvite(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 54
    const-string p0, "[Invite] Cannot report App-Invite with null/empty channel"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 55
    return-void

    .line 58
    :cond_c
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    const-string v2, "waitForCustomerId"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 60
    const/4 p0, 0x1

    const-string p1, "CustomerUserId not set, report Invite is disabled"

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 61
    return-void

    .line 64
    :cond_20
    invoke-static {p0}, Lcom/appsflyer/share/ShareInviteHelper;->generateInviteUrl(Landroid/content/Context;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p2}, Lcom/appsflyer/share/LinkGenerator;->addParameters(Ljava/util/Map;)Lcom/appsflyer/share/LinkGenerator;

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "[Invite] Reporting App-Invite via channel: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[Invite] Generated URL: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appsflyer/share/LinkGenerator;->generateLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 68
    nop

    .line 1072
    invoke-virtual {v0}, Lcom/appsflyer/share/LinkGenerator;->getMediaSource()Ljava/lang/String;

    move-result-object p2

    .line 1073
    const-string v1, "af_app_invites"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1074
    const-string p2, "af_invite"

    goto :goto_64

    .line 1075
    :cond_5a
    const-string v1, "af_user_share"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1076
    const-string p2, "af_share"

    .line 1078
    :cond_64
    :goto_64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1080
    invoke-virtual {v0}, Lcom/appsflyer/share/LinkGenerator;->getParameters()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 1081
    invoke-virtual {v0}, Lcom/appsflyer/share/LinkGenerator;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1084
    :cond_76
    const-string v0, "af_channel"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-virtual {p1, p0, p2, v1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    return-void
.end method
