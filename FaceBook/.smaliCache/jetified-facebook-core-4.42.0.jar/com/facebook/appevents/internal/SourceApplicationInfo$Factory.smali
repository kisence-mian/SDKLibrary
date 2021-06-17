.class public Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;
.super Ljava/lang/Object;
.source "SourceApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/internal/SourceApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "openedByAppLink":Z
    const-string v1, ""

    .line 113
    .local v1, "callingApplicationPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 114
    .local v2, "callingApplication":Landroid/content/ComponentName;
    const/4 v3, 0x0

    if-eqz v2, :cond_19

    .line 115
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 118
    return-object v3

    .line 125
    :cond_19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 126
    .local v4, "openIntent":Landroid/content/Intent;
    const/4 v5, 0x1

    const-string v6, "_fbSourceApplicationHasBeenSet"

    if-eqz v4, :cond_42

    const/4 v7, 0x0

    .line 127
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_42

    .line 130
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    invoke-static {v4}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v7

    .line 132
    .local v7, "appLinkData":Landroid/os/Bundle;
    if-eqz v7, :cond_42

    .line 133
    const/4 v0, 0x1

    .line 134
    const-string v8, "referer_app_link"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 135
    .local v8, "appLinkReferrerData":Landroid/os/Bundle;
    if-eqz v8, :cond_42

    .line 136
    const-string v9, "package"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "appLinkReferrerPackage":Ljava/lang/String;
    move-object v1, v9

    .line 141
    .end local v7    # "appLinkData":Landroid/os/Bundle;
    .end local v8    # "appLinkReferrerData":Landroid/os/Bundle;
    .end local v9    # "appLinkReferrerPackage":Ljava/lang/String;
    :cond_42
    if-eqz v4, :cond_47

    .line 143
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    :cond_47
    new-instance v5, Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {v5, v1, v0, v3}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;ZLcom/facebook/appevents/internal/SourceApplicationInfo$1;)V

    return-object v5
.end method
