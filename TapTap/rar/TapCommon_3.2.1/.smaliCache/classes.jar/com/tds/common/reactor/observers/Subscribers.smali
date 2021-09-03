.class public final Lcom/tds/common/reactor/observers/Subscribers;
.super Ljava/lang/Object;
.source "Subscribers.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 88
    .local p0, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-TT;>;"
    if-eqz p0, :cond_8

    .line 92
    new-instance v0, Lcom/tds/common/reactor/observers/Subscribers$2;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/observers/Subscribers$2;-><init>(Lcom/tds/common/reactor/functions/Action1;)V

    return-object v0

    .line 89
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "-TT;>;",
            "Lcom/tds/common/reactor/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/tds/common/reactor/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-TT;>;"
    .local p1, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    if-eqz p0, :cond_12

    .line 132
    if-eqz p1, :cond_a

    .line 136
    new-instance v0, Lcom/tds/common/reactor/observers/Subscribers$3;

    invoke-direct {v0, p1, p0}, Lcom/tds/common/reactor/observers/Subscribers$3;-><init>(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)V

    return-object v0

    .line 133
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscriber;
    .registers 5
    .param p2, "onComplete"    # Lcom/tds/common/reactor/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "-TT;>;",
            "Lcom/tds/common/reactor/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/tds/common/reactor/functions/Action0;",
            ")",
            "Lcom/tds/common/reactor/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 176
    .local p0, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-TT;>;"
    .local p1, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    if-eqz p0, :cond_1c

    .line 179
    if-eqz p1, :cond_14

    .line 182
    if-eqz p2, :cond_c

    .line 186
    new-instance v0, Lcom/tds/common/reactor/observers/Subscribers$4;

    invoke-direct {v0, p2, p1, p0}, Lcom/tds/common/reactor/observers/Subscribers$4;-><init>(Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)V

    return-object v0

    .line 183
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static empty()Lcom/tds/common/reactor/Subscriber;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/common/reactor/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/tds/common/reactor/observers/Observers;->empty()Lcom/tds/common/reactor/Observer;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/reactor/observers/Subscribers;->from(Lcom/tds/common/reactor/Observer;)Lcom/tds/common/reactor/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/tds/common/reactor/Observer;)Lcom/tds/common/reactor/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "o":Lcom/tds/common/reactor/Observer;, "Lcom/tds/common/reactor/Observer<-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/observers/Subscribers$1;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/observers/Subscribers$1;-><init>(Lcom/tds/common/reactor/Observer;)V

    return-object v0
.end method

.method public static wrap(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 223
    .local p0, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/observers/Subscribers$5;

    invoke-direct {v0, p0, p0}, Lcom/tds/common/reactor/observers/Subscribers$5;-><init>(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Subscriber;)V

    return-object v0
.end method
