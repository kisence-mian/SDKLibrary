.class public Lcom/ss/android/socialbase/appdownloader/e/a/d;
.super Ljava/lang/Object;
.source "IntReader.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a(Ljava/io/InputStream;Z)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 68
    if-ltz p1, :cond_4c

    const/4 v1, 0x4

    if-gt p1, v1, :cond_4c

    .line 72
    iget-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b:Z

    if-eqz v1, :cond_2c

    .line 73
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x8

    :goto_f
    if-ltz v1, :cond_52

    .line 74
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 75
    if-ne v2, v5, :cond_1f

    .line 76
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 79
    :cond_1f
    iget v3, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c:I

    .line 80
    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    .line 73
    add-int/lit8 v0, v1, -0x8

    move v1, v0

    move v0, v2

    goto :goto_f

    .line 83
    :cond_2c
    mul-int/lit8 v3, p1, 0x8

    move v1, v0

    .line 85
    :goto_2f
    if-eq v1, v3, :cond_52

    .line 86
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 87
    if-ne v2, v5, :cond_3f

    .line 88
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 91
    :cond_3f
    iget v4, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c:I

    .line 92
    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    .line 85
    add-int/lit8 v0, v1, 0x8

    move v1, v0

    move v0, v2

    goto :goto_2f

    .line 98
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 96
    :cond_52
    return v0
.end method

.method public final a()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_10

    .line 35
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_11

    .line 39
    :goto_9
    const/4 v0, 0x0

    check-cast v0, Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a(Ljava/io/InputStream;Z)V

    .line 41
    :cond_10
    return-void

    .line 36
    :catch_11
    move-exception v0

    goto :goto_9
.end method

.method public final a(Ljava/io/InputStream;Z)V
    .registers 4

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a:Ljava/io/InputStream;

    .line 28
    iput-boolean p2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b:Z

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c:I

    .line 30
    return-void
.end method

.method public final a([III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    :goto_0
    if-lez p3, :cond_e

    .line 110
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v1

    aput v1, p1, p2

    .line 111
    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    .line 114
    :cond_e
    return-void
.end method

.method public final b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a(I)I

    move-result v0

    return v0
.end method

.method public final b(I)[I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-array v0, p1, [I

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a([III)V

    .line 105
    return-object v0
.end method

.method public final c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c(I)V

    .line 139
    return-void
.end method

.method public final c(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    if-lez p1, :cond_1b

    .line 129
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a:Ljava/io/InputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 130
    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c:I

    .line 131
    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 132
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 135
    :cond_1b
    return-void
.end method
