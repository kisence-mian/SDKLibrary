.class public Lcom/ss/android/socialbase/downloader/f/o;
.super Ljava/lang/Object;
.source "SegmentUtils.java"


# direct methods
.method public static a(Ljava/util/List;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)J"
        }
    .end annotation

    .line 20
    nop

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 22
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 24
    :goto_8
    if-ge v3, v0, :cond_27

    .line 25
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/f/i;

    .line 26
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-gtz v5, :cond_27

    .line 27
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-lez v5, :cond_24

    .line 28
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v1

    .line 30
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 35
    :cond_27
    return-wide v1
.end method

.method public static b(Ljava/util/List;)J
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)J"
        }
    .end annotation

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    move-wide v8, v0

    move-wide v4, v2

    move-wide v6, v4

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/socialbase/downloader/f/i;

    .line 50
    cmp-long v11, v4, v2

    if-nez v11, :cond_2f

    .line 51
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->a()J

    move-result-wide v11

    cmp-long v11, v11, v0

    if-lez v11, :cond_5a

    .line 53
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v4

    .line 54
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v6

    goto :goto_5a

    .line 57
    :cond_2f
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v11

    cmp-long v11, v11, v6

    if-gtz v11, :cond_44

    .line 59
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v11

    cmp-long v11, v11, v6

    if-lez v11, :cond_5a

    .line 61
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v6

    goto :goto_5a

    .line 65
    :cond_44
    sub-long/2addr v6, v4

    add-long/2addr v8, v6

    .line 66
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->a()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_57

    .line 67
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v4

    .line 68
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v6

    goto :goto_5a

    .line 70
    :cond_57
    nop

    .line 71
    move-wide v4, v2

    move-wide v6, v4

    .line 75
    :cond_5a
    :goto_5a
    goto :goto_e

    .line 76
    :cond_5b
    cmp-long p0, v4, v0

    if-ltz p0, :cond_65

    cmp-long p0, v6, v4

    if-lez p0, :cond_65

    .line 77
    sub-long/2addr v6, v4

    add-long/2addr v8, v6

    .line 79
    :cond_65
    return-wide v8
.end method
