.class Lcom/ss/android/socialbase/downloader/f/l;
.super Ljava/lang/Object;
.source "SegmentOutput.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/f/e;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/f/i;

.field private final b:Lcom/ss/android/socialbase/downloader/model/e;

.field private final c:Lcom/ss/android/socialbase/downloader/f/e;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/b;Lcom/ss/android/socialbase/downloader/f/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/f/l;->a:Lcom/ss/android/socialbase/downloader/f/i;

    .line 26
    invoke-direct {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/f/l;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/i;)Lcom/ss/android/socialbase/downloader/model/e;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/l;->b:Lcom/ss/android/socialbase/downloader/model/e;

    .line 27
    new-instance p1, Lcom/ss/android/socialbase/downloader/f/h;

    invoke-direct {p1, p2, p0}, Lcom/ss/android/socialbase/downloader/f/h;-><init>(Lcom/ss/android/socialbase/downloader/f/e;Lcom/ss/android/socialbase/downloader/f/e;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/l;->c:Lcom/ss/android/socialbase/downloader/f/e;

    .line 28
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/i;)Lcom/ss/android/socialbase/downloader/model/e;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v2, "flush_buffer_size_byte"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    .line 57
    invoke-static {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/model/e;

    move-result-object p1

    .line 60
    :try_start_1b
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/model/e;->a(J)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_24

    .line 63
    nop

    .line 64
    return-object p1

    .line 61
    :catch_24
    move-exception p1

    .line 62
    new-instance p2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x41e

    invoke-direct {p2, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/f/e;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->c:Lcom/ss/android/socialbase/downloader/f/e;

    return-object v0
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->b:Lcom/ss/android/socialbase/downloader/model/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/e;->b()V

    .line 42
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/f/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->b:Lcom/ss/android/socialbase/downloader/model/e;

    iget-object v1, p1, Lcom/ss/android/socialbase/downloader/f/a;->a:[B

    iget v2, p1, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/ss/android/socialbase/downloader/model/e;->a([BII)V

    .line 37
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->a:Lcom/ss/android/socialbase/downloader/f/i;

    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/f/i;->b(J)V

    .line 38
    return-void
.end method

.method public c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->b:Lcom/ss/android/socialbase/downloader/model/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/e;->c()V

    .line 46
    return-void
.end method

.method public d()V
    .registers 4

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/l;->b:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 50
    return-void
.end method

.method public e()Lcom/ss/android/socialbase/downloader/f/i;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->a:Lcom/ss/android/socialbase/downloader/f/i;

    return-object v0
.end method
