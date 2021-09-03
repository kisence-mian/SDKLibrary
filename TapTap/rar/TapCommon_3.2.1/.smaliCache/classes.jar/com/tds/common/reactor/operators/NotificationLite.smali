.class public final Lcom/tds/common/reactor/operators/NotificationLite;
.super Ljava/lang/Object;
.source "NotificationLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;
    }
.end annotation


# static fields
.field private static final ON_COMPLETED_SENTINEL:Ljava/lang/Object;

.field private static final ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/tds/common/reactor/operators/NotificationLite$1;

    invoke-direct {v0}, Lcom/tds/common/reactor/operators/NotificationLite$1;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/tds/common/reactor/operators/NotificationLite$2;

    invoke-direct {v0}, Lcom/tds/common/reactor/operators/NotificationLite$2;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static accept(Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 125
    .local p0, "o":Lcom/tds/common/reactor/Observer;, "Lcom/tds/common/reactor/Observer<-TT;>;"
    sget-object v0, Lcom/tds/common/reactor/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_9

    .line 126
    invoke-interface {p0}, Lcom/tds/common/reactor/Observer;->onCompleted()V

    .line 127
    return v1

    .line 128
    :cond_9
    sget-object v0, Lcom/tds/common/reactor/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_13

    .line 129
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/tds/common/reactor/Observer;->onNext(Ljava/lang/Object;)V

    .line 130
    return v2

    .line 131
    :cond_13
    if-eqz p1, :cond_2a

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;

    if-ne v0, v3, :cond_26

    .line 133
    move-object v0, p1

    check-cast v0, Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;

    iget-object v0, v0, Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    invoke-interface {p0, v0}, Lcom/tds/common/reactor/Observer;->onError(Ljava/lang/Throwable;)V

    .line 134
    return v1

    .line 136
    :cond_26
    invoke-interface {p0, p1}, Lcom/tds/common/reactor/Observer;->onNext(Ljava/lang/Object;)V

    .line 137
    return v2

    .line 139
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lite notification can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static completed()Ljava/lang/Object;
    .registers 1

    .line 93
    sget-object v0, Lcom/tds/common/reactor/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 106
    new-instance v0, Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getError(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "n"    # Ljava/lang/Object;

    .line 208
    move-object v0, p0

    check-cast v0, Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;

    iget-object v0, v0, Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/tds/common/reactor/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move-object v0, p0

    :goto_7
    return-object v0
.end method

.method public static isCompleted(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "n"    # Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/tds/common/reactor/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isError(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "n"    # Ljava/lang/Object;

    .line 162
    instance-of v0, p0, Lcom/tds/common/reactor/operators/NotificationLite$OnErrorSentinel;

    return v0
.end method

.method public static isNext(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "n"    # Ljava/lang/Object;

    .line 180
    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/tds/common/reactor/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0}, Lcom/tds/common/reactor/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "n"    # Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/tds/common/reactor/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static next(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_5

    .line 80
    sget-object v0, Lcom/tds/common/reactor/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    return-object v0

    .line 82
    :cond_5
    return-object p0
.end method
