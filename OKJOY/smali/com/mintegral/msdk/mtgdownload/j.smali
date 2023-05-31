.class public final Lcom/mintegral/msdk/mtgdownload/j;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mintegral/msdk/shell/MTGService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    const-string v1, "com.mintegral.msdk.broadcast.download.msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/high16 v2, 0x8000000

    .line 79
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    .line 48
    :goto_3
    return-object v0

    .line 44
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Landroid/app/NotificationManager;)V
    .registers 5

    .prologue
    const/16 v2, 0x1a

    .line 90
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    .line 91
    const/4 v0, 0x0

    .line 92
    if-eqz v1, :cond_11

    .line 93
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v0

    .line 95
    :cond_11
    if-lt v0, v2, :cond_24

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_24

    .line 96
    const-string v0, "\u4e0b\u8f7d\u8fdb\u5ea6"

    .line 98
    const-string v1, "download"

    .line 1104
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1105
    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 100
    :cond_24
    return-void
.end method
