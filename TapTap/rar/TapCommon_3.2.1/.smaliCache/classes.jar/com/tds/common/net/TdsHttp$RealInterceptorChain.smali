.class final Lcom/tds/common/net/TdsHttp$RealInterceptorChain;
.super Ljava/lang/Object;
.source "TdsHttp.java"

# interfaces
.implements Lcom/tds/common/net/TdsHttp$Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealInterceptorChain"
.end annotation


# instance fields
.field private final call:Lcom/tds/common/net/TdsHttp$Call;

.field private final connectTimeout:I

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/net/TdsHttp$Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final readTimeout:I

.field private final request:Lcom/tds/common/net/TdsHttp$Request;

.field private final writeTimeout:I


# direct methods
.method constructor <init>(Ljava/util/List;ILcom/tds/common/net/TdsHttp$Request;Lcom/tds/common/net/TdsHttp$Call;III)V
    .registers 8
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/tds/common/net/TdsHttp$Request;
    .param p4, "call"    # Lcom/tds/common/net/TdsHttp$Call;
    .param p5, "connectTimeout"    # I
    .param p6, "readTimeout"    # I
    .param p7, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/net/TdsHttp$Interceptor;",
            ">;I",
            "Lcom/tds/common/net/TdsHttp$Request;",
            "Lcom/tds/common/net/TdsHttp$Call;",
            "III)V"
        }
    .end annotation

    .line 835
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/net/TdsHttp$Interceptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 837
    iput p2, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->index:I

    .line 838
    iput-object p3, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->request:Lcom/tds/common/net/TdsHttp$Request;

    .line 839
    iput-object p4, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->call:Lcom/tds/common/net/TdsHttp$Call;

    .line 840
    iput p5, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->connectTimeout:I

    .line 841
    iput p6, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->readTimeout:I

    .line 842
    iput p7, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->writeTimeout:I

    .line 843
    return-void
.end method


# virtual methods
.method public call()Lcom/tds/common/net/TdsHttp$Call;
    .registers 2

    .line 871
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->call:Lcom/tds/common/net/TdsHttp$Call;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .registers 2

    .line 876
    iget v0, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->connectTimeout:I

    return v0
.end method

.method public proceed(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Response;
    .registers 12
    .param p1, "request"    # Lcom/tds/common/net/TdsHttp$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    iget v0, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->index:I

    iget-object v1, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_66

    .line 854
    new-instance v0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;

    iget-object v3, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v1, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->index:I

    add-int/lit8 v4, v1, 0x1

    iget-object v6, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->call:Lcom/tds/common/net/TdsHttp$Call;

    iget v7, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->connectTimeout:I

    iget v8, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->readTimeout:I

    iget v9, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->writeTimeout:I

    move-object v2, v0

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;-><init>(Ljava/util/List;ILcom/tds/common/net/TdsHttp$Request;Lcom/tds/common/net/TdsHttp$Call;III)V

    .line 855
    .local v0, "next":Lcom/tds/common/net/TdsHttp$RealInterceptorChain;
    iget-object v1, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/net/TdsHttp$Interceptor;

    .line 856
    .local v1, "interceptor":Lcom/tds/common/net/TdsHttp$Interceptor;
    invoke-interface {v1, v0}, Lcom/tds/common/net/TdsHttp$Interceptor;->intercept(Lcom/tds/common/net/TdsHttp$Interceptor$Chain;)Lcom/tds/common/net/TdsHttp$Response;

    move-result-object v2

    .line 858
    .local v2, "response":Lcom/tds/common/net/TdsHttp$Response;
    if-eqz v2, :cond_4d

    .line 862
    iget-object v3, v2, Lcom/tds/common/net/TdsHttp$Response;->body:Lcom/tds/common/net/TdsHttp$ResponseBody;

    if-eqz v3, :cond_34

    .line 866
    return-object v2

    .line 863
    :cond_34
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned a response with no body"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 859
    :cond_4d
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 852
    .end local v0    # "next":Lcom/tds/common/net/TdsHttp$RealInterceptorChain;
    .end local v1    # "interceptor":Lcom/tds/common/net/TdsHttp$Interceptor;
    .end local v2    # "response":Lcom/tds/common/net/TdsHttp$Response;
    :cond_66
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public readTimeoutMillis()I
    .registers 2

    .line 887
    iget v0, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->readTimeout:I

    return v0
.end method

.method public request()Lcom/tds/common/net/TdsHttp$Request;
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->request:Lcom/tds/common/net/TdsHttp$Request;

    return-object v0
.end method

.method public withConnectTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
    .registers 13
    .param p1, "timeout"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 881
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 882
    .local v0, "millis":I
    new-instance v1, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;

    iget-object v3, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->index:I

    iget-object v5, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->request:Lcom/tds/common/net/TdsHttp$Request;

    iget-object v6, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->call:Lcom/tds/common/net/TdsHttp$Call;

    iget v8, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->readTimeout:I

    iget v9, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->writeTimeout:I

    move-object v2, v1

    move v7, v0

    invoke-direct/range {v2 .. v9}, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;-><init>(Ljava/util/List;ILcom/tds/common/net/TdsHttp$Request;Lcom/tds/common/net/TdsHttp$Call;III)V

    return-object v1
.end method

.method public withReadTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
    .registers 13
    .param p1, "timeout"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 892
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 893
    .local v0, "millis":I
    new-instance v1, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;

    iget-object v3, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->index:I

    iget-object v5, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->request:Lcom/tds/common/net/TdsHttp$Request;

    iget-object v6, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->call:Lcom/tds/common/net/TdsHttp$Call;

    iget v7, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->connectTimeout:I

    iget v9, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->writeTimeout:I

    move-object v2, v1

    move v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;-><init>(Ljava/util/List;ILcom/tds/common/net/TdsHttp$Request;Lcom/tds/common/net/TdsHttp$Call;III)V

    return-object v1
.end method

.method public withWriteTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tds/common/net/TdsHttp$Interceptor$Chain;
    .registers 13
    .param p1, "timeout"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 903
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 904
    .local v0, "millis":I
    new-instance v1, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;

    iget-object v3, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->index:I

    iget-object v5, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->request:Lcom/tds/common/net/TdsHttp$Request;

    iget-object v6, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->call:Lcom/tds/common/net/TdsHttp$Call;

    iget v7, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->connectTimeout:I

    iget v8, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->readTimeout:I

    move-object v2, v1

    move v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;-><init>(Ljava/util/List;ILcom/tds/common/net/TdsHttp$Request;Lcom/tds/common/net/TdsHttp$Call;III)V

    return-object v1
.end method

.method public writeTimeoutMillis()I
    .registers 2

    .line 898
    iget v0, p0, Lcom/tds/common/net/TdsHttp$RealInterceptorChain;->writeTimeout:I

    return v0
.end method
