.class public abstract Lcom/tapjoy/internal/bu;
.super Lcom/tapjoy/internal/bv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tapjoy/internal/bv<",
        "TResult;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/tapjoy/internal/bv;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/bi;",
            ")TResult;"
        }
    .end annotation
.end method

.method public final a(Ljava/net/URI;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/io/InputStream;",
            ")TResult;"
        }
    .end annotation

    .line 27
    invoke-static {p2}, Lcom/tapjoy/internal/bi;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bi;

    move-result-object p2

    .line 28
    nop

    .line 1011
    const-string v0, "BASE_URI"

    invoke-interface {p2, v0, p1}, Lcom/tapjoy/internal/bf;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const/4 p1, 0x0

    .line 31
    nop

    .line 32
    nop

    .line 33
    :try_start_d
    invoke-virtual {p2}, Lcom/tapjoy/internal/bi;->h()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 34
    :goto_12
    invoke-virtual {p2}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 35
    invoke-virtual {p2}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, "status"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 37
    invoke-virtual {p2}, Lcom/tapjoy/internal/bi;->r()I

    move-result p1

    goto :goto_12

    .line 38
    :cond_29
    const-string v3, "message"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 39
    invoke-virtual {p2}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 40
    :cond_36
    const-string v3, "data"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 41
    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/bu;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_12

    .line 43
    :cond_43
    invoke-virtual {p2}, Lcom/tapjoy/internal/bi;->s()V

    .line 45
    goto :goto_12

    .line 46
    :cond_47
    invoke-virtual {p2}, Lcom/tapjoy/internal/bi;->i()V
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_59

    .line 47
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_53

    .line 50
    nop

    .line 52
    invoke-virtual {p2}, Lcom/tapjoy/internal/bi;->close()V

    .line 50
    return-object v0

    .line 48
    :cond_53
    :try_start_53
    new-instance v0, Lcom/tapjoy/internal/bw;

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/bw;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_59

    .line 52
    :catchall_59
    move-exception p1

    invoke-virtual {p2}, Lcom/tapjoy/internal/bi;->close()V

    .line 53
    goto :goto_5f

    :goto_5e
    throw p1

    :goto_5f
    goto :goto_5e
.end method

.method public final a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object v0
.end method
