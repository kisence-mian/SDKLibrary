.class public Lcom/ss/android/socialbase/downloader/e/c;
.super Ljava/lang/Object;
.source "SyncStreamReader.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/e/b;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lcom/ss/android/socialbase/downloader/f/a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/c;->a:Ljava/io/InputStream;

    .line 19
    new-instance p1, Lcom/ss/android/socialbase/downloader/f/a;

    invoke-direct {p1, p2}, Lcom/ss/android/socialbase/downloader/f/a;-><init>(I)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/c;->b:Lcom/ss/android/socialbase/downloader/f/a;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/f/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/c;->b:Lcom/ss/android/socialbase/downloader/f/a;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/e/c;->a:Ljava/io/InputStream;

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/a;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, v0, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    .line 25
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/c;->b:Lcom/ss/android/socialbase/downloader/f/a;

    return-object v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/a;)V
    .registers 2

    .line 30
    return-void
.end method

.method public b()V
    .registers 4

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/e/c;->a:Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 35
    return-void
.end method
