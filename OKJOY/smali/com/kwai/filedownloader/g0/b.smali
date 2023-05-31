.class public Lcom/kwai/filedownloader/g0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/g0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/g0/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/BufferedOutputStream;

.field private final b:Ljava/io/FileDescriptor;

.field private final c:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/g0/b;->c:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/kwai/filedownloader/g0/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/g0/b;->b:Ljava/io/FileDescriptor;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/kwai/filedownloader/g0/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/g0/b;->a:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/g0/b;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v0, p0, Lcom/kwai/filedownloader/g0/b;->b:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/g0/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method

.method public a([BII)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/g0/b;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public b(J)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/g0/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/g0/b;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    iget-object v0, p0, Lcom/kwai/filedownloader/g0/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method
