.class final Lcom/tapjoy/internal/hv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hv;->a(Ljava/net/URL;Ljava/io/InputStream;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URL;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:J

.field final synthetic d:Lcom/tapjoy/internal/hv;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hv;Ljava/net/URL;Ljava/io/InputStream;J)V
    .registers 6

    .line 120
    iput-object p1, p0, Lcom/tapjoy/internal/hv$2;->d:Lcom/tapjoy/internal/hv;

    iput-object p2, p0, Lcom/tapjoy/internal/hv$2;->a:Ljava/net/URL;

    iput-object p3, p0, Lcom/tapjoy/internal/hv$2;->b:Ljava/io/InputStream;

    iput-wide p4, p0, Lcom/tapjoy/internal/hv$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/tapjoy/internal/hv$2;->d:Lcom/tapjoy/internal/hv;

    .line 1218
    const-string v3, "tj_"

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/tapjoy/internal/hv;->b()Ljava/io/File;

    move-result-object v2

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 126
    nop

    .line 127
    if-nez v2, :cond_1b

    .line 128
    const-class v2, Lcom/tapjoy/internal/hv;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tapjoy/internal/hv$2;->a:Ljava/net/URL;

    aput-object v3, v2, v0

    .line 129
    return-void

    .line 131
    :cond_1b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_20} :catch_8f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_20} :catch_85

    .line 138
    nop

    .line 141
    :try_start_21
    iget-object v4, p0, Lcom/tapjoy/internal/hv$2;->b:Ljava/io/InputStream;

    invoke-static {v4, v3}, Lcom/tapjoy/internal/jz;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 142
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_7b

    .line 146
    nop

    .line 148
    iget-wide v3, p0, Lcom/tapjoy/internal/hv$2;->c:J

    .line 149
    const-wide/32 v5, 0x93a80

    cmp-long v7, v3, v5

    if-lez v7, :cond_34

    .line 150
    move-wide v3, v5

    .line 153
    :cond_34
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v3, v3, v7

    add-long/2addr v5, v3

    .line 155
    iget-object v3, p0, Lcom/tapjoy/internal/hv$2;->d:Lcom/tapjoy/internal/hv;

    monitor-enter v3

    .line 156
    :try_start_40
    iget-object v4, p0, Lcom/tapjoy/internal/hv$2;->d:Lcom/tapjoy/internal/hv;

    iget-object v7, p0, Lcom/tapjoy/internal/hv$2;->a:Ljava/net/URL;

    invoke-virtual {v4, v7}, Lcom/tapjoy/internal/hv;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    .line 157
    iget-object v7, p0, Lcom/tapjoy/internal/hv$2;->d:Lcom/tapjoy/internal/hv;

    invoke-virtual {v7, v4}, Lcom/tapjoy/internal/hv;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 158
    invoke-virtual {v2, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 159
    iget-object v7, p0, Lcom/tapjoy/internal/hv$2;->d:Lcom/tapjoy/internal/hv;

    invoke-static {v7}, Lcom/tapjoy/internal/hv;->c(Lcom/tapjoy/internal/hv;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    const-class v5, Lcom/tapjoy/internal/hv;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    aput-object v4, v5, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tapjoy/internal/hv$2;->a:Ljava/net/URL;

    aput-object v1, v5, v0

    goto :goto_76

    .line 162
    :cond_74
    const-class v0, Lcom/tapjoy/internal/hv;

    .line 164
    :goto_76
    monitor-exit v3

    return-void

    :catchall_78
    move-exception v0

    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_40 .. :try_end_7a} :catchall_78

    throw v0

    .line 143
    :catch_7b
    move-exception v2

    .line 144
    const-class v2, Lcom/tapjoy/internal/hv;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/internal/hv$2;->a:Ljava/net/URL;

    aput-object v2, v1, v0

    .line 145
    return-void

    .line 135
    :catch_85
    move-exception v2

    .line 136
    const-class v2, Lcom/tapjoy/internal/hv;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/internal/hv$2;->a:Ljava/net/URL;

    aput-object v2, v1, v0

    .line 137
    return-void

    .line 132
    :catch_8f
    move-exception v2

    .line 133
    const-class v2, Lcom/tapjoy/internal/hv;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/internal/hv$2;->a:Ljava/net/URL;

    aput-object v2, v1, v0

    .line 134
    return-void
.end method
