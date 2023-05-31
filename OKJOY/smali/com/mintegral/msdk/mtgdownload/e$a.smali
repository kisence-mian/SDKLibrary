.class final Lcom/mintegral/msdk/mtgdownload/e$a;
.super Lcom/mintegral/msdk/mtgdownload/h;
.source "DownloadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgdownload/h;-><init>(Landroid/content/Context;)V

    .line 115
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    .line 116
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .registers 5

    .prologue
    const/16 v3, 0x1a

    const/16 v2, 0x10

    .line 166
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    if-eqz v1, :cond_f

    .line 168
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v0

    .line 170
    :cond_f
    if-lt v0, v3, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1c

    .line 171
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 186
    :goto_1b
    return-object v0

    .line 172
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_27

    .line 173
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_1b

    .line 175
    :cond_27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_47

    .line 176
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->a:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->i:Landroid/app/PendingIntent;

    .line 178
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->f:Landroid/app/Notification;

    .line 186
    :goto_44
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->f:Landroid/app/Notification;

    goto :goto_1b

    .line 181
    :cond_47
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->a:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->i:Landroid/app/PendingIntent;

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->f:Landroid/app/Notification;

    goto :goto_44
.end method

.method public final a(I)Lcom/mintegral/msdk/mtgdownload/e$a;
    .registers 6

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0x1a

    const/4 v1, 0x0

    .line 150
    .line 151
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    if-eqz v0, :cond_3d

    .line 152
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v0

    .line 154
    :goto_f
    if-lt v0, v2, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1b

    .line 155
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v3, p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 161
    :goto_1a
    return-object p0

    .line 156
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_27

    .line 157
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3, p1, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_1a

    .line 159
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->c:Ljava/lang/String;

    goto :goto_1a

    :cond_3d
    move v0, v1

    goto :goto_f
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/mintegral/msdk/mtgdownload/e$a;
    .registers 5

    .prologue
    const/16 v2, 0x1a

    .line 119
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    if-eqz v1, :cond_d

    .line 121
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v0

    .line 123
    :cond_d
    if-lt v0, v2, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_19

    .line 124
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 130
    :goto_18
    return-object p0

    .line 125
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_25

    .line 126
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_18

    .line 128
    :cond_25
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->b:Ljava/lang/String;

    goto :goto_18
.end method

.method public final a(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7

    .prologue
    const/16 v2, 0x1a

    .line 193
    const/4 v0, 0x0

    .line 194
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    if-eqz v1, :cond_d

    .line 195
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v0

    .line 197
    :cond_d
    if-lt v0, v2, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_19

    .line 198
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 202
    :cond_18
    :goto_18
    return-void

    .line 199
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    .line 200
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_18
.end method

.method public final b(Ljava/lang/CharSequence;)Lcom/mintegral/msdk/mtgdownload/e$a;
    .registers 5

    .prologue
    const/16 v2, 0x1a

    .line 134
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    if-eqz v1, :cond_d

    .line 136
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v0

    .line 138
    :cond_d
    if-lt v0, v2, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_19

    .line 139
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->h:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 145
    :goto_18
    return-object p0

    .line 140
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_25

    .line 141
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->g:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_18

    .line 143
    :cond_25
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$a;->a:Ljava/lang/String;

    goto :goto_18
.end method
