.class public Lcom/ss/android/socialbase/appdownloader/f/a/d;
.super Ljava/lang/Object;
.source "IntReader.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a(Ljava/io/InputStream;Z)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    if-ltz p1, :cond_4b

    const/4 v0, 0x4

    if-gt p1, v0, :cond_4b

    .line 69
    nop

    .line 72
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    .line 73
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x8

    :goto_10
    if-ltz p1, :cond_4a

    .line 74
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 75
    if-eq v0, v1, :cond_25

    .line 79
    iget v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c:I

    .line 80
    shl-int/2addr v0, p1

    or-int/2addr v2, v0

    .line 73
    add-int/lit8 p1, p1, -0x8

    goto :goto_10

    .line 76
    :cond_25
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 83
    :cond_2b
    mul-int/lit8 p1, p1, 0x8

    .line 85
    move v0, v2

    :goto_2e
    if-eq v2, p1, :cond_49

    .line 86
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 87
    if-eq v3, v1, :cond_43

    .line 91
    iget v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c:I

    .line 92
    shl-int/2addr v3, v2

    or-int/2addr v0, v3

    .line 85
    add-int/lit8 v2, v2, 0x8

    goto :goto_2e

    .line 88
    :cond_43
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 85
    :cond_49
    move v2, v0

    .line 96
    :cond_4a
    return v2

    .line 98
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final a()V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_10

    .line 35
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    .line 37
    goto :goto_9

    .line 36
    :catch_8
    move-exception v0

    .line 39
    :goto_9
    const/4 v0, 0x0

    check-cast v0, Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a(Ljava/io/InputStream;Z)V

    .line 41
    :cond_10
    return-void
.end method

.method public final a(Ljava/io/InputStream;Z)V
    .registers 3

    .line 27
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a:Ljava/io/InputStream;

    .line 28
    iput-boolean p2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b:Z

    .line 29
    const/4 p1, 0x0

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c:I

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

    .line 109
    :goto_0
    if-lez p3, :cond_e

    .line 110
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

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

    .line 64
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a(I)I

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

    .line 103
    new-array v0, p1, [I

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a([III)V

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

    .line 138
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c(I)V

    .line 139
    return-void
.end method

.method public final c(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    if-lez p1, :cond_1b

    .line 129
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 130
    iget p1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c:I

    int-to-long v5, p1

    add-long/2addr v5, v3

    long-to-int p1, v5

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c:I

    .line 131
    cmp-long p1, v3, v1

    if-nez p1, :cond_15

    goto :goto_1b

    .line 132
    :cond_15
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 135
    :cond_1b
    :goto_1b
    return-void
.end method
