.class final Lcom/sigmob/wire/okio/Timeout$1;
.super Lcom/sigmob/wire/okio/Timeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/okio/Timeout;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/okio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lcom/sigmob/wire/okio/Timeout;
    .registers 3

    return-object p0
.end method

.method public throwIfReached()V
    .registers 1

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/sigmob/wire/okio/Timeout;
    .registers 4

    return-object p0
.end method
