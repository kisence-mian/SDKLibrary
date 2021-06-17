.class public final Lcom/tapjoy/internal/jt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2

    .line 155
    invoke-static {p0}, Lcom/tapjoy/internal/jr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/tapjoy/internal/jt;->b(Ljava/lang/Throwable;)V

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .registers 3
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)V^TX;"
        }
    .end annotation

    .line 59
    if-eqz p0, :cond_10

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 60
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 62
    :cond_10
    :goto_10
    return-void
.end method

.method private static b(Ljava/lang/Throwable;)V
    .registers 2
    .param p0    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Lcom/tapjoy/internal/jt;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 80
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Lcom/tapjoy/internal/jt;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 81
    return-void
.end method
