.class public final Lcom/efs/sdk/base/a/b/g;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/a/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/b/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/efs/sdk/base/a/b/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/efs/sdk/base/a/g/a/d;

.field private c:Lcom/efs/sdk/base/a/g/a/c;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 91
    sget-object v0, Lcom/efs/sdk/base/a/h/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/b/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Lcom/efs/sdk/base/a/g/a/d;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/g/a/d;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/b/g;->b:Lcom/efs/sdk/base/a/g/a/d;

    .line 93
    new-instance v0, Lcom/efs/sdk/base/a/g/a/c;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/g/a/c;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/b/g;->c:Lcom/efs/sdk/base/a/g/a/c;

    .line 94
    return-void
.end method

.method private a(Lcom/efs/sdk/base/a/f/b;Ljava/io/File;)Z
    .registers 8

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    nop

    .line 332
    nop

    .line 335
    const/4 v1, 0x0

    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_5d

    .line 336
    :try_start_d
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_59

    .line 337
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 339
    :goto_16
    if-eqz v1, :cond_34

    .line 340
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/efs/sdk/base/a/h/c/b;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_2f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 346
    goto :goto_16

    .line 347
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/f/b;->a([B)V

    .line 348
    invoke-virtual {p1}, Lcom/efs/sdk/base/a/f/b;->d()V

    .line 349
    iget-object v0, p0, Lcom/efs/sdk/base/a/b/g;->c:Lcom/efs/sdk/base/a/g/a/c;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/g/a/c;->a(Lcom/efs/sdk/base/a/f/b;)V

    .line 350
    iget-object v0, p0, Lcom/efs/sdk/base/a/b/g;->b:Lcom/efs/sdk/base/a/g/a/d;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/g/a/d;->a(Lcom/efs/sdk/base/a/f/b;)V

    .line 351
    nop

    .line 21199
    iput-object p2, p1, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_57

    .line 356
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 357
    invoke-static {v2}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 352
    const/4 p1, 0x1

    return p1

    .line 353
    :catchall_57
    move-exception p1

    goto :goto_5b

    :catchall_59
    move-exception p1

    move-object v3, v1

    :goto_5b
    move-object v1, v2

    goto :goto_5f

    :catchall_5d
    move-exception p1

    move-object v3, v1

    .line 354
    :goto_5f
    :try_start_5f
    const-string p2, "efs.cache"

    const-string v0, "local decode error"

    invoke-static {p2, v0, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_6f

    .line 356
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 357
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 358
    nop

    .line 359
    const/4 p1, 0x0

    return p1

    .line 356
    :catchall_6f
    move-exception p1

    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 357
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_78

    :goto_77
    throw p1

    :goto_78
    goto :goto_77
.end method

.method private static b(Ljava/lang/String;)J
    .registers 7

    .line 160
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/c/a/c;->c()Ljava/util/Map;

    move-result-object v0

    .line 161
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "record_accumulation_time_"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 164
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/32 v2, 0xea60

    if-nez v1, :cond_1c

    .line 165
    return-wide v2

    .line 168
    :cond_1c
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 172
    return-wide v2

    .line 177
    :cond_29
    :try_start_29
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    .line 179
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_36

    return-wide v0

    .line 180
    :catchall_36
    move-exception p0

    .line 181
    const-string v0, "efs.cache"

    const-string v1, "get cache interval error"

    invoke-static {v0, v1, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    return-wide v2
.end method

.method private b(Lcom/efs/sdk/base/a/f/b;)Lcom/efs/sdk/base/a/b/g$a;
    .registers 7

    .line 223
    iget-object v0, p0, Lcom/efs/sdk/base/a/b/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9164
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 224
    iget-object v0, p0, Lcom/efs/sdk/base/a/b/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10164
    iget-object p1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object p1, p1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 224
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/efs/sdk/base/a/b/g$a;

    return-object p1

    .line 228
    :cond_19
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b;->a(Lcom/efs/sdk/base/a/f/b;)Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v3

    .line 11113
    iget-object v3, v3, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 229
    invoke-static {v2, v3}, Lcom/efs/sdk/base/a/h/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    .line 234
    :try_start_33
    new-instance v2, Lcom/efs/sdk/base/a/b/g$a;

    invoke-direct {v2, v1}, Lcom/efs/sdk/base/a/b/g$a;-><init>(Ljava/io/File;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_6a

    .line 235
    :try_start_38
    iget-object v0, p0, Lcom/efs/sdk/base/a/b/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11164
    iget-object v3, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v3, v3, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 235
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/efs/sdk/base/a/b/g$a;

    .line 239
    if-eqz v0, :cond_4d

    .line 240
    invoke-static {v2}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 241
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    .line 242
    return-object v0

    .line 246
    :cond_4d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 247
    nop

    .line 12164
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 247
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 249
    nop

    .line 13164
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 249
    invoke-static {v1}, Lcom/efs/sdk/base/a/b/g;->b(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lcom/efs/sdk/base/a/b/g;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_67
    .catchall {:try_start_38 .. :try_end_67} :catchall_68

    .line 252
    goto :goto_70

    .line 251
    :catchall_68
    move-exception v0

    goto :goto_6d

    :catchall_6a
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    :goto_70
    nop

    .line 14164
    iget-object p1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object p1, p1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 254
    const-string v0, "wa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_86

    .line 15053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 15131
    iget-object p1, p1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/i/d;->b()V

    .line 257
    :cond_86
    return-object v2
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    .line 275
    const-string v0, "wa"

    iget-object v1, p0, Lcom/efs/sdk/base/a/b/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 276
    return-void

    .line 280
    :cond_b
    iget-object v1, p0, Lcom/efs/sdk/base/a/b/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/efs/sdk/base/a/b/g$a;

    .line 282
    if-nez v1, :cond_16

    .line 283
    return-void

    .line 288
    :cond_16
    :try_start_16
    invoke-virtual {v1}, Lcom/efs/sdk/base/a/b/g$a;->flush()V

    .line 289
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 290
    iget-object v1, v1, Lcom/efs/sdk/base/a/b/g$a;->b:Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/efs/sdk/base/a/b/g;->a(Ljava/io/File;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_36

    .line 295
    iget-object v1, p0, Lcom/efs/sdk/base/a/b/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 16053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 16138
    iget-object p1, p1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/i/d;->c()V

    .line 298
    :goto_35
    return-void

    .line 292
    :catchall_36
    move-exception v1

    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_50

    .line 295
    iget-object v1, p0, Lcom/efs/sdk/base/a/b/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 17053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 17138
    iget-object p1, p1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/i/d;->c()V

    goto :goto_35

    .line 301
    :cond_4f
    return-void

    .line 295
    :catchall_50
    move-exception v1

    iget-object v2, p0, Lcom/efs/sdk/base/a/b/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_65

    .line 18053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 18138
    iget-object p1, p1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/i/d;->c()V

    .line 298
    :cond_65
    goto :goto_67

    :goto_66
    throw v1

    :goto_67
    goto :goto_66
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .registers 3

    .line 115
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 116
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    const/4 p1, 0x0

    iput p1, v0, Landroid/os/Message;->what:I

    .line 118
    invoke-virtual {p0, v0}, Lcom/efs/sdk/base/a/b/g;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .registers 6

    .line 305
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/lang/String;)Lcom/efs/sdk/base/a/f/b;

    move-result-object v0

    .line 307
    if-nez v0, :cond_11

    .line 19075
    invoke-static {}, Lcom/efs/sdk/base/a/b/a$b;->a()Lcom/efs/sdk/base/a/b/a;

    .line 308
    invoke-static {p1}, Lcom/efs/sdk/base/a/b/a;->b(Ljava/io/File;)V

    .line 309
    return-void

    .line 312
    :cond_11
    invoke-direct {p0, v0, p1}, Lcom/efs/sdk/base/a/b/g;->a(Lcom/efs/sdk/base/a/f/b;Ljava/io/File;)Z

    move-result v1

    .line 315
    if-eqz v1, :cond_44

    .line 19174
    iget-object v1, v0, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 315
    if-eqz v1, :cond_44

    .line 20174
    iget-object v1, v0, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 315
    array-length v1, v1

    if-gtz v1, :cond_21

    goto :goto_44

    .line 321
    :cond_21
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->a(Lcom/efs/sdk/base/a/f/b;)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    .line 323
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v3

    .line 21113
    iget-object v3, v3, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 322
    invoke-static {v2, v3}, Lcom/efs/sdk/base/a/h/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 324
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    nop

    .line 21174
    iget-object v0, v0, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 325
    invoke-static {v3, v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/File;[B)Z

    .line 326
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    .line 327
    return-void

    .line 21075
    :cond_44
    :goto_44
    invoke-static {}, Lcom/efs/sdk/base/a/b/a$b;->a()Lcom/efs/sdk/base/a/b/a;

    .line 316
    invoke-static {p1}, Lcom/efs/sdk/base/a/b/a;->b(Ljava/io/File;)V

    .line 317
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    return-void

    .line 152
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 153
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    const/4 p1, 0x1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 155
    invoke-virtual {p0, v0}, Lcom/efs/sdk/base/a/b/g;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.method public final a(Ljava/io/File;Lcom/efs/sdk/base/a/f/b;)Z
    .registers 5

    .line 129
    invoke-virtual {p2}, Lcom/efs/sdk/base/a/f/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 130
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/b/g;->a(Ljava/io/File;)V

    .line 131
    return v1

    .line 134
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 135
    return v1

    .line 138
    :cond_12
    nop

    .line 8199
    iput-object p1, p2, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 139
    invoke-virtual {p2}, Lcom/efs/sdk/base/a/f/b;->d()V

    .line 140
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/a/f/b;->b(I)V

    .line 141
    return p1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 98
    const-string v0, "efs.cache"

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_98

    goto/16 :goto_97

    .line 100
    :pswitch_9
    nop

    .line 1261
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 1265
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/efs/sdk/base/a/b/g;->c(Ljava/lang/String;)V

    .line 101
    :cond_19
    return-void

    .line 103
    :pswitch_1a
    nop

    .line 2187
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/efs/sdk/base/a/f/b;

    .line 2189
    const/4 v1, 0x0

    :goto_20
    const/4 v2, 0x3

    if-ge v1, v2, :cond_97

    .line 2192
    :try_start_23
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/a/b/g;->b(Lcom/efs/sdk/base/a/f/b;)Lcom/efs/sdk/base/a/b/g$a;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_8e

    .line 2194
    const/4 v3, 0x0

    const-string v4, "writer is null for type "

    if-nez v2, :cond_41

    .line 2195
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3164
    iget-object v4, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v4, v4, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 2195
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4025
    invoke-static {v0, v2, v3}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2196
    return-void

    .line 2200
    :cond_41
    invoke-virtual {v2}, Lcom/efs/sdk/base/a/b/g$a;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    .line 4174
    iget-object v7, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 2200
    array-length v7, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    const-wide/32 v7, 0xc8000

    cmp-long v9, v5, v7

    if-lez v9, :cond_78

    .line 2201
    nop

    .line 5164
    iget-object v2, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v2, v2, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 2201
    invoke-direct {p0, v2}, Lcom/efs/sdk/base/a/b/g;->c(Ljava/lang/String;)V

    .line 2202
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/a/b/g;->b(Lcom/efs/sdk/base/a/f/b;)Lcom/efs/sdk/base/a/b/g$a;

    move-result-object v2

    .line 2204
    if-nez v2, :cond_78

    .line 2205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6164
    iget-object v4, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v4, v4, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 2205
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7025
    invoke-static {v0, v2, v3}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2206
    return-void

    .line 2211
    :cond_78
    nop

    .line 7174
    iget-object v3, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 8031
    const/16 v4, 0xb

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    .line 2211
    invoke-virtual {v2, v3}, Lcom/efs/sdk/base/a/b/g$a;->write([B)V

    .line 2213
    const-string v3, "\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/efs/sdk/base/a/b/g$a;->write([B)V
    :try_end_8d
    .catchall {:try_start_2c .. :try_end_8d} :catchall_8e

    .line 2214
    return-void

    .line 2215
    :catchall_8e
    move-exception v2

    .line 2216
    const-string v3, "cache file error"

    invoke-static {v0, v3, v2}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2189
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 106
    :cond_97
    :goto_97
    return-void

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_9
    .end packed-switch
.end method
