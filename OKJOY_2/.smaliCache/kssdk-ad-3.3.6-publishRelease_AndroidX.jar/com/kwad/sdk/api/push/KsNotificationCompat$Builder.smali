.class public final Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/push/KsNotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBuilder:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    invoke-virtual {p0}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setBadgeIconType(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setColor(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setColorized(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setDefaults(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setGroupAlertBehavior(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setGroupSummary(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setLights(III)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setLocalOnly(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setNumber(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setOngoing(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setPriority(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setProgress(IIZ)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setShortcutId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setShowWhen(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setSmallIcon(II)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(II)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setTimeoutAfter(J)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setUsesChronometer(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setVibrate([J)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setVisibility(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setWhen(J)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method
