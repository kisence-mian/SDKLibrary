.class public abstract Lcom/ss/android/socialbase/downloader/notification/a;
.super Ljava/lang/Object;
.source "AbsNotificationItem.java"


# instance fields
.field protected a:Landroid/app/Notification;

.field private b:I

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    .line 26
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:I

    .line 27
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:I

    return v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .registers 5

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    .line 83
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V
    .registers 5

    .line 86
    if-nez p4, :cond_7

    iget p4, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    if-ne p4, p1, :cond_7

    .line 87
    return-void

    .line 89
    :cond_7
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    .line 90
    invoke-virtual {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 91
    return-void
.end method

.method public a(J)V
    .registers 3

    .line 50
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    .line 51
    return-void
.end method

.method public a(JJ)V
    .registers 5

    .line 100
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    .line 101
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:J

    .line 102
    const/4 p1, 0x4

    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    .line 103
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 104
    return-void
.end method

.method public a(Landroid/app/Notification;)V
    .registers 5

    .line 107
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:I

    if-eqz v0, :cond_13

    if-nez p1, :cond_7

    goto :goto_13

    .line 109
    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(IILandroid/app/Notification;)V

    .line 110
    return-void

    .line 108
    :cond_13
    :goto_13
    return-void
.end method

.method public abstract a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 31
    if-nez p1, :cond_3

    .line 32
    return-void

    .line 33
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:I

    .line 34
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected a(Z)V
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->i:Z

    .line 132
    return-void
.end method

.method public b()J
    .registers 3

    .line 46
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    return-wide v0
.end method

.method public b(J)V
    .registers 3

    .line 58
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:J

    .line 59
    return-void
.end method

.method public c()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:I

    return v0
.end method

.method public f()J
    .registers 5

    .line 94
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->g:J

    .line 96
    :cond_e
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->g:J

    return-wide v0
.end method

.method public declared-synchronized g()V
    .registers 2

    monitor-enter p0

    .line 119
    :try_start_1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->h:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 120
    monitor-exit p0

    return-void

    .line 118
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->h:I

    return v0
.end method

.method public i()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->i:Z

    return v0
.end method
