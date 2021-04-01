.class public Lcom/anythink/china/common/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/common/b/b;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "action_notification_click"

.field public static final c:Ljava/lang/String; = "action_notification_cannel"

.field public static final d:Ljava/lang/String; = "broadcast_receiver_extra"

.field private static g:Lcom/anythink/china/common/b/a;


# instance fields
.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/app/NotificationManager;

.field private h:Landroid/content/Context;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/anythink/china/common/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/anythink/china/common/b/a;->h:Landroid/content/Context;

    .line 53
    invoke-virtual {p0, p1}, Lcom/anythink/china/common/b/a;->b(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/common/b/a;->f:Landroid/app/NotificationManager;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/b/a;->e:Ljava/util/Map;

    .line 55
    return-void
.end method

.method private static a(JJ)I
    .registers 6

    .prologue
    .line 140
    long-to-float v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    long-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;
    .registers 3

    .prologue
    .line 40
    sget-object v0, Lcom/anythink/china/common/b/a;->g:Lcom/anythink/china/common/b/a;

    if-nez v0, :cond_13

    .line 41
    const-class v1, Lcom/anythink/china/common/b/a;

    monitor-enter v1

    .line 42
    :try_start_7
    sget-object v0, Lcom/anythink/china/common/b/a;->g:Lcom/anythink/china/common/b/a;

    if-nez v0, :cond_12

    .line 43
    new-instance v0, Lcom/anythink/china/common/b/a;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/china/common/b/a;->g:Lcom/anythink/china/common/b/a;

    .line 45
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 47
    :cond_13
    sget-object v0, Lcom/anythink/china/common/b/a;->g:Lcom/anythink/china/common/b/a;

    return-object v0

    .line 45
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private e(Lcom/anythink/china/common/a/c;)Lcom/anythink/china/common/b/c;
    .registers 12

    .prologue
    const/high16 v9, 0x8000000

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 145
    .line 1216
    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/b/c;

    .line 147
    if-eqz v0, :cond_12

    .line 211
    :goto_11
    return-object v0

    .line 151
    :cond_12
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/anythink/china/common/b/a;->h:Landroid/content/Context;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_33

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_33

    .line 157
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 159
    invoke-virtual {v0, v6, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 160
    iget-object v3, p0, Lcom/anythink/china/common/b/a;->f:Landroid/app/NotificationManager;

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 164
    :cond_33
    iget v0, p0, Lcom/anythink/china/common/b/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/china/common/b/a;->i:I

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v3, "action_notification_click"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    const-string v3, "broadcast_receiver_extra"

    iget-object v4, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v3, p0, Lcom/anythink/china/common/b/a;->h:Landroid/content/Context;

    const-class v4, Lcom/anythink/china/common/NotificationBroadcaseReceiver;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    iget-object v3, p0, Lcom/anythink/china/common/b/a;->h:Landroid/content/Context;

    iget v4, p0, Lcom/anythink/china/common/b/a;->i:I

    invoke-static {v3, v4, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 172
    new-instance v3, Landroid/content/Intent;

    const-string v4, "action_notification_cannel"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v4, "broadcast_receiver_extra"

    iget-object v5, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v4, p0, Lcom/anythink/china/common/b/a;->h:Landroid/content/Context;

    const-class v5, Lcom/anythink/china/common/NotificationBroadcaseReceiver;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 175
    iget-object v4, p0, Lcom/anythink/china/common/b/a;->h:Landroid/content/Context;

    iget v5, p0, Lcom/anythink/china/common/b/a;->i:I

    invoke-static {v4, v5, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 177
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 182
    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 191
    :try_start_8d
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/china/common/b/a;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 192
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_a4} :catch_c4

    .line 200
    :goto_a4
    iget-object v0, p1, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v3, p1, Lcom/anythink/china/common/a/c;->d:Landroid/graphics/Bitmap;

    .line 201
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 203
    new-instance v0, Lcom/anythink/china/common/b/c;

    invoke-direct {v0}, Lcom/anythink/china/common/b/c;-><init>()V

    .line 205
    iget v3, p0, Lcom/anythink/china/common/b/a;->i:I

    iput v3, v0, Lcom/anythink/china/common/b/c;->a:I

    .line 206
    iput-object v2, v0, Lcom/anythink/china/common/b/c;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 207
    const/4 v2, -0x1

    iput v2, v0, Lcom/anythink/china/common/b/c;->c:I

    .line 209
    iget-object v2, p0, Lcom/anythink/china/common/b/a;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 194
    :catch_c4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    sget v0, Lcom/anythink/china/R$drawable;->anythink_core_icon_close:I

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_a4
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->f:Landroid/app/NotificationManager;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->f:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 233
    :cond_9
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/c;)V
    .registers 9

    .prologue
    const-wide/16 v2, 0x64

    .line 132
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/c;JJZ)V

    .line 133
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/c;JJ)V
    .registers 14

    .prologue
    .line 128
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/c;JJZ)V

    .line 129
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/c;JJZ)V
    .registers 15

    .prologue
    const/16 v3, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 125
    :cond_e
    :goto_e
    return-void

    .line 72
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->f:Landroid/app/NotificationManager;

    if-nez v0, :cond_1b

    .line 73
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->h:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/anythink/china/common/b/a;->b(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/common/b/a;->f:Landroid/app/NotificationManager;

    .line 76
    :cond_1b
    invoke-direct {p0, p1}, Lcom/anythink/china/common/b/a;->e(Lcom/anythink/china/common/a/c;)Lcom/anythink/china/common/b/c;

    move-result-object v4

    .line 77
    iget-object v5, v4, Lcom/anythink/china/common/b/c;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 78
    iget v6, v4, Lcom/anythink/china/common/b/c;->c:I

    .line 83
    const-string v0, "default"

    .line 84
    cmp-long v7, p2, p4

    if-ltz v7, :cond_5f

    .line 86
    const-string v0, "\u70b9\u51fb\u5b89\u88c5"

    move v2, v3

    .line 108
    :goto_2c
    const/16 v3, 0x64

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 110
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 112
    if-eqz v1, :cond_b6

    .line 113
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 121
    :goto_4e
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->f:Landroid/app/NotificationManager;

    iget v1, v4, Lcom/anythink/china/common/b/c;->a:I

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_59} :catch_5a

    goto :goto_e

    .line 123
    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 1140
    :cond_5f
    long-to-float v3, p2

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v3, v7

    long-to-float v7, p4

    div-float/2addr v3, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v3, v7

    float-to-int v3, v3

    .line 91
    if-nez p6, :cond_6d

    if-eq v6, v3, :cond_e

    .line 95
    :cond_6d
    :try_start_6d
    iput v3, v4, Lcom/anythink/china/common/b/c;->c:I

    .line 97
    invoke-virtual {p1}, Lcom/anythink/china/common/a/c;->a()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 98
    const-string v0, "\u7b49\u5f85\u4e0b\u8f7d\u4e2d"

    move v1, v2

    move v2, v3

    .line 99
    goto :goto_2c

    .line 100
    :cond_7a
    invoke-virtual {p1}, Lcom/anythink/china/common/a/c;->b()Z

    move-result v6

    if-eqz v6, :cond_97

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u70b9\u51fb\u7ee7\u7eed\u4e0b\u8f7d\uff08\u5df2\u5b8c\u6210\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v3

    .line 102
    goto :goto_2c

    .line 103
    :cond_97
    invoke-virtual {p1}, Lcom/anythink/china/common/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u70b9\u51fb\u6682\u505c\u4e0b\u8f7d\uff08\u4e0b\u8f7d\u4e2d\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move v2, v3

    .line 105
    goto/16 :goto_2c

    .line 116
    :cond_b6
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_bf} :catch_5a

    goto :goto_4e

    :cond_c0
    move v1, v2

    move v2, v3

    goto/16 :goto_2c
.end method

.method public final b(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 3

    .prologue
    .line 60
    if-nez p1, :cond_4

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_3
    return-object v0

    :cond_4
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    goto :goto_3
.end method

.method public final b(Lcom/anythink/china/common/a/c;)V
    .registers 9

    .prologue
    .line 136
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/c;JJZ)V

    .line 137
    return-void
.end method

.method public final c(Lcom/anythink/china/common/a/c;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 216
    iget-object v0, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Lcom/anythink/china/common/a/c;)V
    .registers 4

    .prologue
    .line 220
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/anythink/china/common/b/a;->f:Landroid/app/NotificationManager;

    if-nez v0, :cond_f

    .line 226
    :cond_e
    :goto_e
    return-void

    .line 223
    :cond_f
    invoke-direct {p0, p1}, Lcom/anythink/china/common/b/a;->e(Lcom/anythink/china/common/a/c;)Lcom/anythink/china/common/b/c;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/anythink/china/common/b/a;->f:Landroid/app/NotificationManager;

    iget v0, v0, Lcom/anythink/china/common/b/c;->a:I

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 225
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->e:Ljava/util/Map;

    .line 2216
    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    .line 225
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method
