.class Lcom/umeng/commonsdk/internal/utils/c$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/internal/utils/c;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/internal/utils/c;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/c$1;->a:Lcom/umeng/commonsdk/internal/utils/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 79
    const-string v0, "ts"

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_a8

    .line 85
    :try_start_1a
    const-string v4, "le"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_a8

    .line 87
    goto :goto_21

    .line 86
    :catch_20
    move-exception v2

    .line 89
    :goto_21
    :try_start_21
    const-string v2, "voltage"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_a8

    .line 91
    :try_start_27
    const-string v4, "vol"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_a8

    .line 94
    goto :goto_2e

    .line 92
    :catch_2d
    move-exception v2

    .line 96
    :goto_2e
    :try_start_2e
    const-string v2, "temperature"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_a8

    .line 98
    :try_start_34
    const-string v4, "temp"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_40} :catch_41
    .catchall {:try_start_34 .. :try_end_40} :catchall_a8

    .line 102
    goto :goto_42

    .line 100
    :catch_41
    move-exception v2

    .line 104
    :goto_42
    :try_start_42
    const-string v2, "status"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_a8

    .line 105
    nop

    .line 106
    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_b2

    goto :goto_5b

    .line 129
    :pswitch_50
    const/4 v5, 0x2

    goto :goto_5b

    .line 124
    :pswitch_52
    nop

    .line 125
    const/4 v5, 0x0

    goto :goto_5b

    .line 120
    :pswitch_55
    goto :goto_5b

    .line 115
    :pswitch_56
    nop

    .line 116
    const/4 v5, 0x1

    goto :goto_5b

    .line 110
    :pswitch_59
    nop

    .line 111
    nop

    .line 133
    :goto_5b
    :try_start_5b
    const-string v2, "st"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_61
    .catchall {:try_start_5b .. :try_end_60} :catchall_a8

    .line 136
    goto :goto_62

    .line 134
    :catch_61
    move-exception v2

    .line 138
    :goto_62
    :try_start_62
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_a8

    .line 139
    nop

    .line 140
    packed-switch p2, :pswitch_data_c0

    const/4 v4, 0x0

    goto :goto_71

    .line 147
    :pswitch_6e
    goto :goto_71

    .line 143
    :pswitch_6f
    nop

    .line 144
    const/4 v4, 0x1

    .line 151
    :goto_71
    :try_start_71
    const-string p2, "ct"

    invoke-virtual {v1, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7d} :catch_7e
    .catchall {:try_start_71 .. :try_end_7d} :catchall_a8

    .line 156
    goto :goto_7f

    .line 154
    :catch_7e
    move-exception p2

    .line 159
    :goto_7f
    :try_start_7f
    const-string p2, "BatteryUtils"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const p2, 0x8003

    .line 162
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/utils/c$1;->a:Lcom/umeng/commonsdk/internal/utils/c;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/internal/utils/c;->c()V
    :try_end_a7
    .catchall {:try_start_7f .. :try_end_a7} :catchall_a8

    .line 169
    :cond_a7
    goto :goto_b0

    .line 167
    :catchall_a8
    move-exception p1

    .line 168
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 171
    :goto_b0
    return-void

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_59
        :pswitch_56
        :pswitch_55
        :pswitch_52
        :pswitch_50
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_6e
    .end packed-switch
.end method
