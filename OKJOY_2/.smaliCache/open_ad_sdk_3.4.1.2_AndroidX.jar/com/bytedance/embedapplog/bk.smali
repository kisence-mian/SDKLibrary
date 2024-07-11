.class public Lcom/bytedance/embedapplog/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/embedapplog/bk;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)Ljava/lang/String;
    .registers 7

    .line 13
    sget-object v0, Lcom/bytedance/embedapplog/bk;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 14
    const-class v0, Lcom/bytedance/embedapplog/bk;

    monitor-enter v0

    .line 15
    :try_start_b
    sget-object v1, Lcom/bytedance/embedapplog/bk;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 16
    sget-object p0, Lcom/bytedance/embedapplog/bk;->a:Ljava/lang/String;

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_5d

    return-object p0

    .line 19
    :cond_17
    nop

    .line 21
    nop

    .line 22
    const/4 v1, 0x0

    :try_start_1a
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    .line 24
    if-eqz v2, :cond_25

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_27

    goto :goto_26

    .line 24
    :cond_25
    move-object v2, v1

    .line 33
    :goto_26
    goto :goto_35

    .line 27
    :catchall_27
    move-exception v2

    .line 28
    :try_start_28
    instance-of v3, v2, Ljava/lang/ClassNotFoundException;

    if-nez v3, :cond_34

    instance-of v3, v2, Ljava/lang/NoClassDefFoundError;

    if-eqz v3, :cond_31

    goto :goto_34

    .line 31
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    :cond_34
    :goto_34
    move-object v2, v1

    :goto_35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 36
    invoke-virtual {p1}, Lcom/bytedance/embedapplog/z;->e()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "google_aid"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_59

    .line 38
    :cond_46
    invoke-virtual {p1}, Lcom/bytedance/embedapplog/z;->e()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "google_aid"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 40
    invoke-static {p0, v2, p1}, Lcom/bytedance/embedapplog/bk;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/embedapplog/z;)V

    .line 43
    :cond_59
    :goto_59
    sput-object v2, Lcom/bytedance/embedapplog/bk;->a:Ljava/lang/String;

    .line 44
    monitor-exit v0

    goto :goto_60

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_28 .. :try_end_5f} :catchall_5d

    throw p0

    .line 46
    :cond_60
    :goto_60
    sget-object p0, Lcom/bytedance/embedapplog/bk;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/embedapplog/z;)V
    .registers 4

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez p0, :cond_9

    goto :goto_1b

    .line 53
    :cond_9
    invoke-virtual {p2}, Lcom/bytedance/embedapplog/z;->e()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "google_aid"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-void

    .line 51
    :cond_1b
    :goto_1b
    return-void
.end method
