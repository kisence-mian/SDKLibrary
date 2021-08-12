.class public Lcom/anythink/china/common/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/common/b/b;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "action_notification_click"

.field public static final c:Ljava/lang/String; = "action_notification_cannel"

.field public static final d:Ljava/lang/String; = "broadcast_receiver_extra_url"

.field public static final e:Ljava/lang/String; = "broadcast_receiver_extra_unique_id"

.field private static h:Lcom/anythink/china/common/b/a;


# instance fields
.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/NotificationManager;

.field private i:Landroid/content/Context;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/anythink/china/common/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/anythink/china/common/b/a;->i:Landroid/content/Context;

    .line 56
    invoke-virtual {p0, p1}, Lcom/anythink/china/common/b/a;->b(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/china/common/b/a;->g:Landroid/app/NotificationManager;

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/b/a;->f:Ljava/util/Map;

    .line 58
    return-void
.end method

.method private static a(JJ)I
    .registers 4

    .line 143
    long-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    long-to-float p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;
    .registers 3

    const-class v0, Lcom/anythink/china/common/b/a;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/anythink/china/common/b/a;->h:Lcom/anythink/china/common/b/a;

    if-nez v1, :cond_e

    .line 48
    new-instance v1, Lcom/anythink/china/common/b/a;

    invoke-direct {v1, p0}, Lcom/anythink/china/common/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/china/common/b/a;->h:Lcom/anythink/china/common/b/a;

    .line 50
    :cond_e
    sget-object p0, Lcom/anythink/china/common/b/a;->h:Lcom/anythink/china/common/b/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 46
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private e(Lcom/anythink/china/common/a/e;)Lcom/anythink/china/common/b/c;
    .registers 12

    .line 148
    nop

    .line 1220
    iget-object v0, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    .line 148
    nop

    .line 149
    iget-object v1, p0, Lcom/anythink/china/common/b/a;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/china/common/b/c;

    .line 150
    if-eqz v1, :cond_f

    .line 151
    return-object v1

    .line 154
    :cond_f
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/anythink/china/common/b/a;->i:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-lt v2, v3, :cond_31

    .line 158
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_31

    .line 160
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 162
    invoke-virtual {v2, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 163
    iget-object v3, p0, Lcom/anythink/china/common/b/a;->g:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 167
    :cond_31
    iget v2, p0, Lcom/anythink/china/common/b/a;->j:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/anythink/china/common/b/a;->j:I

    .line 170
    new-instance v2, Landroid/content/Intent;

    const-string v5, "action_notification_click"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v5, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    const-string v6, "broadcast_receiver_extra_unique_id"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v5, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const-string v7, "broadcast_receiver_extra_url"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v5, p0, Lcom/anythink/china/common/b/a;->i:Landroid/content/Context;

    const-class v8, Lcom/anythink/china/common/NotificationBroadcaseReceiver;

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    iget-object v5, p0, Lcom/anythink/china/common/b/a;->i:Landroid/content/Context;

    iget v8, p0, Lcom/anythink/china/common/b/a;->j:I

    const/high16 v9, 0x8000000

    invoke-static {v5, v8, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 176
    new-instance v5, Landroid/content/Intent;

    const-string v8, "action_notification_cannel"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v8, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v6, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v6, p0, Lcom/anythink/china/common/b/a;->i:Landroid/content/Context;

    const-class v7, Lcom/anythink/china/common/NotificationBroadcaseReceiver;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 180
    iget-object v6, p0, Lcom/anythink/china/common/b/a;->i:Landroid/content/Context;

    iget v7, p0, Lcom/anythink/china/common/b/a;->j:I

    invoke-static {v6, v7, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 182
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 187
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 188
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 189
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 191
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 196
    :try_start_98
    iget-object v2, p0, Lcom/anythink/china/common/b/a;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/china/common/b/a;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 197
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_af
    .catchall {:try_start_98 .. :try_end_af} :catchall_b0

    .line 201
    goto :goto_c1

    .line 199
    :catchall_b0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    iget-object v2, p0, Lcom/anythink/china/common/b/a;->i:Landroid/content/Context;

    const-string v3, "core_icon_close"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 204
    :goto_c1
    iget-object v2, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->d:Landroid/graphics/Bitmap;

    .line 205
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 207
    new-instance p1, Lcom/anythink/china/common/b/c;

    invoke-direct {p1}, Lcom/anythink/china/common/b/c;-><init>()V

    .line 209
    iget v2, p0, Lcom/anythink/china/common/b/a;->j:I

    iput v2, p1, Lcom/anythink/china/common/b/c;->a:I

    .line 210
    iput-object v1, p1, Lcom/anythink/china/common/b/c;->b:Landroidx/core/app/NotificationCompat$Builder;

    .line 211
    const/4 v1, -0x1

    iput v1, p1, Lcom/anythink/china/common/b/c;->c:I

    .line 213
    iget-object v1, p0, Lcom/anythink/china/common/b/a;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-object p1
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->g:Landroid/app/NotificationManager;

    if-eqz v0, :cond_7

    .line 235
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 237
    :cond_7
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;)V
    .registers 9

    .line 135
    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    .line 136
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;JJ)V
    .registers 13

    .line 131
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    .line 132
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;JJZ)V
    .registers 15

    .line 71
    if-eqz p1, :cond_bd

    iget-object v0, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_bd

    .line 75
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->g:Landroid/app/NotificationManager;

    if-nez v0, :cond_18

    .line 76
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/anythink/china/common/b/a;->b(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/common/b/a;->g:Landroid/app/NotificationManager;

    .line 79
    :cond_18
    invoke-direct {p0, p1}, Lcom/anythink/china/common/b/a;->e(Lcom/anythink/china/common/a/e;)Lcom/anythink/china/common/b/c;

    move-result-object v0

    .line 80
    iget-object v1, v0, Lcom/anythink/china/common/b/c;->b:Landroidx/core/app/NotificationCompat$Builder;

    .line 81
    iget v2, v0, Lcom/anythink/china/common/b/c;->c:I

    .line 84
    nop

    .line 86
    const-string v3, "default"

    .line 87
    cmp-long v4, p2, p4

    const/16 v5, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v4, :cond_31

    .line 88
    nop

    .line 89
    const-string v3, "\u70b9\u51fb\u5b89\u88c5"

    .line 90
    move p2, v5

    move p1, v6

    goto :goto_87

    .line 92
    :cond_31
    nop

    .line 1143
    long-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 92
    nop

    .line 94
    if-nez p6, :cond_42

    if-ne v2, p2, :cond_42

    .line 95
    return-void

    .line 98
    :cond_42
    iput p2, v0, Lcom/anythink/china/common/b/c;->c:I

    .line 100
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->a()Z

    move-result p3

    if-eqz p3, :cond_4e

    .line 101
    const-string v3, "\u7b49\u5f85\u4e0b\u8f7d\u4e2d"

    .line 102
    move p1, v7

    goto :goto_87

    .line 103
    :cond_4e
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->b()Z

    move-result p3
    :try_end_52
    .catchall {:try_start_c .. :try_end_52} :catchall_b8

    const-string p4, "%)"

    if-eqz p3, :cond_6b

    .line 104
    :try_start_56
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u70b9\u51fb\u7ee7\u7eed\u4e0b\u8f7d\uff08\u5df2\u5b8c\u6210\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    move p1, v6

    goto :goto_87

    .line 106
    :cond_6b
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->c()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u70b9\u51fb\u6682\u505c\u4e0b\u8f7d\uff08\u4e0b\u8f7d\u4e2d\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    move p1, v7

    goto :goto_87

    .line 106
    :cond_86
    move p1, v7

    .line 111
    :goto_87
    invoke-virtual {v1, v5, p2, v7}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 112
    invoke-virtual {p2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    new-instance p3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 113
    invoke-virtual {p3, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 115
    if-eqz p1, :cond_a5

    .line 116
    invoke-virtual {v1, v7}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 117
    invoke-virtual {p1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_ac

    .line 119
    :cond_a5
    invoke-virtual {v1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 124
    :goto_ac
    iget-object p1, p0, Lcom/anythink/china/common/b/a;->g:Landroid/app/NotificationManager;

    iget p2, v0, Lcom/anythink/china/common/b/c;->a:I

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_b7
    .catchall {:try_start_56 .. :try_end_b7} :catchall_b8

    .line 127
    return-void

    .line 126
    :catchall_b8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    return-void

    .line 72
    :cond_bd
    :goto_bd
    return-void
.end method

.method public final b(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 3

    .line 63
    if-nez p1, :cond_4

    .line 64
    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_4
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    return-object p1
.end method

.method public final b(Lcom/anythink/china/common/a/e;)V
    .registers 9

    .line 139
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    .line 140
    return-void
.end method

.method public final c(Lcom/anythink/china/common/a/e;)Ljava/lang/String;
    .registers 2

    .line 220
    iget-object p1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    return-object p1
.end method

.method public final d(Lcom/anythink/china/common/a/e;)V
    .registers 4

    .line 224
    if-eqz p1, :cond_22

    iget-object v0, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/anythink/china/common/b/a;->g:Landroid/app/NotificationManager;

    if-nez v0, :cond_f

    goto :goto_22

    .line 227
    :cond_f
    invoke-direct {p0, p1}, Lcom/anythink/china/common/b/a;->e(Lcom/anythink/china/common/a/e;)Lcom/anythink/china/common/b/c;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/anythink/china/common/b/a;->g:Landroid/app/NotificationManager;

    iget v0, v0, Lcom/anythink/china/common/b/c;->a:I

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 229
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->f:Ljava/util/Map;

    .line 2220
    iget-object p1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    .line 229
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void

    .line 225
    :cond_22
    :goto_22
    return-void
.end method
