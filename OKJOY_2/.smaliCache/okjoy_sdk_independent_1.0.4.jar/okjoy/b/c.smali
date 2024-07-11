.class public final Lokjoy/b/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Lokjoy/h/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokjoy/h/c;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lokjoy/b/c;->a:Lokjoy/h/c;

    iput-object p2, p0, Lokjoy/b/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0b\u8f7d\u5b58\u6863\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/b/c;->a:Lokjoy/h/c;

    if-eqz p2, :cond_27

    const v0, 0x186a0

    invoke-interface {p2, v0, p1}, Lokjoy/h/c;->onFail(ILjava/lang/String;)V

    :cond_27
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 8

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const v0, 0x186a0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_94

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 p2, 0x400

    new-array p2, p2, [B

    const/4 v1, 0x0

    :try_start_18
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lokjoy/b/c;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_42
    .catchall {:try_start_18 .. :try_end_1f} :catchall_40

    :goto_1f
    :try_start_1f
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1f

    :cond_2b
    iget-object p2, p0, Lokjoy/b/c;->a:Lokjoy/h/c;

    if-eqz p2, :cond_32

    invoke-interface {p2, v1}, Lokjoy/h/c;->onSuccess(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_3d
    .catchall {:try_start_1f .. :try_end_32} :catchall_3a

    :cond_32
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_b5

    :catchall_3a
    move-exception p2

    move-object v1, v2

    goto :goto_89

    :catch_3d
    move-exception p2

    move-object v1, v2

    goto :goto_43

    :catchall_40
    move-exception p2

    goto :goto_89

    :catch_42
    move-exception p2

    :goto_43
    :try_start_43
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fdd\u5b58\u5b58\u6863\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lokjoy/b/c;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_77

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lokjoy/b/c;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_77
    iget-object v2, p0, Lokjoy/b/c;->a:Lokjoy/h/c;

    if-eqz v2, :cond_7e

    invoke-interface {v2, v0, p2}, Lokjoy/h/c;->onFail(ILjava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_43 .. :try_end_7e} :catchall_40

    :cond_7e
    if-eqz p1, :cond_83

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_83
    if-eqz v1, :cond_b5

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_b5

    :goto_89
    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_8e
    if-eqz v1, :cond_93

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_93
    throw p2

    :cond_94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5b58\u6863\u6587\u4ef6\u5931\u8d25\uff1a\u63a5\u53e3\u9519\u8bef code = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/b/c;->a:Lokjoy/h/c;

    if-eqz p2, :cond_b5

    invoke-interface {p2, v0, p1}, Lokjoy/h/c;->onFail(ILjava/lang/String;)V

    :cond_b5
    :goto_b5
    return-void
.end method
