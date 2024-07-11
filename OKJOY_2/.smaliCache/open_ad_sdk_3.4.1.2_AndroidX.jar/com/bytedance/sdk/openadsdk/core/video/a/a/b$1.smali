.class Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "VideoCacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v2

    .line 74
    new-instance v4, Lcom/bytedance/sdk/a/b/v;

    invoke-direct {v4}, Lcom/bytedance/sdk/a/b/v;-><init>()V

    .line 75
    new-instance v5, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v5}, Lcom/bytedance/sdk/a/b/y$a;-><init>()V

    const-string v6, "RANGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-virtual {v5, v6, v7}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    .line 77
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/y$a;->a()Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v5

    .line 79
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v5

    .line 80
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/a/b/v;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/e;

    move-result-object v4

    .line 81
    invoke-interface {v4}, Lcom/bytedance/sdk/a/b/e;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v4
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_176

    .line 82
    :try_start_4e
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->d()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;Z)Z

    .line 83
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v5
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_173

    .line 84
    :try_start_5b
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z

    move-result v6

    if-eqz v6, :cond_73

    if-eqz v5, :cond_73

    .line 85
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->b()J

    move-result-wide v7

    add-long/2addr v7, v2

    invoke-static {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;J)J

    .line 86
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->c()Ljava/io/InputStream;

    move-result-object v0
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_171

    .line 88
    :cond_73
    if-nez v0, :cond_d6

    .line 110
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->b(Ljava/lang/String;)V

    .line 112
    if-eqz v0, :cond_86

    .line 113
    :try_start_80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_86

    .line 132
    :catch_84
    move-exception v0

    goto :goto_d2

    .line 115
    :cond_86
    :goto_86
    if-eqz v5, :cond_8b

    .line 116
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 119
    :cond_8b
    if-eqz v4, :cond_90

    .line 120
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 123
    :cond_90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_ae

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->g(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V

    goto :goto_b3

    .line 126
    :cond_ae
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->h(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V

    .line 128
    :goto_b3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;Z)Z

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->i(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->j(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/io/RandomAccessFile;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->j(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_d1} :catch_84

    .line 134
    :cond_d1
    goto :goto_d5

    .line 133
    :goto_d2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    :goto_d5
    return-void

    .line 93
    :cond_d6
    const/16 v2, 0x4000

    :try_start_d8
    new-array v2, v2, [B

    .line 94
    nop

    .line 95
    const-wide/16 v6, 0x0

    move v3, v1

    move-wide v8, v6

    .line 96
    :cond_df
    :goto_df
    rsub-int v10, v3, 0x4000

    invoke-virtual {v0, v2, v3, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_116

    .line 97
    add-int/2addr v3, v10

    .line 98
    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 99
    const-wide/16 v10, 0x4000

    rem-long v10, v8, v10

    cmp-long v10, v10, v6

    if-eqz v10, :cond_104

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)J

    move-result-wide v10

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    cmp-long v10, v8, v10

    if-nez v10, :cond_df

    .line 100
    :cond_104
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_10b
    .catchall {:try_start_d8 .. :try_end_10b} :catchall_171

    .line 101
    :try_start_10b
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-virtual {v11, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->a([BI)V

    .line 102
    monitor-exit v10

    .line 103
    move v3, v1

    goto :goto_df

    .line 102
    :catchall_113
    move-exception v2

    monitor-exit v10
    :try_end_115
    .catchall {:try_start_10b .. :try_end_115} :catchall_113

    :try_start_115
    throw v2
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_171

    .line 110
    :cond_116
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->b(Ljava/lang/String;)V

    .line 112
    if-eqz v0, :cond_124

    .line 113
    :try_start_121
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 115
    :cond_124
    if-eqz v5, :cond_129

    .line 116
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 119
    :cond_129
    if-eqz v4, :cond_12e

    .line 120
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 123
    :cond_12e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_14c

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->g(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V

    goto :goto_151

    .line 126
    :cond_14c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->h(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V

    .line 128
    :goto_151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;Z)Z

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->i(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->j(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/io/RandomAccessFile;

    move-result-object v0

    if-eqz v0, :cond_1d8

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->j(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_16f} :catch_18b

    goto/16 :goto_1d8

    .line 107
    :catchall_171
    move-exception v2

    goto :goto_179

    :catchall_173
    move-exception v2

    move-object v5, v0

    goto :goto_179

    :catchall_176
    move-exception v2

    move-object v4, v0

    move-object v5, v4

    .line 108
    :goto_179
    :try_start_179
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_17c
    .catchall {:try_start_179 .. :try_end_17c} :catchall_1de

    .line 110
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->b(Ljava/lang/String;)V

    .line 112
    if-eqz v0, :cond_18d

    .line 113
    :try_start_187
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_18d

    .line 132
    :catch_18b
    move-exception v0

    goto :goto_1d9

    .line 115
    :cond_18d
    :goto_18d
    if-eqz v5, :cond_192

    .line 116
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 119
    :cond_192
    if-eqz v4, :cond_197

    .line 120
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 123
    :cond_197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1b5

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->g(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V

    goto :goto_1ba

    .line 126
    :cond_1b5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->h(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V

    .line 128
    :goto_1ba
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;Z)Z

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->i(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->j(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/io/RandomAccessFile;

    move-result-object v0

    if-eqz v0, :cond_1d8

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->j(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_1d8} :catch_18b

    .line 134
    :cond_1d8
    :goto_1d8
    goto :goto_1dd

    .line 133
    :goto_1d9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    nop

    .line 136
    :goto_1dd
    return-void

    .line 110
    :catchall_1de
    move-exception v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->f(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->b(Ljava/lang/String;)V

    .line 112
    if-eqz v0, :cond_1f0

    .line 113
    :try_start_1ea
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1f0

    .line 132
    :catch_1ee
    move-exception v0

    goto :goto_23c

    .line 115
    :cond_1f0
    :goto_1f0
    if-eqz v5, :cond_1f5

    .line 116
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 119
    :cond_1f5
    if-eqz v4, :cond_1fa

    .line 120
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 123
    :cond_1fa
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_218

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->e()J

    move-result-wide v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_218

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->g(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V

    goto :goto_21d

    .line 126
    :cond_218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->h(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)V

    .line 128
    :goto_21d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;Z)Z

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->i(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_23b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->j(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/io/RandomAccessFile;

    move-result-object v0

    if-eqz v0, :cond_23b

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;->j(Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23b
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_23b} :catch_1ee

    .line 134
    :cond_23b
    goto :goto_23f

    .line 133
    :goto_23c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    :goto_23f
    throw v2
.end method
