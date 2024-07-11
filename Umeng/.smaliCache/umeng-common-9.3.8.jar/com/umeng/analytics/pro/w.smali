.class Lcom/umeng/analytics/pro/w;
.super Ljava/lang/Object;
.source "SessionIdGenerateServiceImpl.java"

# interfaces
.implements Lcom/umeng/analytics/pro/v;


# instance fields
.field private a:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-wide v0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    iput-wide v0, p0, Lcom/umeng/analytics/pro/w;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 31
    iget-wide v0, p0, Lcom/umeng/analytics/pro/w;->a:J

    return-wide v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 38
    nop

    .line 39
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    if-eqz p1, :cond_26

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "02:00:00:00:00:00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 43
    :cond_26
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Appkey is null or empty, Please check!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)V
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/umeng/analytics/pro/w;->a:J

    .line 27
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    :try_start_4
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 75
    const-string v2, "session_id"

    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string p2, "session_end_time"

    const-wide/16 v2, 0x0

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string p2, "a_start_time"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string p2, "a_end_time"

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    goto :goto_27

    .line 84
    :catch_26
    move-exception p1

    :goto_27
    nop

    .line 85
    return-void
.end method

.method public a(JJ)Z
    .registers 13

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_14

    sub-long p1, v0, p1

    iget-wide v5, p0, Lcom/umeng/analytics/pro/w;->a:J

    cmp-long v7, p1, v5

    if-gez v7, :cond_14

    .line 58
    return v2

    .line 62
    :cond_14
    cmp-long p1, p3, v3

    if-lez p1, :cond_21

    sub-long/2addr v0, p3

    iget-wide p1, p0, Lcom/umeng/analytics/pro/w;->a:J

    cmp-long p3, v0, p1

    if-lez p3, :cond_21

    .line 63
    const/4 p1, 0x1

    return p1

    .line 65
    :cond_21
    return v2
.end method
