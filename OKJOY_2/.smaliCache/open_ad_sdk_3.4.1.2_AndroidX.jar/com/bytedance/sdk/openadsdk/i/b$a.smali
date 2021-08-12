.class final Lcom/bytedance/sdk/openadsdk/i/b$a;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/bytedance/sdk/openadsdk/i/l;

.field d:Lcom/bytedance/sdk/openadsdk/i/a/a;

.field e:Lcom/bytedance/sdk/openadsdk/i/b/c;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Lcom/bytedance/sdk/openadsdk/i/i;

.field i:Lcom/bytedance/sdk/openadsdk/i/b$b;

.field j:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)Lcom/bytedance/sdk/openadsdk/i/b$a;
    .registers 2

    .line 309
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->g:I

    .line 310
    return-object p0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/i/a/a;)Lcom/bytedance/sdk/openadsdk/i/b$a;
    .registers 3

    .line 288
    if-eqz p1, :cond_5

    .line 291
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->d:Lcom/bytedance/sdk/openadsdk/i/a/a;

    .line 292
    return-object p0

    .line 289
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cache == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/bytedance/sdk/openadsdk/i/b$b;)Lcom/bytedance/sdk/openadsdk/i/b$a;
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->i:Lcom/bytedance/sdk/openadsdk/i/b$b;

    .line 315
    return-object p0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/i/b/c;)Lcom/bytedance/sdk/openadsdk/i/b$a;
    .registers 3

    .line 296
    if-eqz p1, :cond_5

    .line 299
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->e:Lcom/bytedance/sdk/openadsdk/i/b/c;

    .line 300
    return-object p0

    .line 297
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "db == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/bytedance/sdk/openadsdk/i/i;)Lcom/bytedance/sdk/openadsdk/i/b$a;
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->h:Lcom/bytedance/sdk/openadsdk/i/i;

    .line 320
    return-object p0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/i/l;)Lcom/bytedance/sdk/openadsdk/i/b$a;
    .registers 3

    .line 280
    if-eqz p1, :cond_5

    .line 283
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->c:Lcom/bytedance/sdk/openadsdk/i/l;

    .line 284
    return-object p0

    .line 281
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "urls is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/i/b$a;
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->j:Ljava/lang/Object;

    .line 325
    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/b$a;
    .registers 3

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 267
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->a:Ljava/lang/String;

    .line 268
    return-object p0

    .line 265
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rawKey == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/i/b$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/i/b$a;"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->f:Ljava/util/List;

    .line 305
    return-object p0
.end method

.method a()Lcom/bytedance/sdk/openadsdk/i/b;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->d:Lcom/bytedance/sdk/openadsdk/i/a/a;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->e:Lcom/bytedance/sdk/openadsdk/i/b/c;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->a:Ljava/lang/String;

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->c:Lcom/bytedance/sdk/openadsdk/i/l;

    if-eqz v0, :cond_22

    .line 333
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/i/b;-><init>(Lcom/bytedance/sdk/openadsdk/i/b$a;)V

    return-object v0

    .line 331
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/b$a;
    .registers 3

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 275
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b$a;->b:Ljava/lang/String;

    .line 276
    return-object p0

    .line 273
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
