.class public final Lcom/appsflyer/internal/ak;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static AFInAppEventParameterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized AFKeystoreWrapper(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/appsflyer/internal/ak;

    monitor-enter v0

    .line 28
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    .line 29
    sget-object p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_ae

    monitor-exit v0

    return-object p0

    .line 31
    :cond_d
    :try_start_d
    sget-object v1, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/lang/String;

    if-nez v1, :cond_aa

    .line 32
    nop

    .line 1111
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 1112
    goto :goto_2a

    .line 1114
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1115
    const-string v3, "AF_INSTALLATION"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    :goto_2a
    nop

    .line 33
    if-eqz v2, :cond_30

    .line 34
    sput-object v2, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_ae

    goto :goto_9b

    .line 37
    :cond_30
    :try_start_30
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "AF_INSTALLATION"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 2100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2101
    nop

    .line 2107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    sput-object v1, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/lang/String;

    goto :goto_7c

    .line 41
    :cond_73
    invoke-static {v1}, Lcom/appsflyer/internal/ak;->valueOf(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/lang/String;

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 44
    :goto_7c
    sget-object v1, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/lang/String;

    .line 2124
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2125
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2126
    const-string v2, "AF_INSTALLATION"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2127
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_94} :catch_95
    .catchall {:try_start_30 .. :try_end_94} :catchall_ae

    .line 47
    goto :goto_9b

    .line 45
    :catch_95
    move-exception p0

    .line 46
    :try_start_96
    const-string v1, "Error getting AF unique ID"

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :goto_9b
    sget-object p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz p0, :cond_aa

    .line 50
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    const-string v1, "uid"

    sget-object v2, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_aa
    sget-object p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/lang/String;
    :try_end_ac
    .catchall {:try_start_96 .. :try_end_ac} :catchall_ae

    monitor-exit v0

    return-object p0

    .line 27
    :catchall_ae
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static valueOf(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .line 57
    const-string v0, "Exception while trying to close the InstallationFile"

    .line 58
    nop

    .line 60
    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_2b
    .catchall {:try_start_4 .. :try_end_b} :catchall_29

    .line 61
    :try_start_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int p0, v3

    new-array v1, p0, [B

    .line 62
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 63
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_24
    .catchall {:try_start_b .. :try_end_18} :catchall_21

    .line 69
    :try_start_18
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 73
    goto :goto_3f

    .line 71
    :catch_1c
    move-exception p0

    .line 72
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    goto :goto_3f

    .line 67
    :catchall_21
    move-exception p0

    move-object v1, v2

    goto :goto_4b

    .line 64
    :catch_24
    move-exception p0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2d

    .line 67
    :catchall_29
    move-exception p0

    goto :goto_4b

    .line 64
    :catch_2b
    move-exception p0

    move-object v2, v1

    .line 65
    :goto_2d
    :try_start_2d
    const-string v3, "Exception while reading InstallationFile: "

    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_29

    .line 68
    if-eqz v1, :cond_3d

    .line 69
    :try_start_34
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3d

    .line 71
    :catch_38
    move-exception p0

    .line 72
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    goto :goto_3e

    .line 73
    :cond_3d
    :goto_3d
    nop

    .line 75
    :goto_3e
    move-object v1, v2

    :goto_3f
    new-instance p0, Ljava/lang/String;

    if-eqz v1, :cond_44

    goto :goto_47

    :cond_44
    const/4 v0, 0x0

    new-array v1, v0, [B

    :goto_47
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    return-object p0

    .line 68
    :goto_4b
    if-eqz v1, :cond_56

    .line 69
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_56

    .line 71
    :catch_51
    move-exception v1

    .line 72
    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_57

    .line 73
    :cond_56
    :goto_56
    nop

    .line 74
    :goto_57
    throw p0
.end method
