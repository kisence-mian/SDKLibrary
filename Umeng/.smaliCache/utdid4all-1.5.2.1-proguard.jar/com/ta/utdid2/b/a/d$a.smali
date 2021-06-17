.class final Lcom/ta/utdid2/b/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ta/utdid2/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/b/a/d$a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/ta/utdid2/b/a/b$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/io/File;

.field private final c:I

.field private final c:Ljava/io/File;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/b/a/d$a;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .registers 5

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/d$a;->j:Z

    .line 132
    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    .line 133
    invoke-static {p1}, Lcom/ta/utdid2/b/a/d;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a;->c:Ljava/io/File;

    .line 134
    iput p2, p0, Lcom/ta/utdid2/b/a/d$a;->c:I

    .line 135
    if-eqz p3, :cond_13

    goto :goto_18

    :cond_13
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_18
    iput-object p3, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    .line 136
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/WeakHashMap;

    .line 137
    return-void
.end method

.method private a(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 4

    .line 347
    nop

    .line 349
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_9

    .line 360
    move-object v0, v1

    goto :goto_1d

    .line 350
    :catch_9
    move-exception v1

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_15

    .line 353
    return-object v0

    .line 356
    :cond_15
    :try_start_15
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_1c

    .line 359
    move-object v0, v1

    goto :goto_1d

    .line 357
    :catch_1c
    move-exception p1

    .line 361
    :goto_1d
    return-object v0
.end method

.method static synthetic a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/WeakHashMap;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/ta/utdid2/b/a/d$a;)Z
    .registers 1

    .line 121
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/d$a;->d()Z

    move-result p0

    return p0
.end method

.method private d()Z
    .registers 4

    .line 367
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 368
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 369
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/ta/utdid2/b/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 370
    return v1

    .line 373
    :cond_1c
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 383
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/b/a/d$a;->a(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 384
    if-nez v0, :cond_2a

    .line 385
    return v1

    .line 387
    :cond_2a
    iget-object v2, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    invoke-static {v2, v0}, Lcom/ta/utdid2/b/a/e;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 388
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 390
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_37} :catch_39

    .line 391
    const/4 v0, 0x1

    return v0

    .line 392
    :catch_39
    move-exception v0

    .line 396
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 397
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 401
    :cond_47
    return v1
.end method


# virtual methods
.method public a()Lcom/ta/utdid2/b/a/b$a;
    .registers 2

    .line 343
    new-instance v0, Lcom/ta/utdid2/b/a/d$a$a;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/b/a/d$a$a;-><init>(Lcom/ta/utdid2/b/a/d$a;)V

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .registers 2

    .line 162
    if-eqz p1, :cond_a

    .line 163
    monitor-enter p0

    .line 164
    :try_start_3
    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    .line 165
    monitor-exit p0

    goto :goto_a

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1

    .line 167
    :cond_a
    :goto_a
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 150
    monitor-enter p0

    .line 151
    :try_start_1
    iput-boolean p1, p0, Lcom/ta/utdid2/b/a/d$a;->j:Z

    .line 152
    monitor-exit p0

    .line 153
    return-void

    .line 152
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public a()Z
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    if-eqz v0, :cond_17

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 143
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .registers 2

    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/d$a;->j:Z

    monitor-exit p0

    return v0

    .line 158
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 184
    monitor-enter p0

    .line 186
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 187
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 207
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_11

    :cond_10
    move-wide v0, p2

    :goto_11
    monitor-exit p0

    return-wide v0

    .line 208
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 191
    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    move-object v0, p2

    :goto_d
    monitor-exit p0

    return-object v0

    .line 194
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method
