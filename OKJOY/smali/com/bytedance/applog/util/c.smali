.class public Lcom/bytedance/applog/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/applog/util/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/applog/b/h;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 13
    sget-object v1, Lcom/bytedance/applog/util/c;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 14
    const-class v2, Lcom/bytedance/applog/util/c;

    monitor-enter v2

    .line 15
    :try_start_c
    sget-object v1, Lcom/bytedance/applog/util/c;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 16
    sget-object v0, Lcom/bytedance/applog/util/c;->a:Ljava/lang/String;

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_46

    .line 46
    :goto_17
    return-object v0

    .line 22
    :cond_18
    :try_start_18
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_22

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_21} :catch_39
    .catchall {:try_start_18 .. :try_end_21} :catchall_46

    move-result-object v0

    .line 35
    :cond_22
    :goto_22
    :try_start_22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 36
    invoke-virtual {p1}, Lcom/bytedance/applog/b/h;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "google_aid"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_33
    :goto_33
    sput-object v0, Lcom/bytedance/applog/util/c;->a:Ljava/lang/String;

    .line 44
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_46

    .line 46
    :cond_36
    sget-object v0, Lcom/bytedance/applog/util/c;->a:Ljava/lang/String;

    goto :goto_17

    .line 27
    :catch_39
    move-exception v1

    .line 28
    :try_start_3a
    instance-of v3, v1, Ljava/lang/ClassNotFoundException;

    if-nez v3, :cond_22

    instance-of v3, v1, Ljava/lang/NoClassDefFoundError;

    if-nez v3, :cond_22

    .line 31
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_22

    .line 44
    :catchall_46
    move-exception v0

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_46

    throw v0

    .line 38
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Lcom/bytedance/applog/b/h;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "google_aid"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 40
    invoke-static {p0, v0, p1}, Lcom/bytedance/applog/util/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/applog/b/h;)V
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_46

    goto :goto_33
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/applog/b/h;)V
    .registers 5

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p0, :cond_9

    .line 54
    :cond_8
    :goto_8
    return-void

    .line 53
    :cond_9
    invoke-virtual {p2}, Lcom/bytedance/applog/b/h;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "google_aid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_8
.end method
