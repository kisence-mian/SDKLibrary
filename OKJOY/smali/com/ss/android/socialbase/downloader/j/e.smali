.class public Lcom/ss/android/socialbase/downloader/j/e;
.super Ljava/lang/Object;
.source "SyncStreamReader.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/j/c;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lcom/ss/android/socialbase/downloader/j/b;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/j/e;->a:Ljava/io/InputStream;

    .line 16
    new-instance v0, Lcom/ss/android/socialbase/downloader/j/b;

    invoke-direct {v0, p2}, Lcom/ss/android/socialbase/downloader/j/b;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/j/e;->b:Lcom/ss/android/socialbase/downloader/j/b;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/j/b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/e;->b:Lcom/ss/android/socialbase/downloader/j/b;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/e;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/j/e;->b:Lcom/ss/android/socialbase/downloader/j/b;

    iget-object v2, v2, Lcom/ss/android/socialbase/downloader/j/b;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, v0, Lcom/ss/android/socialbase/downloader/j/b;->b:I

    .line 22
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/e;->b:Lcom/ss/android/socialbase/downloader/j/b;

    return-object v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/j/b;)V
    .registers 2

    .prologue
    .line 27
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 36
    :goto_5
    return-void

    .line 33
    :catch_6
    move-exception v0

    goto :goto_5
.end method
