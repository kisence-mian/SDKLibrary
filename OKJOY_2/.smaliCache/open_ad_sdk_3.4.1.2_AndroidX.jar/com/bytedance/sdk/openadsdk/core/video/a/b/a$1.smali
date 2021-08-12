.class Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "VideoPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 75
    new-instance v0, Lcom/bytedance/sdk/a/b/v;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v;-><init>()V

    .line 76
    new-instance v1, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/b/y$a;-><init>()V

    const-string v2, "RANGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes=0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    .line 77
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    .line 78
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y$a;->a()Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 87
    nop

    .line 88
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 91
    const/4 v3, 0x0

    :try_start_50
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/v;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/e;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/e;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_1e9

    .line 93
    :try_start_58
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->d()Z

    move-result v1
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_1e6

    if-nez v1, :cond_c9

    .line 117
    nop

    .line 120
    nop

    .line 123
    nop

    .line 127
    if-eqz v0, :cond_66

    .line 128
    :try_start_63
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 130
    :cond_66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c()Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6b} :catch_c4

    .line 131
    :try_start_6b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c()Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_6b .. :try_end_79} :catchall_c1

    .line 134
    :try_start_79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    move-result-object v0

    if-nez v0, :cond_bd

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 137
    if-nez v0, :cond_9e

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 140
    :cond_9e
    const-string v0, "VideoPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload success md5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    goto :goto_c0

    .line 144
    :cond_bd
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_c0} :catch_c4

    .line 149
    :goto_c0
    goto :goto_c8

    .line 132
    :catchall_c1
    move-exception v1

    :try_start_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    :try_start_c3
    throw v1
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c4} :catch_c4

    .line 147
    :catch_c4
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    :goto_c8
    return-void

    .line 96
    :cond_c9
    :try_start_c9
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v1
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_1e6

    .line 97
    :try_start_cd
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->c()Ljava/io/InputStream;

    move-result-object v4
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_1e3

    .line 98
    if-nez v4, :cond_148

    .line 117
    nop

    .line 120
    if-eqz v4, :cond_dc

    .line 121
    :try_start_d6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_dc

    .line 147
    :catch_da
    move-exception v0

    goto :goto_144

    .line 123
    :cond_dc
    :goto_dc
    if-eqz v1, :cond_e1

    .line 124
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 127
    :cond_e1
    if-eqz v0, :cond_e6

    .line 128
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 130
    :cond_e6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c()Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_eb} :catch_da

    .line 131
    :try_start_eb
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c()Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_eb .. :try_end_f9} :catchall_141

    .line 134
    :try_start_f9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    move-result-object v0

    if-nez v0, :cond_13d

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 137
    if-nez v0, :cond_11e

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 140
    :cond_11e
    const-string v0, "VideoPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload success md5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    goto :goto_140

    .line 144
    :cond_13d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_140} :catch_da

    .line 149
    :goto_140
    goto :goto_147

    .line 132
    :catchall_141
    move-exception v1

    :try_start_142
    monitor-exit v0
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    :try_start_143
    throw v1
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_144} :catch_da

    .line 148
    :goto_144
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    :goto_147
    return-void

    .line 102
    :cond_148
    :try_start_148
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_151

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 105
    :cond_151
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_156
    .catchall {:try_start_148 .. :try_end_156} :catchall_1e1

    .line 106
    const/16 v3, 0x4000

    :try_start_158
    new-array v3, v3, [B

    .line 108
    :goto_15a
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_166

    .line 109
    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_15a

    .line 111
    :cond_166
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_169
    .catchall {:try_start_158 .. :try_end_169} :catchall_1dc

    .line 117
    nop

    .line 118
    :try_start_16a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 120
    if-eqz v4, :cond_172

    .line 121
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_172
    if-eqz v1, :cond_177

    .line 124
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 127
    :cond_177
    if-eqz v0, :cond_17c

    .line 128
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 130
    :cond_17c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c()Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_181} :catch_1f6

    .line 131
    :try_start_181
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c()Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0
    :try_end_18f
    .catchall {:try_start_181 .. :try_end_18f} :catchall_1d9

    .line 134
    :try_start_18f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    move-result-object v0

    if-nez v0, :cond_1d4

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 137
    if-nez v0, :cond_1b4

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 140
    :cond_1b4
    const-string v0, "VideoPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload success md5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25d

    .line 144
    :cond_1d4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_1d7} :catch_1f6

    goto/16 :goto_261

    .line 132
    :catchall_1d9
    move-exception v1

    :try_start_1da
    monitor-exit v0
    :try_end_1db
    .catchall {:try_start_1da .. :try_end_1db} :catchall_1d9

    :try_start_1db
    throw v1
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1dc} :catch_1f6

    .line 113
    :catchall_1dc
    move-exception v3

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    goto :goto_1ed

    :catchall_1e1
    move-exception v5

    goto :goto_1ed

    :catchall_1e3
    move-exception v5

    move-object v4, v3

    goto :goto_1ed

    :catchall_1e6
    move-exception v5

    move-object v1, v3

    goto :goto_1ec

    :catchall_1e9
    move-exception v5

    move-object v0, v3

    move-object v1, v0

    :goto_1ec
    move-object v4, v1

    .line 114
    :goto_1ed
    :try_start_1ed
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f0
    .catchall {:try_start_1ed .. :try_end_1f0} :catchall_26a

    .line 117
    if-eqz v3, :cond_1f8

    .line 118
    :try_start_1f2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1f8

    .line 147
    :catch_1f6
    move-exception v0

    goto :goto_265

    .line 120
    :cond_1f8
    :goto_1f8
    if-eqz v4, :cond_1fd

    .line 121
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_1fd
    if-eqz v1, :cond_202

    .line 124
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 127
    :cond_202
    if-eqz v0, :cond_207

    .line 128
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 130
    :cond_207
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c()Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_20c} :catch_1f6

    .line 131
    :try_start_20c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c()Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0
    :try_end_21a
    .catchall {:try_start_20c .. :try_end_21a} :catchall_262

    .line 134
    :try_start_21a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    move-result-object v0

    if-nez v0, :cond_25e

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 137
    if-nez v0, :cond_23f

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 140
    :cond_23f
    const-string v0, "VideoPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload success md5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_25d
    goto :goto_261

    .line 144
    :cond_25e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_261
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_261} :catch_1f6

    .line 149
    :goto_261
    goto :goto_269

    .line 132
    :catchall_262
    move-exception v1

    :try_start_263
    monitor-exit v0
    :try_end_264
    .catchall {:try_start_263 .. :try_end_264} :catchall_262

    :try_start_264
    throw v1
    :try_end_265
    .catch Ljava/io/IOException; {:try_start_264 .. :try_end_265} :catch_1f6

    .line 148
    :goto_265
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    nop

    .line 152
    :goto_269
    return-void

    .line 116
    :catchall_26a
    move-exception v5

    .line 117
    if-eqz v3, :cond_273

    .line 118
    :try_start_26d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_273

    .line 147
    :catch_271
    move-exception v0

    goto :goto_2e0

    .line 120
    :cond_273
    :goto_273
    if-eqz v4, :cond_278

    .line 121
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 123
    :cond_278
    if-eqz v1, :cond_27d

    .line 124
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 127
    :cond_27d
    if-eqz v0, :cond_282

    .line 128
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->close()V

    .line 130
    :cond_282
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c()Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0
    :try_end_287
    .catch Ljava/io/IOException; {:try_start_26d .. :try_end_287} :catch_271

    .line 131
    :try_start_287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c()Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0
    :try_end_295
    .catchall {:try_start_287 .. :try_end_295} :catchall_2dd

    .line 134
    :try_start_295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    move-result-object v0

    if-nez v0, :cond_2d9

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 137
    if-nez v0, :cond_2ba

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 140
    :cond_2ba
    const-string v0, "VideoPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload success md5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    goto :goto_2dc

    .line 144
    :cond_2d9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2dc
    .catch Ljava/io/IOException; {:try_start_295 .. :try_end_2dc} :catch_271

    .line 149
    :goto_2dc
    goto :goto_2e3

    .line 132
    :catchall_2dd
    move-exception v1

    :try_start_2de
    monitor-exit v0
    :try_end_2df
    .catchall {:try_start_2de .. :try_end_2df} :catchall_2dd

    :try_start_2df
    throw v1
    :try_end_2e0
    .catch Ljava/io/IOException; {:try_start_2df .. :try_end_2e0} :catch_271

    .line 148
    :goto_2e0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    :goto_2e3
    throw v5
.end method
