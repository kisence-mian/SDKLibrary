.class public Lcom/kwad/sdk/core/config/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/config/c$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

.field private static volatile b:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

.field private static volatile c:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

.field private static volatile d:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

.field private static volatile e:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;


# direct methods
.method public static a()Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c;->a:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "KEY_TEMPLATE_DATA"

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22

    :try_start_18
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->parseJson(Lorg/json/JSONObject;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception p0

    :cond_22
    :goto_22
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    const-string v0, "SdkConfigManager"

    const-string v1, "load"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/config/c$a;->a()V

    invoke-static {p0}, Lcom/kwad/sdk/core/config/b;->b(Landroid/content/Context;)V

    const-string v0, "ksadsdk_template_config"

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/config/c;->a:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    const-string v0, "ksadsdk_splash_template_config"

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/config/c;->b:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    const-string v0, "ksadsdk_mini_card_template_config"

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    move-result-object p0

    sput-object p0, Lcom/kwad/sdk/core/config/c;->c:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)V
    .registers 4

    if-eqz p1, :cond_35

    sget-object v0, Lcom/kwad/sdk/core/config/c;->e:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    if-eqz v0, :cond_24

    invoke-static {p0}, Lcom/kwad/sdk/core/config/c;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    sget-object v1, Lcom/kwad/sdk/core/config/c;->e:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_24
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ksadsdk_reward_middle_endcard_template_config"

    const-string v1, "reward_middle_endcard.html"

    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    sput-object p1, Lcom/kwad/sdk/core/config/c;->e:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    :cond_35
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadConfigHtml preload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkConfigManager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kwad/sdk/core/config/c$1;

    invoke-direct {v0, p1, p0, p3, p2}, Lcom/kwad/sdk/core/config/c$1;-><init>(Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData;)V
    .registers 3

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData;->templateConfig:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/config/c;->b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)V

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData;->splashConfig:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/config/c;->c(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)V

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData;->rewardMiniCardConfig:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/config/c;->d(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)V

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData;->templateConfigMap:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfigMap;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfigMap;->downloadPopWindowConfig:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/config/c;->e(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)V

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData;->rewardMiddleEndcardConfig:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z
    .registers 5

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->N:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_10

    return v1

    :cond_10
    invoke-static {}, Lcom/kwad/sdk/core/config/c;->r()I

    move-result v0

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v2

    if-le v0, v2, :cond_1b

    return v1

    :cond_1b
    invoke-static {p0, p1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->e(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->d(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result p0

    const/4 v2, 0x1

    if-le v0, p0, :cond_2c

    move p0, v2

    goto :goto_2d

    :cond_2c
    move p0, v1

    :goto_2d
    if-nez p1, :cond_32

    if-eqz p0, :cond_32

    move v1, v2

    :cond_32
    return v1
.end method

.method public static b()Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c;->b:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const-class v0, Lcom/kwad/sdk/core/config/c;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "template"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v2, "pop_wind.html"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)V
    .registers 4

    if-eqz p1, :cond_35

    sget-object v0, Lcom/kwad/sdk/core/config/c;->a:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    if-eqz v0, :cond_24

    invoke-static {p0}, Lcom/kwad/sdk/core/config/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    sget-object v1, Lcom/kwad/sdk/core/config/c;->a:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_24
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ksadsdk_template_config"

    const-string v1, "feed.html"

    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    sput-object p1, Lcom/kwad/sdk/core/config/c;->a:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    :cond_35
    return-void
.end method

.method public static c()Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c;->c:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/kwad/sdk/core/config/c;->c:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    return-object v0

    :cond_7
    new-instance v0, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const-class v0, Lcom/kwad/sdk/core/config/c;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "template"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v2, "feed.html"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)V
    .registers 4

    if-eqz p1, :cond_33

    sget-object v0, Lcom/kwad/sdk/core/config/c;->b:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    if-eqz v0, :cond_24

    invoke-static {p0}, Lcom/kwad/sdk/core/config/c;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    sget-object v1, Lcom/kwad/sdk/core/config/c;->b:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_24
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ksadsdk_splash_template_config"

    const-string v1, "feed_splash.html"

    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    sput-object p1, Lcom/kwad/sdk/core/config/c;->b:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const-class v0, Lcom/kwad/sdk/core/config/c;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "template"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v2, "feed_splash.html"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->X:Lcom/kwad/sdk/core/config/item/l;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static d(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)V
    .registers 4

    if-eqz p1, :cond_33

    sget-object v0, Lcom/kwad/sdk/core/config/c;->c:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    if-eqz v0, :cond_24

    invoke-static {p0}, Lcom/kwad/sdk/core/config/c;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    sget-object v1, Lcom/kwad/sdk/core/config/c;->c:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_24
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ksadsdk_mini_card_template_config"

    const-string v1, "mini_card.html"

    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    sput-object p1, Lcom/kwad/sdk/core/config/c;->c:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const-class v0, Lcom/kwad/sdk/core/config/c;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "template"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v2, "mini_card.html"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->W:Lcom/kwad/sdk/core/config/item/f;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static e(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)V
    .registers 4

    if-eqz p1, :cond_33

    invoke-static {p0}, Lcom/kwad/sdk/core/config/c;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sget-object v1, Lcom/kwad/sdk/core/config/c;->d:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    if-eqz v1, :cond_24

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    sget-object v1, Lcom/kwad/sdk/core/config/c;->d:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_24
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ksadsdk_download_pop_window_config"

    const-string v1, "pop_wind.html"

    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    sput-object p1, Lcom/kwad/sdk/core/config/c;->d:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    return-void
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const-class v0, Lcom/kwad/sdk/core/config/c;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "template"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v2, "reward_middle_endcard.html"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f()Z
    .registers 2

    sget v0, Lcom/kwad/sdk/d;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    const-class v0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    invoke-static {v0}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    const-string v1, "KEY_PLAYER_TYPE"

    invoke-interface {v0, v1}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;->a(Ljava/lang/String;)Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_1b
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_22
    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->Q:Lcom/kwad/sdk/core/config/item/c;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/c;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b
.end method

.method public static g()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->M:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_f

    return v0

    :cond_f
    const/16 v0, 0x1388

    return v0
.end method

.method public static h()I
    .registers 2

    const-class v0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    invoke-static {v0}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    const-string v1, "KEY_BATCH_MAXNUM"

    invoke-interface {v0, v1}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;->a(Ljava/lang/String;)Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1d
    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->k:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static i()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->Y:Lcom/kwad/sdk/core/config/item/l;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static j()Z
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->m:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static k()Z
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->r:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static l()Z
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->s:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static m()Z
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->R:Lcom/kwad/sdk/core/config/item/c;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static n()Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c;->e:Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    return-object v0
.end method

.method public static o()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->y:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static p()Z
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->z:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static q()Z
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->F:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static r()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->N:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static s()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->U:Lcom/kwad/sdk/core/config/item/k;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->V:Lcom/kwad/sdk/core/config/item/k;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static u()Z
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->J:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static v()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->L:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static w()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->ag:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static x()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->ah:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static y()Z
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->ai:Lcom/kwad/sdk/core/config/item/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method
