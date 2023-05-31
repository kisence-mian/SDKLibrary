.class public abstract Lcom/ss/android/socialbase/downloader/notification/a;
.super Ljava/lang/Object;
.source "AbsNotificationItem.java"


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    .line 25
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:I

    .line 26
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:I

    return v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/e/a;ZZ)V
    .registers 6

    .prologue
    .line 81
    if-nez p4, :cond_7

    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    if-ne v0, p1, :cond_7

    .line 86
    :goto_6
    return-void

    .line 84
    :cond_7
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    .line 85
    invoke-virtual {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)V

    goto :goto_6
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:J

    .line 50
    return-void
.end method

.method public a(JJ)V
    .registers 8

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:J

    .line 96
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    .line 97
    const/4 v0, 0x4

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 99
    return-void
.end method

.method public a(Landroid/app/Notification;)V
    .registers 5

    .prologue
    .line 102
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:I

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 105
    :cond_6
    :goto_6
    return-void

    .line 104
    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(IILandroid/app/Notification;)V

    goto :goto_6
.end method

.method protected abstract a(Lcom/ss/android/socialbase/downloader/e/a;Z)V
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 30
    if-nez p1, :cond_3

    .line 34
    :goto_2
    return-void

    .line 32
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:I

    .line 33
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:Ljava/lang/String;

    goto :goto_2
.end method

.method protected a(Z)V
    .registers 2

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->h:Z

    .line 127
    return-void
.end method

.method public b()J
    .registers 3

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:J

    return-wide v0
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    .line 58
    return-void
.end method

.method public c()J
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    return v0
.end method

.method public f()J
    .registers 5

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:J

    .line 91
    :cond_e
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:J

    return-wide v0
.end method

.method public declared-synchronized g()V
    .registers 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->g:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->g:I

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->h:Z

    return v0
.end method
