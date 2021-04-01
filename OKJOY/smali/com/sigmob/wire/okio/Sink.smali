.class public interface abstract Lcom/sigmob/wire/okio/Sink;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public abstract timeout()Lcom/sigmob/wire/okio/Timeout;
.end method

.method public abstract write(Lcom/sigmob/wire/okio/Buffer;J)V
.end method
