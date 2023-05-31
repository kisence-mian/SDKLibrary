.class public Lcom/tds/common/isc/Method;
.super Ljava/lang/Object;
.source "Method.java"


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 2
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/tds/common/isc/Method;->method:Ljava/lang/reflect/Method;

    .line 8
    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/isc/IscException;
        }
    .end annotation

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/isc/Method;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-object v0

    .line 13
    :catchall_8
    move-exception v0

    .line 14
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/tds/common/isc/IscException;

    invoke-direct {v1, v0}, Lcom/tds/common/isc/IscException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
