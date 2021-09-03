.class public Lcom/tds/common/utils/TapGameUtil;
.super Ljava/lang/Object;
.source "TapGameUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/tds/common/utils/TapGameUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/common/utils/TapGameUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTapClientInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "TapTapInstalled":Z
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_e

    .line 27
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_d

    .line 28
    const/4 v0, 0x1

    .line 32
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_d
    goto :goto_27

    .line 30
    :catch_e
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tds/common/utils/TapGameUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isInstalled=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_27
    return v0
.end method

.method public static isTapGlobalInstalled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    const-string v0, "com.taptap.global"

    invoke-static {p0, v0}, Lcom/tds/common/utils/TapGameUtil;->isTapClientInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTapTapInstalled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 16
    const-string v0, "com.taptap"

    invoke-static {p0, v0}, Lcom/tds/common/utils/TapGameUtil;->isTapClientInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static openReviewInTapClient(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "clientUri"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s/app?tab_name=review&app_id=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    .line 74
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    nop

    .line 75
    return v4

    .line 71
    :catch_23
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tds/common/utils/TapGameUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "openTapTapReview failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v0
.end method

.method public static openReviewInTapGlobal(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;

    .line 62
    const-string v0, "tapglobal://taptap.tw"

    invoke-static {p0, p1, v0}, Lcom/tds/common/utils/TapGameUtil;->openReviewInTapClient(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static openReviewInTapTap(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;

    .line 58
    const-string v0, "taptap://taptap.com"

    invoke-static {p0, p1, v0}, Lcom/tds/common/utils/TapGameUtil;->openReviewInTapClient(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateGameInTapClient(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "clientUri"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s/app?app_id=%s&source=outer|update"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 48
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    .line 53
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    nop

    .line 54
    return v4

    .line 50
    :catch_23
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tds/common/utils/TapGameUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "updateGameInTapTap failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return v0
.end method

.method public static updateGameInTapGlobal(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;

    .line 41
    const-string v0, "tapglobal://taptap.tw"

    invoke-static {p0, p1, v0}, Lcom/tds/common/utils/TapGameUtil;->updateGameInTapClient(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateGameInTapTap(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;

    .line 37
    const-string v0, "taptap://taptap.com"

    invoke-static {p0, p1, v0}, Lcom/tds/common/utils/TapGameUtil;->updateGameInTapClient(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
