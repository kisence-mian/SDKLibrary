.class public Lcom/ss/android/a/a/c/e;
.super Ljava/lang/Object;
.source "DownloadShortInfo.java"


# instance fields
.field public a:J

.field public b:I

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v2, p0, Lcom/ss/android/a/a/c/e;->a:J

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/a/a/c/e;->b:I

    .line 16
    iput-wide v2, p0, Lcom/ss/android/a/a/c/e;->c:J

    .line 17
    iput-wide v2, p0, Lcom/ss/android/a/a/c/e;->d:J

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/a/a/c/e;->f:I

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4

    .prologue
    .line 44
    if-nez p1, :cond_3

    .line 59
    :goto_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/e;->a:J

    .line 48
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    iput v0, p0, Lcom/ss/android/a/a/c/e;->b:I

    .line 49
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/e;->d:J

    .line 50
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/e;->c:J

    .line 51
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aW()Lcom/ss/android/socialbase/downloader/e/a;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_35

    .line 54
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v0

    iput v0, p0, Lcom/ss/android/a/a/c/e;->f:I

    .line 58
    :goto_2e
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/c/e;->g:Z

    goto :goto_2

    .line 56
    :cond_35
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/a/a/c/e;->f:I

    goto :goto_2e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    instance-of v0, p1, Lcom/ss/android/a/a/c/e;

    if-eqz v0, :cond_61

    if-eqz p1, :cond_61

    .line 25
    check-cast p1, Lcom/ss/android/a/a/c/e;

    .line 26
    iget-wide v4, p0, Lcom/ss/android/a/a/c/e;->a:J

    iget-wide v6, p1, Lcom/ss/android/a/a/c/e;->a:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_57

    move v0, v1

    .line 27
    :goto_13
    iget v3, p0, Lcom/ss/android/a/a/c/e;->b:I

    iget v4, p1, Lcom/ss/android/a/a/c/e;->b:I

    if-ne v3, v4, :cond_59

    move v3, v1

    .line 28
    :goto_1a
    iget-wide v4, p0, Lcom/ss/android/a/a/c/e;->c:J

    iget-wide v6, p1, Lcom/ss/android/a/a/c/e;->c:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5b

    move v4, v1

    .line 29
    :goto_23
    iget-object v5, p0, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    .line 30
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v5, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    :cond_33
    iget-object v5, p0, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    .line 31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5d

    iget-object v5, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5d

    iget-object v5, p0, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    iget-object v6, p1, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    :cond_4d
    move v5, v1

    .line 33
    :goto_4e
    if-eqz v0, :cond_5f

    if-eqz v3, :cond_5f

    if-eqz v4, :cond_5f

    if-eqz v5, :cond_5f

    .line 35
    :goto_56
    return v1

    :cond_57
    move v0, v2

    .line 26
    goto :goto_13

    :cond_59
    move v3, v2

    .line 27
    goto :goto_1a

    :cond_5b
    move v4, v2

    .line 28
    goto :goto_23

    :cond_5d
    move v5, v2

    .line 32
    goto :goto_4e

    :cond_5f
    move v1, v2

    .line 33
    goto :goto_56

    .line 35
    :cond_61
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_56
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/ss/android/a/a/c/e;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/ss/android/a/a/c/e;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/ss/android/a/a/c/e;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ss/android/a/a/c/e;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
