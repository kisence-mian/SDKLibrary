.class abstract Lcom/anythink/myoffer/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final f:Ljava/lang/String; = "MyOfferBaseUrlLoader"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Z

.field protected c:J

.field protected d:J

.field protected e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/a/a/b;->b:Z

    .line 43
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    .line 58
    new-instance v0, Lcom/anythink/myoffer/a/a/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/a/a/b$1;-><init>(Lcom/anythink/myoffer/a/a/b;)V

    .line 226
    invoke-virtual {p0}, Lcom/anythink/myoffer/a/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 227
    invoke-static {}, Lcom/anythink/myoffer/a/a/a/a;->a()Lcom/anythink/myoffer/a/a/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/anythink/myoffer/a/a/a/a;->a(Lcom/anythink/myoffer/a/a/a/b;I)V

    .line 232
    :goto_13
    return-void

    .line 229
    :cond_14
    invoke-static {}, Lcom/anythink/myoffer/a/a/a/a;->a()Lcom/anythink/myoffer/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/myoffer/a/a/a/a;->a(Lcom/anythink/myoffer/a/a/a/b;)V

    goto :goto_13
.end method

.method private static i()I
    .registers 1

    .prologue
    .line 239
    const v0, 0xea60

    return v0
.end method

.method private static j()I
    .registers 1

    .prologue
    .line 243
    const/16 v0, 0x4e20

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/myoffer/a/a/b;->b:Z

    .line 1058
    new-instance v0, Lcom/anythink/myoffer/a/a/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/a/a/b$1;-><init>(Lcom/anythink/myoffer/a/a/b;)V

    .line 1226
    invoke-virtual {p0}, Lcom/anythink/myoffer/a/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1227
    invoke-static {}, Lcom/anythink/myoffer/a/a/a/a;->a()Lcom/anythink/myoffer/a/a/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/anythink/myoffer/a/a/a/a;->a(Lcom/anythink/myoffer/a/a/a/b;I)V

    :goto_16
    return-void

    .line 1229
    :cond_17
    invoke-static {}, Lcom/anythink/myoffer/a/a/a/a;->a()Lcom/anythink/myoffer/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/myoffer/a/a/a/a;->a(Lcom/anythink/myoffer/a/a/a/b;)V

    goto :goto_16
.end method

.method protected final a(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 6

    .prologue
    .line 254
    const-string v0, "MyOfferBaseUrlLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thread - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, p1}, Lcom/anythink/myoffer/a/a/b;->b(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 256
    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->getDesc()Ljava/lang/String;

    .line 257
    return-void
.end method

.method protected final a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .registers 4

    .prologue
    .line 249
    const-string v0, "10000"

    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/a/a/b;->b(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 250
    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    .line 251
    return-void
.end method

.method protected abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected b(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 5

    .prologue
    .line 270
    const-string v0, "MyOfferBaseUrlLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download failed --> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/anythink/myoffer/a/a/g;->a()Lcom/anythink/myoffer/a/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/myoffer/a/a/g;->a(Ljava/lang/String;Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 272
    return-void
.end method

.method protected abstract c()V
.end method

.method protected d()Z
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method protected final e()V
    .registers 5

    .prologue
    .line 260
    const-string v0, "MyOfferBaseUrlLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thread - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "10000"

    const-string v1, "Load cancel!"

    invoke-static {v0, v1}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/a/a/b;->b(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 262
    return-void
.end method

.method protected f()V
    .registers 5

    .prologue
    .line 265
    const-string v0, "MyOfferBaseUrlLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thread - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/anythink/myoffer/a/a/g;->a()Lcom/anythink/myoffer/a/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/a/a/g;->a(Ljava/lang/String;)V

    .line 267
    return-void
.end method
