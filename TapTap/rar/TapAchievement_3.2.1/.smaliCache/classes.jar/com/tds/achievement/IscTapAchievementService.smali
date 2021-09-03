.class public Lcom/tds/achievement/IscTapAchievementService;
.super Ljava/lang/Object;
.source "IscTapAchievementService.java"


# annotations
.annotation runtime Lcom/tds/common/isc/IscService;
    value = "TapAchievement"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;Lcom/tds/common/entities/TapAccountProvider;)V
    .registers 3
    .param p0, "app"    # Landroid/app/Activity;
    .param p1, "config"    # Lcom/tds/common/entities/TapConfig;
    .param p2, "accountProvider"    # Lcom/tds/common/entities/TapAccountProvider;
    .annotation runtime Lcom/tds/common/isc/IscMethod;
        value = "init"
    .end annotation

    .line 17
    invoke-static {p0, p1, p2}, Lcom/tds/achievement/TapAchievement;->init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;Lcom/tds/common/entities/TapAccountProvider;)V

    .line 18
    return-void
.end method
