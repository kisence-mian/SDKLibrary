.class final Lcom/bytedance/sdk/openadsdk/h/b$a;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/bytedance/sdk/openadsdk/h/l;

.field d:Lcom/bytedance/sdk/openadsdk/h/a/a;

.field e:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Lcom/bytedance/sdk/openadsdk/h/i;

.field i:Lcom/bytedance/sdk/openadsdk/h/b$b;

.field j:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)Lcom/bytedance/sdk/openadsdk/h/b$a;
    .registers 2

    .prologue
    .line 309
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->g:I

    .line 310
    return-object p0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/a/a;)Lcom/bytedance/sdk/openadsdk/h/b$a;
    .registers 4

    .prologue
    .line 288
    if-nez p1, :cond_a

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cache == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_a
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->d:Lcom/bytedance/sdk/openadsdk/h/a/a;

    .line 292
    return-object p0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/b$b;)Lcom/bytedance/sdk/openadsdk/h/b$a;
    .registers 2

    .prologue
    .line 314
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->i:Lcom/bytedance/sdk/openadsdk/h/b$b;

    .line 315
    return-object p0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/b$a;
    .registers 4

    .prologue
    .line 296
    if-nez p1, :cond_a

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "db == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_a
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->e:Lcom/bytedance/sdk/openadsdk/h/b/c;

    .line 300
    return-object p0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/i;)Lcom/bytedance/sdk/openadsdk/h/b$a;
    .registers 2

    .prologue
    .line 319
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->h:Lcom/bytedance/sdk/openadsdk/h/i;

    .line 320
    return-object p0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/l;)Lcom/bytedance/sdk/openadsdk/h/b$a;
    .registers 4

    .prologue
    .line 280
    if-nez p1, :cond_a

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "urls is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_a
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->c:Lcom/bytedance/sdk/openadsdk/h/l;

    .line 284
    return-object p0
.end method

.method a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/h/b$a;
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->j:Ljava/lang/Object;

    .line 325
    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/b$a;
    .registers 4

    .prologue
    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawKey == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_e
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->a:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/h/b$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/h/b$a;"
        }
    .end annotation

    .prologue
    .line 304
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->f:Ljava/util/List;

    .line 305
    return-object p0
.end method

.method a()Lcom/bytedance/sdk/openadsdk/h/b;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->d:Lcom/bytedance/sdk/openadsdk/h/a/a;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->e:Lcom/bytedance/sdk/openadsdk/h/b/c;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->a:Ljava/lang/String;

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->c:Lcom/bytedance/sdk/openadsdk/h/l;

    if-nez v0, :cond_22

    .line 331
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 333
    :cond_22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/b;-><init>(Lcom/bytedance/sdk/openadsdk/h/b$a;)V

    return-object v0
.end method

.method b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/b$a;
    .registers 4

    .prologue
    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_e
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$a;->b:Ljava/lang/String;

    .line 276
    return-object p0
.end method
