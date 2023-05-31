.class abstract Lretrofit2/ServiceMethod;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    .local p0, "this":Lretrofit2/ServiceMethod;, "Lretrofit2/ServiceMethod<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;
    .registers 7
    .param p0, "retrofit"    # Lretrofit2/Retrofit;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lretrofit2/ServiceMethod",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-static {p0, p1}, Lretrofit2/RequestFactory;->parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)Lretrofit2/RequestFactory;

    move-result-object v0

    .line 27
    .local v0, "requestFactory":Lretrofit2/RequestFactory;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 28
    .local v1, "returnType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 29
    const-string v2, "Method return type must not include a type variable or wildcard: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p1, v2, v3}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 32
    :cond_1b
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_28

    .line 33
    const-string v2, "Service methods cannot return void."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 36
    :cond_28
    invoke-static {p0, p1, v0}, Lretrofit2/HttpServiceMethod;->parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Lretrofit2/RequestFactory;)Lretrofit2/HttpServiceMethod;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method abstract invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
