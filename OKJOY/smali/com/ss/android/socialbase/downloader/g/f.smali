.class public Lcom/ss/android/socialbase/downloader/g/f;
.super Ljava/lang/Object;
.source "RandomAccessOutputStream.java"


# instance fields
.field private a:Ljava/io/BufferedOutputStream;

.field private b:Ljava/io/FileDescriptor;

.field private c:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x20000

    const/16 v0, 0x2000

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    :try_start_7
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/f;->c:Ljava/io/RandomAccessFile;

    .line 28
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/f;->b:Ljava/io/FileDescriptor;

    .line 29
    if-lez p2, :cond_34

    .line 30
    if-ge p2, v0, :cond_30

    move p2, v0

    .line 35
    :cond_1d
    :goto_1d
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->a:Ljava/io/BufferedOutputStream;

    .line 42
    :goto_2f
    return-void

    .line 32
    :cond_30
    if-le p2, v1, :cond_1d

    move p2, v1

    .line 33
    goto :goto_1d

    .line 37
    :cond_34
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->a:Ljava/io/BufferedOutputStream;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_46} :catch_47

    goto :goto_2f

    .line 39
    :catch_47
    move-exception v0

    .line 40
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x40f

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->a:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_9

    .line 50
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->b:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_12

    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->b:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 53
    :cond_12
    return-void
.end method

.method public a(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    return-void
.end method

.method public a([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 46
    return-void
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_9

    .line 58
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 59
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 60
    return-void
.end method

.method public b(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 68
    return-void
.end method
