.class public final Lcom/mintegral/msdk/base/common/net/h;
.super Ljava/lang/Object;
.source "CommonNetConnectManager.java"


# static fields
.field private static b:Lcom/mintegral/msdk/base/common/net/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Landroid/net/ConnectivityManager;

.field private d:Lcom/mintegral/msdk/base/common/net/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "NetConnectManager"

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/net/h;
    .registers 4

    .prologue
    .line 28
    const-class v1, Lcom/mintegral/msdk/base/common/net/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mintegral/msdk/base/common/net/h;->b:Lcom/mintegral/msdk/base/common/net/h;

    if-nez v0, :cond_25

    .line 29
    new-instance v0, Lcom/mintegral/msdk/base/common/net/h;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/common/net/h;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/common/net/h;->b:Lcom/mintegral/msdk/base/common/net/h;

    .line 30
    if-eqz p0, :cond_1c

    .line 31
    sget-object v2, Lcom/mintegral/msdk/base/common/net/h;->b:Lcom/mintegral/msdk/base/common/net/h;

    const-string v0, "connectivity"

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v2, Lcom/mintegral/msdk/base/common/net/h;->c:Landroid/net/ConnectivityManager;

    .line 34
    :cond_1c
    sget-object v0, Lcom/mintegral/msdk/base/common/net/h;->b:Lcom/mintegral/msdk/base/common/net/h;

    new-instance v2, Lcom/mintegral/msdk/base/common/net/j;

    invoke-direct {v2}, Lcom/mintegral/msdk/base/common/net/j;-><init>()V

    iput-object v2, v0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    .line 36
    :cond_25
    sget-object v0, Lcom/mintegral/msdk/base/common/net/h;->b:Lcom/mintegral/msdk/base/common/net/h;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->c:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_5

    .line 64
    :cond_4
    :goto_4
    return-void

    .line 49
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    const-string v1, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const-string v1, "wifi"

    iput-object v1, v0, Lcom/mintegral/msdk/base/common/net/j;->e:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/common/net/j;->d:Z

    .line 59
    :goto_2a
    const-string v0, "NetConnectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current net connect type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    iget-object v2, v2, Lcom/mintegral/msdk/base/common/net/j;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_4

    .line 62
    :catch_43
    move-exception v0

    const-string v0, "NetConnectManager"

    const-string v1, "NETWORK FAILED"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1074
    :cond_4c
    :try_start_4c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 1075
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_dc

    .line 1077
    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1078
    :cond_76
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mintegral/msdk/base/common/net/j;->d:Z

    .line 1079
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    iput-object v0, v1, Lcom/mintegral/msdk/base/common/net/j;->a:Ljava/lang/String;

    .line 1080
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const-string v1, "10.0.0.172"

    iput-object v1, v0, Lcom/mintegral/msdk/base/common/net/j;->b:Ljava/lang/String;

    .line 1081
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const-string v1, "80"

    iput-object v1, v0, Lcom/mintegral/msdk/base/common/net/j;->c:Ljava/lang/String;

    .line 56
    :goto_8b
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    iget-object v1, v1, Lcom/mintegral/msdk/base/common/net/j;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/mintegral/msdk/base/common/net/j;->e:Ljava/lang/String;

    goto :goto_2a

    .line 1084
    :cond_94
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1085
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mintegral/msdk/base/common/net/j;->d:Z

    .line 1086
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    iput-object v0, v1, Lcom/mintegral/msdk/base/common/net/j;->a:Ljava/lang/String;

    .line 1087
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const-string v1, "10.0.0.200"

    iput-object v1, v0, Lcom/mintegral/msdk/base/common/net/j;->b:Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const-string v1, "80"

    iput-object v1, v0, Lcom/mintegral/msdk/base/common/net/j;->c:Ljava/lang/String;

    goto :goto_8b

    .line 1091
    :cond_b2
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d2

    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d2

    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d2

    const-string v1, "3gnet"

    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 1093
    :cond_d2
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mintegral/msdk/base/common/net/j;->d:Z

    .line 1094
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    iput-object v0, v1, Lcom/mintegral/msdk/base/common/net/j;->a:Ljava/lang/String;

    goto :goto_8b

    .line 1101
    :cond_dc
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 1102
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    .line 1103
    if-eqz v0, :cond_138

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_138

    .line 1104
    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    iput-object v0, v2, Lcom/mintegral/msdk/base/common/net/j;->b:Ljava/lang/String;

    .line 1105
    const-string v0, "10.0.0.172"

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    iget-object v2, v2, Lcom/mintegral/msdk/base/common/net/j;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1106
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/common/net/j;->d:Z

    .line 1107
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const-string v1, "80"

    iput-object v1, v0, Lcom/mintegral/msdk/base/common/net/j;->c:Ljava/lang/String;

    goto :goto_8b

    .line 1108
    :cond_10c
    const-string v0, "10.0.0.200"

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    iget-object v2, v2, Lcom/mintegral/msdk/base/common/net/j;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1109
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/common/net/j;->d:Z

    .line 1110
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const-string v1, "80"

    iput-object v1, v0, Lcom/mintegral/msdk/base/common/net/j;->c:Ljava/lang/String;

    goto/16 :goto_8b

    .line 1112
    :cond_129
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mintegral/msdk/base/common/net/j;->d:Z

    .line 1113
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mintegral/msdk/base/common/net/j;->c:Ljava/lang/String;

    goto/16 :goto_8b

    .line 1116
    :cond_138
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/common/net/j;->d:Z
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_13d} :catch_43

    goto/16 :goto_8b
.end method

.method public final b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 128
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/h;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_d

    .line 130
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 136
    :cond_d
    :goto_d
    return v0

    .line 135
    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public final c()Lcom/mintegral/msdk/base/common/net/j;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/h;->d:Lcom/mintegral/msdk/base/common/net/j;

    return-object v0
.end method
