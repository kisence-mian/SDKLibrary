.class final Lcom/umeng/cconfig/UMRemoteConfig$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/cconfig/UMRemoteConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/cconfig/UMRemoteConfig;


# direct methods
.method constructor <init>(Lcom/umeng/cconfig/UMRemoteConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/cconfig/UMRemoteConfig$1;->a:Lcom/umeng/cconfig/UMRemoteConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "cconfig_sp_last_request_time"

    const-string v1, "jessie"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    const-string v4, "ucc"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[imprint] key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, " value: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "@"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aget-object p2, p1, p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ae

    const-string v4, "1"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ae

    aget-object p1, p1, v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_ae

    invoke-static {}, Lcom/umeng/cconfig/UMRemoteConfig;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/cconfig/a/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    if-eqz p2, :cond_ae

    const-string v4, ""

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_74

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    goto :goto_74

    :cond_6a
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[imprint] newTimeStamp.equals(oldTimeStamp)"

    aput-object p2, p1, v3

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ae

    :cond_74
    :goto_74
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/umeng/cconfig/UMRemoteConfig;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/cconfig/b/e;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_86} :catch_af

    if-eqz p1, :cond_ae

    :try_start_88
    new-array p2, v2, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[imprint] send request. body: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {v1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lcom/umeng/cconfig/c/b;

    const-string v0, "https://ucc.umeng.com/v1/fetch"

    invoke-direct {p2, v0, p1}, Lcom/umeng/cconfig/c/b;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p2}, Lcom/umeng/cconfig/c/c;->a(Ljava/lang/Runnable;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_ac} :catch_ad

    goto :goto_ae

    :catch_ad
    move-exception p1

    :cond_ae
    :goto_ae
    return-void

    :catch_af
    move-exception p1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[imprint] fail"

    aput-object p2, p1, v3

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
