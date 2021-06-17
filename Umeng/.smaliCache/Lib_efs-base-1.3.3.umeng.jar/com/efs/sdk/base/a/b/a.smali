.class public final Lcom/efs/sdk/base/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/b/a$a;,
        Lcom/efs/sdk/base/a/b/a$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/efs/sdk/base/a/b/b;

.field public d:Lcom/efs/sdk/base/a/b/a$a;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/b/a;->a:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/b/a;->b:Z

    .line 60
    new-instance v0, Lcom/efs/sdk/base/a/b/b;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/b/a;->c:Lcom/efs/sdk/base/a/b/b;

    .line 61
    new-instance v0, Lcom/efs/sdk/base/a/b/a$a;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/b/a$a;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/b/a;->d:Lcom/efs/sdk/base/a/b/a$a;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/efs/sdk/base/a/b/a;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .registers 6

    .line 248
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_27

    .line 252
    nop

    .line 254
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    cmp-long p0, v1, v3

    if-ltz p0, :cond_25

    return v0

    :cond_25
    const/4 p0, 0x0

    return p0

    .line 250
    :catchall_27
    move-exception p0

    .line 251
    return v0
.end method

.method static b(Ljava/io/File;)V
    .registers 3

    .line 298
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wa_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v0

    .line 3159
    iget-object v0, v0, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/i/d;->e()V

    .line 301
    :cond_15
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    .line 302
    return-void
.end method

.method static c(Ljava/io/File;)V
    .registers 4

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file is expire: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", now is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4024
    const-string v1, "efs.cache"

    invoke-static {v1, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wa_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 4053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v0

    .line 4152
    iget-object v0, v0, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/i/d;->d()V

    .line 327
    :cond_3e
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    .line 328
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lcom/efs/sdk/base/a/f/b;
    .registers 6

    .line 260
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 261
    return-object v0

    .line 265
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/efs/sdk/base/a/b/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 266
    invoke-static {p1}, Lcom/efs/sdk/base/a/b/a;->c(Ljava/io/File;)V

    .line 267
    return-object v0

    .line 270
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/lang/String;)Lcom/efs/sdk/base/a/f/b;

    move-result-object v1

    .line 272
    if-nez v1, :cond_24

    .line 273
    invoke-static {p1}, Lcom/efs/sdk/base/a/b/a;->b(Ljava/io/File;)V

    .line 274
    return-object v0

    .line 277
    :cond_24
    iget-object v2, p0, Lcom/efs/sdk/base/a/b/a;->c:Lcom/efs/sdk/base/a/b/b;

    .line 2140
    iget-object v3, v1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte v3, v3, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 277
    invoke-virtual {v2, v3}, Lcom/efs/sdk/base/a/b/b;->a(B)Lcom/efs/sdk/base/a/b/e;

    move-result-object v2

    .line 279
    if-nez v2, :cond_34

    .line 280
    invoke-static {p1}, Lcom/efs/sdk/base/a/b/a;->b(Ljava/io/File;)V

    .line 281
    return-object v0

    .line 283
    :cond_34
    invoke-interface {v2, p1, v1}, Lcom/efs/sdk/base/a/b/e;->a(Ljava/io/File;Lcom/efs/sdk/base/a/f/b;)Z

    move-result v2

    .line 285
    if-nez v2, :cond_3e

    .line 286
    invoke-static {p1}, Lcom/efs/sdk/base/a/b/a;->b(Ljava/io/File;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 287
    return-object v0

    .line 289
    :cond_3e
    return-object v1

    .line 290
    :catchall_3f
    move-exception v1

    .line 291
    nop

    .line 3031
    const-string v2, "efs.base"

    const-string v3, "efs.cache"

    invoke-static {v2, v3, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    invoke-static {p1}, Lcom/efs/sdk/base/a/b/a;->b(Ljava/io/File;)V

    .line 293
    return-object v0
.end method

.method public final a()V
    .registers 10

    .line 183
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 1113
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 183
    invoke-static {v0, v1}, Lcom/efs/sdk/base/a/h/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_91

    .line 189
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_90

    array-length v2, v1

    if-gtz v2, :cond_28

    goto :goto_90

    .line 195
    :cond_28
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_8f

    aget-object v4, v1, v3

    .line 197
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v5

    iget-object v5, v5, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/efs/sdk/base/a/h/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 202
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 206
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_89

    .line 211
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 213
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/efs/sdk/base/a/b/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 214
    invoke-static {v6}, Lcom/efs/sdk/base/a/b/a;->c(Ljava/io/File;)V

    .line 215
    goto :goto_4d

    .line 218
    :cond_67
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/lang/String;)Lcom/efs/sdk/base/a/f/b;

    move-result-object v7

    .line 220
    if-nez v7, :cond_75

    .line 221
    invoke-static {v6}, Lcom/efs/sdk/base/a/b/a;->b(Ljava/io/File;)V

    .line 222
    goto :goto_4d

    .line 225
    :cond_75
    iget-object v8, p0, Lcom/efs/sdk/base/a/b/a;->c:Lcom/efs/sdk/base/a/b/b;

    .line 1140
    iget-object v7, v7, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte v7, v7, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 225
    invoke-virtual {v8, v7}, Lcom/efs/sdk/base/a/b/b;->a(B)Lcom/efs/sdk/base/a/b/e;

    move-result-object v7

    .line 227
    if-nez v7, :cond_85

    .line 228
    invoke-static {v6}, Lcom/efs/sdk/base/a/b/a;->b(Ljava/io/File;)V

    .line 229
    goto :goto_4d

    .line 231
    :cond_85
    invoke-interface {v7, v6}, Lcom/efs/sdk/base/a/b/e;->a(Ljava/io/File;)V

    .line 233
    goto :goto_4d

    .line 235
    :cond_89
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    .line 195
    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 237
    :cond_8f
    return-void

    .line 192
    :cond_90
    :goto_90
    return-void

    .line 186
    :cond_91
    :goto_91
    return-void
.end method
