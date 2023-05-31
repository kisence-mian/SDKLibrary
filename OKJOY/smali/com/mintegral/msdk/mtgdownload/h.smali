.class public Lcom/mintegral/msdk/mtgdownload/h;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"


# instance fields
.field protected e:Landroid/content/Context;

.field protected f:Landroid/app/Notification;

.field protected g:Landroid/app/Notification$Builder;

.field protected h:Landroid/support/v4/app/NotificationCompat$Builder;

.field protected i:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/16 v1, 0x1a

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_16

    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 27
    :cond_16
    if-lt v0, v1, :cond_28

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_28

    .line 28
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 34
    :goto_27
    return-void

    .line 29
    :cond_28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_36

    .line 30
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->g:Landroid/app/Notification$Builder;

    goto :goto_27

    .line 32
    :cond_36
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->f:Landroid/app/Notification;

    goto :goto_27
.end method


# virtual methods
.method public final a(J)Lcom/mintegral/msdk/mtgdownload/h;
    .registers 6

    .prologue
    const/16 v2, 0x1a

    .line 148
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    if-eqz v1, :cond_f

    .line 150
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 152
    :cond_f
    if-lt v0, v2, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1b

    .line 153
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 159
    :goto_1a
    return-object p0

    .line 154
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_27

    .line 155
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    goto :goto_1a

    .line 157
    :cond_27
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->f:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    goto :goto_1a
.end method

.method public final a(Landroid/app/PendingIntent;)Lcom/mintegral/msdk/mtgdownload/h;
    .registers 5

    .prologue
    const/16 v2, 0x1a

    .line 65
    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    if-eqz v1, :cond_f

    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 69
    :cond_f
    if-lt v0, v2, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1b

    .line 70
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    :goto_1a
    return-object p0

    .line 71
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_27

    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1a

    .line 74
    :cond_27
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/h;->i:Landroid/app/PendingIntent;

    goto :goto_1a
.end method

.method public final a(Z)Lcom/mintegral/msdk/mtgdownload/h;
    .registers 5

    .prologue
    const/16 v2, 0x1a

    .line 99
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    if-eqz v1, :cond_f

    .line 101
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 103
    :cond_f
    if-lt v0, v2, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1b

    .line 104
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 114
    :goto_1a
    return-object p0

    .line 105
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_27

    .line 106
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto :goto_1a

    .line 108
    :cond_27
    if-eqz p1, :cond_32

    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->f:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_1a

    .line 111
    :cond_32
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->f:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_1a
.end method

.method public final b()V
    .registers 4

    .prologue
    const/16 v2, 0x1a

    .line 37
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    if-eqz v1, :cond_f

    .line 39
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 41
    :cond_f
    if-lt v0, v2, :cond_35

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_35

    .line 43
    :try_start_15
    const-class v0, Landroid/support/v4/app/NotificationCompat$Builder;

    .line 44
    const-string v1, "mActions"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/h;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/h;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_34} :catch_5d

    .line 62
    :cond_34
    :goto_34
    return-void

    .line 51
    :cond_35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_34

    .line 53
    :try_start_3b
    const-class v0, Landroid/app/Notification$Builder;

    .line 54
    const-string v1, "mActions"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/h;->g:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/h;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5a} :catch_5b

    goto :goto_34

    :catch_5b
    move-exception v0

    goto :goto_34

    .line 50
    :catch_5d
    move-exception v0

    goto :goto_34
.end method

.method public final c()Lcom/mintegral/msdk/mtgdownload/h;
    .registers 5

    .prologue
    const/16 v3, 0x1a

    const/4 v2, 0x1

    .line 80
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    if-eqz v1, :cond_10

    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 84
    :cond_10
    if-lt v0, v3, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1c

    .line 85
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 95
    :goto_1b
    return-object p0

    .line 86
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_28

    .line 87
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto :goto_1b

    .line 90
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->f:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_1b
.end method

.method public final c(Ljava/lang/CharSequence;)Lcom/mintegral/msdk/mtgdownload/h;
    .registers 5

    .prologue
    const/16 v2, 0x1a

    .line 133
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    if-eqz v1, :cond_f

    .line 135
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 137
    :cond_f
    if-lt v0, v2, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1b

    .line 138
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 144
    :goto_1a
    return-object p0

    .line 139
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_27

    .line 140
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1a

    .line 142
    :cond_27
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->f:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_1a
.end method

.method public final d()Lcom/mintegral/msdk/mtgdownload/h;
    .registers 5

    .prologue
    const/16 v3, 0x1a

    const v2, 0x1080081

    .line 118
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 120
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 122
    :cond_12
    if-lt v0, v3, :cond_1e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1e

    .line 123
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 129
    :goto_1d
    return-object p0

    .line 124
    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2a

    .line 125
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_1d

    .line 127
    :cond_2a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/h;->f:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->icon:I

    goto :goto_1d
.end method
