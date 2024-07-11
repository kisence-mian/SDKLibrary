.class Lcom/umeng/commonsdk/internal/utils/b$1;
.super Landroid/telephony/PhoneStateListener;
.source "BaseStationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/internal/utils/b;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/internal/utils/b;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 11

    .line 63
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 65
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "base station onSignalStrengthsChanged"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "BaseStationUtils"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :try_start_10
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    .line 69
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 68
    invoke-static {v1, v4}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 71
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    const/4 v4, 0x0

    .line 76
    iget-object v5, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v5}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v5
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_32} :catch_153

    const/16 v6, 0x9

    const-string v7, ""

    if-eqz v5, :cond_5f

    :try_start_38
    iget-object v5, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v5}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    const/16 v8, 0xd

    if-ne v5, v8, :cond_5f

    .line 78
    aget-object p1, v1, v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    goto/16 :goto_115

    :cond_5f
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_fc

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_9c

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    .line 82
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v5, 0xa

    if-eq v1, v5, :cond_9c

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    .line 83
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-eq v1, v6, :cond_9c

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    .line 84
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_fc

    .line 87
    :cond_9c
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->b(Lcom/umeng/commonsdk/internal/utils/b;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b3

    const-string v5, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 91
    const-string v4, "0"

    goto :goto_fa

    .line 92
    :cond_b3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d7

    const-string v5, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 93
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    :cond_d6
    goto :goto_fa

    :cond_d7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d6

    const-string v5, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 98
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result p1

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    :goto_fa
    move-object p1, v4

    goto :goto_115

    .line 105
    :cond_fc
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    .line 106
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x71

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    :goto_115
    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationStrength is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_133} :catch_153

    if-nez v0, :cond_14d

    .line 115
    :try_start_135
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v0

    const v1, 0x8004

    .line 116
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v2

    .line 115
    invoke-static {v0, v1, v2, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_14b
    .catchall {:try_start_135 .. :try_end_14b} :catchall_14c

    .line 121
    goto :goto_14d

    .line 119
    :catchall_14c
    move-exception p1

    .line 124
    :cond_14d
    :goto_14d
    :try_start_14d
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/internal/utils/b;->c()V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_152} :catch_153

    .line 127
    goto :goto_154

    .line 125
    :catch_153
    move-exception p1

    .line 128
    :goto_154
    return-void
.end method
