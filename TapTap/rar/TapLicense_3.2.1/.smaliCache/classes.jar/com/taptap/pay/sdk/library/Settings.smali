.class Lcom/taptap/pay/sdk/library/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLicensed(Landroid/content/Context;)Z
    .registers 14
    .param p0, "c"    # Landroid/content/Context;

    .line 17
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 18
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->getLicensedDate(Landroid/content/Context;)J

    move-result-wide v0

    .line 19
    .local v0, "lastLicensedDate":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_f

    .line 20
    return v5

    .line 22
    :cond_f
    const-wide/32 v6, 0x19bfcc00

    .line 23
    .local v6, "fiveDays":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    .line 24
    .local v8, "during":J
    cmp-long v4, v8, v6

    const/4 v10, 0x1

    if-gez v4, :cond_1d

    .line 25
    return v10

    .line 26
    :cond_1d
    cmp-long v4, v8, v6

    if-lez v4, :cond_2b

    .line 27
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->getLicensedDateAfterFiveDays(Landroid/content/Context;)J

    move-result-wide v11

    cmp-long v2, v11, v2

    if-nez v2, :cond_2a

    .line 28
    return v5

    .line 30
    :cond_2a
    return v10

    .line 34
    .end local v6    # "fiveDays":J
    .end local v8    # "during":J
    :cond_2b
    return v5
.end method

.method static getLicensedDate(Landroid/content/Context;)J
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .line 38
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 39
    sget-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_license_date"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLicensedDateAfterFiveDays(Landroid/content/Context;)J
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .line 48
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 49
    sget-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_license_date_second"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getPurchaseData(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "c"    # Landroid/content/Context;

    .line 58
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 59
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->getPurchasedValidDate(Landroid/content/Context;)J

    move-result-wide v0

    .line 60
    .local v0, "lastPurchaseValidDate":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    .line 61
    return-object v3

    .line 63
    :cond_f
    const-wide/32 v4, 0x19bfcc00

    .line 64
    .local v4, "fiveDays":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    .line 65
    .local v6, "during":J
    cmp-long v2, v6, v4

    if-gez v2, :cond_24

    .line 66
    sget-object v2, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "goods"

    invoke-interface {v2, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 68
    :cond_24
    return-object v3
.end method

.method private static getPurchasedValidDate(Landroid/content/Context;)J
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .line 80
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 81
    sget-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_purchased_date"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getSign(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;

    .line 90
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 91
    sget-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sign"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initSp(Landroid/content/Context;)V
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .line 11
    sget-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_d

    .line 12
    const/4 v0, 0x0

    const-string v1, "tap_license"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 14
    :cond_d
    return-void
.end method

.method static savePurchaseData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .line 74
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 75
    sget-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "goods"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->setPurchasedValidDate(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method static saveSign(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "sign"    # Ljava/lang/String;

    .line 95
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 96
    sget-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    return-void
.end method

.method static setLicensedDate(Landroid/content/Context;)V
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .line 43
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 44
    sget-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_license_date"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    return-void
.end method

.method static setLicensedDateAfterFiveDays(Landroid/content/Context;)V
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .line 53
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 54
    sget-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_license_date_second"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    return-void
.end method

.method private static setPurchasedValidDate(Landroid/content/Context;)V
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .line 85
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Settings;->initSp(Landroid/content/Context;)V

    .line 86
    sget-object v0, Lcom/taptap/pay/sdk/library/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_purchased_date"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    return-void
.end method
