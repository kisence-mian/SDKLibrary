.class public final Lcom/tapjoy/internal/hf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tapjoy/internal/hf;->a:Ljava/io/File;

    .line 16
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .registers 6

    monitor-enter p0

    .line 23
    :try_start_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/hf;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_46

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 24
    monitor-exit p0

    return v1

    .line 27
    :cond_a
    nop

    .line 1063
    :try_start_b
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->a:Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1112
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1a} :catch_3c
    .catchall {:try_start_b .. :try_end_1a} :catchall_46

    .line 1114
    nop

    .line 1121
    :try_start_1b
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/tapjoy/internal/af;->c:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1122
    invoke-virtual {v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_37

    .line 1116
    :try_start_28
    invoke-static {v3}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_3c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_46

    .line 1117
    nop

    .line 31
    :try_start_2c
    invoke-virtual {p0}, Lcom/tapjoy/internal/hf;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_46

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_35
    monitor-exit p0

    return v1

    .line 1116
    :catchall_37
    move-exception v0

    :try_start_38
    invoke-static {v3}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 1117
    throw v0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_46

    .line 1064
    :catch_3c
    move-exception v0

    .line 1065
    :try_start_3d
    iget-object v2, p0, Lcom/tapjoy/internal/hf;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1066
    throw v0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_46

    .line 28
    :catch_43
    move-exception v0

    .line 29
    monitor-exit p0

    return v1

    .line 22
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 50
    :try_start_8
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->a:Ljava/io/File;

    .line 2037
    sget-object v1, Lcom/tapjoy/internal/af;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/bb;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 50
    nop

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_19

    if-lez v1, :cond_18

    .line 52
    return-object v0

    .line 56
    :cond_18
    goto :goto_1a

    .line 54
    :catch_19
    move-exception v0

    .line 58
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method
