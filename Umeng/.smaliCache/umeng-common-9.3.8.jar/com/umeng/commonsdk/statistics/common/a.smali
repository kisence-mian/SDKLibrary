.class public Lcom/umeng/commonsdk/statistics/common/a;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/common/a$c;,
        Lcom/umeng/commonsdk/statistics/common/a$b;,
        Lcom/umeng/commonsdk/statistics/common/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 50
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/a;->c(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/a$a;

    move-result-object p0

    .line 51
    if-nez p0, :cond_8

    .line 52
    return-object v0

    .line 55
    :cond_8
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/common/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_13

    .line 56
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/a$a;->a(Lcom/umeng/commonsdk/statistics/common/a$a;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    return-object p0

    .line 61
    :cond_13
    goto :goto_15

    .line 59
    :catch_14
    move-exception p0

    .line 63
    :goto_15
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 68
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/a;->c(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/a$a;

    move-result-object p0

    .line 69
    if-nez p0, :cond_8

    .line 70
    return-object v0

    .line 72
    :cond_8
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/a$a;->a(Lcom/umeng/commonsdk/statistics/common/a$a;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    return-object p0

    .line 73
    :catch_d
    move-exception p0

    .line 77
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/a$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    .line 84
    return-object v2

    .line 88
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 89
    const-string v1, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_5e

    .line 92
    nop

    .line 94
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/a$b;

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/common/a$b;-><init>(Lcom/umeng/commonsdk/statistics/common/a$1;)V

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 99
    :try_start_2f
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/a$c;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/a$b;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/umeng/commonsdk/statistics/common/a$c;-><init>(Landroid/os/IBinder;)V

    .line 100
    invoke-virtual {v1, v2}, Lcom/umeng/commonsdk/statistics/common/a$c;->a(Z)Z

    move-result v2

    .line 101
    const-string v3, ""

    .line 102
    if-nez v2, :cond_44

    .line 103
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/a$c;->a()Ljava/lang/String;

    move-result-object v3

    .line 105
    :cond_44
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/a$a;

    invoke-direct {v1, v3, v2}, Lcom/umeng/commonsdk/statistics/common/a$a;-><init>(Ljava/lang/String;Z)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_49} :catch_50
    .catchall {:try_start_2f .. :try_end_49} :catchall_4e

    .line 106
    nop

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_4e
    move-exception v1

    goto :goto_52

    .line 107
    :catch_50
    move-exception v1

    .line 108
    :try_start_51
    throw v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4e

    .line 110
    :goto_52
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    .line 113
    :cond_56
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :catch_5e
    move-exception p0

    .line 91
    throw p0
.end method
