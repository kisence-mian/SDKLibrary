.class public Lcom/ss/android/socialbase/downloader/model/e;
.super Ljava/lang/Object;
.source "RandomAccessOutputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/io/BufferedOutputStream;

.field private b:Ljava/io/FileDescriptor;

.field private c:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/e;->c:Ljava/io/RandomAccessFile;

    .line 30
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/e;->b:Ljava/io/FileDescriptor;

    .line 31
    if-lez p2, :cond_32

    .line 32
    const/high16 p1, 0x20000

    const/16 v0, 0x2000

    if-ge p2, v0, :cond_1c

    .line 33
    move p2, v0

    goto :goto_1f

    .line 34
    :cond_1c
    if-le p2, p1, :cond_1f

    .line 35
    move p2, p1

    .line 37
    :cond_1f
    :goto_1f
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/e;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/e;->a:Ljava/io/BufferedOutputStream;

    goto :goto_44

    .line 39
    :cond_32
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/e;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/e;->a:Ljava/io/BufferedOutputStream;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_44} :catch_46

    .line 43
    :goto_44
    nop

    .line 44
    return-void

    .line 41
    :catch_46
    move-exception p1

    .line 42
    new-instance p2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x40f

    invoke-direct {p2, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/e;->a:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_7

    .line 52
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 53
    :cond_7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/e;->b:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_e

    .line 54
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 55
    :cond_e
    return-void
.end method

.method public a(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/e;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 76
    return-void
.end method

.method public a([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/e;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 48
    return-void
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/e;->a:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_7

    .line 59
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 61
    :cond_7
    return-void
.end method

.method public b(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/e;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 80
    return-void
.end method

.method public c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/e;->b:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    .line 65
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 67
    :cond_7
    return-void
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/e;->c:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/e;->a:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 72
    return-void
.end method
