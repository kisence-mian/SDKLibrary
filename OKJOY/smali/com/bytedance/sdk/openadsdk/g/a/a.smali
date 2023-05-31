.class public Lcom/bytedance/sdk/openadsdk/g/a/a;
.super Ljava/lang/Object;
.source "GifCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/a/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile e:Lcom/bytedance/sdk/openadsdk/g/a/a;


# instance fields
.field private b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/b/a;

.field private final d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/g/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->b:Ljava/util/WeakHashMap;

    .line 46
    const/high16 v0, 0x500000

    .line 47
    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/a/a$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/g/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/a;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->d:Landroid/util/LruCache;

    .line 68
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->c:Lcom/bytedance/sdk/openadsdk/b/a;

    .line 69
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/g/a/a;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a/a;->e:Lcom/bytedance/sdk/openadsdk/g/a/a;

    if-nez v0, :cond_13

    .line 33
    const-class v1, Lcom/bytedance/sdk/openadsdk/g/a/a;

    monitor-enter v1

    .line 34
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a/a;->e:Lcom/bytedance/sdk/openadsdk/g/a/a;

    if-nez v0, :cond_12

    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/a/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/g/a/a;->e:Lcom/bytedance/sdk/openadsdk/g/a/a;

    .line 37
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 39
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a/a;->e:Lcom/bytedance/sdk/openadsdk/g/a/a;

    return-object v0

    .line 37
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a([B)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_1c

    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1c

    aget-byte v2, p1, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_1c

    aget-byte v2, p1, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b
.end method

.method private static b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 208
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 209
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "diskGif"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/g/a/a;->a:Ljava/lang/String;

    .line 215
    :cond_20
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/io/File;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 129
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_25

    move-result v1

    if-eqz v1, :cond_a

    .line 138
    :cond_8
    :goto_8
    monitor-exit p0

    return-object v0

    .line 133
    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_25

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    move-object v0, v1

    .line 135
    goto :goto_8

    .line 129
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_32

    move-result v0

    if-eqz v0, :cond_a

    .line 189
    const/4 v0, 0x0

    .line 204
    :cond_8
    :goto_8
    monitor-exit p0

    return-object v0

    .line 194
    :cond_a
    :try_start_a
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 195
    const-string v0, "https"

    const-string v1, "http"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 198
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 202
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_32

    goto :goto_8

    .line 188
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;[B)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 72
    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_94

    move-result v0

    if-nez v0, :cond_b

    if-nez p2, :cond_d

    .line 121
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 76
    :cond_d
    :try_start_d
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a([B)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_94

    move-result v0

    if-nez v0, :cond_1d

    .line 79
    :try_start_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->d:Landroid/util/LruCache;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    invoke-direct {v1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/a$a;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1d} :catch_8b
    .catchall {:try_start_13 .. :try_end_1d} :catchall_94

    .line 86
    :cond_1d
    :goto_1d
    :try_start_1d
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_b

    .line 91
    :cond_3a
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_94

    .line 94
    const/4 v1, 0x0

    .line 96
    :try_start_56
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 98
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5e} :catch_97
    .catchall {:try_start_56 .. :try_end_5e} :catchall_a9

    .line 99
    :try_start_5e
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 100
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 102
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_7e

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 106
    :cond_7b
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 109
    :cond_7e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->c:Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Ljava/io/File;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_83} :catch_b7
    .catchall {:try_start_5e .. :try_end_83} :catchall_b2

    .line 115
    if-eqz v0, :cond_b

    .line 116
    :try_start_85
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89
    .catchall {:try_start_85 .. :try_end_88} :catchall_94

    goto :goto_b

    .line 118
    :catch_89
    move-exception v0

    goto :goto_b

    .line 80
    :catch_8b
    move-exception v0

    .line 81
    :try_start_8c
    const-string v1, "GifCache"

    const-string v2, "gifCache mLruCache.put error "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_94

    goto :goto_1d

    .line 72
    :catchall_94
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :catch_97
    move-exception v0

    move-object v0, v1

    .line 111
    :goto_99
    :try_start_99
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_b2

    .line 115
    if-eqz v0, :cond_b

    .line 116
    :try_start_a1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a6
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_94

    goto/16 :goto_b

    .line 118
    :catch_a6
    move-exception v0

    goto/16 :goto_b

    .line 114
    :catchall_a9
    move-exception v0

    .line 115
    :goto_aa
    if-eqz v1, :cond_af

    .line 116
    :try_start_ac
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0
    .catchall {:try_start_ac .. :try_end_af} :catchall_94

    .line 119
    :cond_af
    :goto_af
    :try_start_af
    throw v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_94

    .line 118
    :catch_b0
    move-exception v1

    goto :goto_af

    .line 114
    :catchall_b2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_aa

    .line 110
    :catch_b7
    move-exception v1

    goto :goto_99
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/a$a;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 142
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_86

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 184
    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    .line 146
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    .line 147
    if-nez v0, :cond_9

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_86

    move-result v2

    if-eqz v2, :cond_6b

    .line 156
    :try_start_24
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_29} :catch_6d
    .catchall {:try_start_24 .. :try_end_29} :catchall_7e

    .line 157
    :try_start_29
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 160
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_43} :catch_8f
    .catchall {:try_start_29 .. :try_end_43} :catchall_8d

    move-result-object v3

    .line 163
    :try_start_44
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/g/a/a$a;-><init>([B)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_49} :catch_51
    .catchall {:try_start_44 .. :try_end_49} :catchall_8d

    .line 176
    if-eqz v2, :cond_9

    .line 177
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f
    .catchall {:try_start_4b .. :try_end_4e} :catchall_86

    goto :goto_9

    .line 179
    :catch_4f
    move-exception v1

    goto :goto_9

    .line 164
    :catch_51
    move-exception v0

    .line 167
    if-eqz v3, :cond_66

    .line 168
    :try_start_54
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/g/a/a$a;-><init>([B)V

    .line 169
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->d:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5e} :catch_8f
    .catchall {:try_start_54 .. :try_end_5e} :catchall_8d

    .line 176
    if-eqz v2, :cond_9

    .line 177
    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_86

    goto :goto_9

    .line 179
    :catch_64
    move-exception v1

    goto :goto_9

    .line 176
    :cond_66
    if-eqz v2, :cond_6b

    .line 177
    :try_start_68
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_89
    .catchall {:try_start_68 .. :try_end_6b} :catchall_86

    :cond_6b
    :goto_6b
    move-object v0, v1

    .line 184
    goto :goto_9

    .line 172
    :catch_6d
    move-exception v0

    move-object v2, v1

    .line 173
    :goto_6f
    :try_start_6f
    const-string v3, "GifCache"

    const-string v4, "gifCache get error "

    invoke-static {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_8d

    .line 176
    if-eqz v2, :cond_6b

    .line 177
    :try_start_78
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c
    .catchall {:try_start_78 .. :try_end_7b} :catchall_86

    goto :goto_6b

    .line 179
    :catch_7c
    move-exception v0

    goto :goto_6b

    .line 175
    :catchall_7e
    move-exception v0

    move-object v2, v1

    .line 176
    :goto_80
    if-eqz v2, :cond_85

    .line 177
    :try_start_82
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_8b
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    .line 180
    :cond_85
    :goto_85
    :try_start_85
    throw v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    .line 142
    :catchall_86
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :catch_89
    move-exception v0

    goto :goto_6b

    :catch_8b
    move-exception v1

    goto :goto_85

    .line 175
    :catchall_8d
    move-exception v0

    goto :goto_80

    .line 172
    :catch_8f
    move-exception v0

    goto :goto_6f
.end method
