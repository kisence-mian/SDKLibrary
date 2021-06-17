.class public Lcom/tendcloud/tenddata/game/eg;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 18
    const-string v0, "os"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osVersionName"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "osVersionCode"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lcom/tendcloud/tenddata/game/eg;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lcom/tendcloud/tenddata/game/eg;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timezoneV"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "romVersion"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lcom/tendcloud/tenddata/game/eg;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "basebandVersion"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "osBuild"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bi;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "jailBroken"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eg;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    .line 50
    const/16 v0, 0xe

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 51
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    return-object v0

    .line 53
    :cond_e
    return-object v1

    .line 55
    :catchall_f
    move-exception v0

    .line 58
    return-object v1
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .line 62
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    .line 63
    :catchall_9
    move-exception v0

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()F
    .registers 2

    .line 79
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    int-to-float v0, v0

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v1

    return v0

    .line 80
    :catchall_e
    move-exception v0

    .line 83
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private static g()Ljava/lang/String;
    .registers 1

    .line 71
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/eg;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    .line 72
    :catchall_9
    move-exception v0

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 3

    .line 39
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/eg;->a_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 40
    const-string v1, "timezoneV"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/eg;->a_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 45
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
