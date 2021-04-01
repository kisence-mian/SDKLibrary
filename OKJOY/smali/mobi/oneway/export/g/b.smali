.class public Lmobi/oneway/export/g/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lmobi/oneway/export/g/f;

.field private b:I

.field private c:[B

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Throwable;

.field private f:J

.field private g:Ljava/io/File;


# direct methods
.method constructor <init>(Lmobi/oneway/export/g/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmobi/oneway/export/g/b;->a(Lmobi/oneway/export/g/f;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lmobi/oneway/export/g/b;->h()Lmobi/oneway/export/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/g/f;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lmobi/oneway/export/g/b;->d:Ljava/util/Map;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lmobi/oneway/export/g/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_17
    move-object v0, v1

    goto :goto_6

    :cond_19
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6
.end method

.method public a(Ljava/lang/Throwable;)Lmobi/oneway/export/g/b;
    .registers 2

    iput-object p1, p0, Lmobi/oneway/export/g/b;->e:Ljava/lang/Throwable;

    return-object p0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lmobi/oneway/export/g/b;->b:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lmobi/oneway/export/g/b;->f:J

    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lmobi/oneway/export/g/b;->g:Ljava/io/File;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lmobi/oneway/export/g/b;->d:Ljava/util/Map;

    return-void
.end method

.method public a(Lmobi/oneway/export/g/f;)V
    .registers 2

    iput-object p1, p0, Lmobi/oneway/export/g/b;->a:Lmobi/oneway/export/g/f;

    return-void
.end method

.method public a([B)V
    .registers 2

    iput-object p1, p0, Lmobi/oneway/export/g/b;->c:[B

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/g/b;->e:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()[B
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/g/b;->c:[B

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmobi/oneway/export/g/b;->c:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lmobi/oneway/export/g/b;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_5
.end method

.method public e()Lorg/json/JSONObject;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lmobi/oneway/export/g/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public f()J
    .registers 3

    iget-object v0, p0, Lmobi/oneway/export/g/b;->c:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmobi/oneway/export/g/b;->c:[B

    array-length v0, v0

    int-to-long v0, v0

    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lmobi/oneway/export/g/b;->g:Ljava/io/File;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmobi/oneway/export/g/b;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_8

    :cond_14
    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method public g()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/g/b;->g:Ljava/io/File;

    return-object v0
.end method

.method public h()Lmobi/oneway/export/g/f;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/g/b;->a:Lmobi/oneway/export/g/f;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lmobi/oneway/export/g/b;->d:Ljava/util/Map;

    return-object v0
.end method

.method public j()J
    .registers 3

    iget-wide v0, p0, Lmobi/oneway/export/g/b;->f:J

    return-wide v0
.end method

.method public k()Z
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/g/b;->a:Lmobi/oneway/export/g/f;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmobi/oneway/export/g/b;->a:Lmobi/oneway/export/g/f;

    invoke-virtual {v0}, Lmobi/oneway/export/g/f;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lmobi/oneway/export/g/b;->b:I

    return v0
.end method

.method public m()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/g/b;->e:Ljava/lang/Throwable;

    return-object v0
.end method
