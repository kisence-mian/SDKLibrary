.class public interface abstract Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp$Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract call()Lcom/tds/common/net/TdsHttp$Call;
.end method

.method public abstract connectTimeoutMillis()I
.end method

.method public abstract proceed(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readTimeoutMillis()I
.end method

.method public abstract request()Lcom/tds/common/net/TdsHttp$Request;
.end method

.method public abstract withConnectTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
.end method

.method public abstract withReadTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
.end method

.method public abstract withWriteTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
.end method

.method public abstract writeTimeoutMillis()I
.end method
