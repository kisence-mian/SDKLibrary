.class public final Lcom/tds/common/reactor/observers/Observers;
.super Ljava/lang/Object;
.source "Observers.java"


# static fields
.field private static final EMPTY:Lcom/tds/common/reactor/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/tds/common/reactor/observers/Observers$1;

    invoke-direct {v0}, Lcom/tds/common/reactor/observers/Observers$1;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/observers/Observers;->EMPTY:Lcom/tds/common/reactor/Observer;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Observer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Observer<",
            "TT;>;"
        }
    .end annotation

    .line 77
    .local p0, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-TT;>;"
    if-eqz p0, :cond_8

    .line 81
    new-instance v0, Lcom/tds/common/reactor/observers/Observers$2;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/observers/Observers$2;-><init>(Lcom/tds/common/reactor/functions/Action1;)V

    return-object v0

    .line 78
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Observer;
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
            "Lcom/tds/common/reactor/Observer<",
            "TT;>;"
        }
    .end annotation

    .line 118
    .local p0, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-TT;>;"
    .local p1, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    if-eqz p0, :cond_12

    .line 121
    if-eqz p1, :cond_a

    .line 125
    new-instance v0, Lcom/tds/common/reactor/observers/Observers$3;

    invoke-direct {v0, p1, p0}, Lcom/tds/common/reactor/observers/Observers$3;-><init>(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)V

    return-object v0

    .line 122
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Observer;
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
            "Lcom/tds/common/reactor/Observer<",
            "TT;>;"
        }
    .end annotation

    .line 165
    .local p0, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-TT;>;"
    .local p1, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    if-eqz p0, :cond_1c

    .line 168
    if-eqz p1, :cond_14

    .line 171
    if-eqz p2, :cond_c

    .line 175
    new-instance v0, Lcom/tds/common/reactor/observers/Observers$4;

    invoke-direct {v0, p2, p1, p0}, Lcom/tds/common/reactor/observers/Observers$4;-><init>(Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)V

    return-object v0

    .line 172
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static empty()Lcom/tds/common/reactor/Observer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/common/reactor/Observer<",
            "TT;>;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/tds/common/reactor/observers/Observers;->EMPTY:Lcom/tds/common/reactor/Observer;

    return-object v0
.end method
