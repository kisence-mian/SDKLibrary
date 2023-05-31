.class final Lretrofit2/CompletableFutureCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "CompletableFutureCallAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;,
        Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# static fields
.field static final INSTANCE:Lretrofit2/CallAdapter$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lretrofit2/CompletableFutureCallAdapterFactory;

    invoke-direct {v0}, Lretrofit2/CompletableFutureCallAdapterFactory;-><init>()V

    sput-object v0, Lretrofit2/CompletableFutureCallAdapterFactory;->INSTANCE:Lretrofit2/CallAdapter$Factory;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .registers 9
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-static {p1}, Lretrofit2/CompletableFutureCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/concurrent/CompletableFuture;

    if-eq v2, v3, :cond_b

    .line 32
    const/4 v2, 0x0

    .line 51
    .end local p1    # "returnType":Ljava/lang/reflect/Type;
    :goto_a
    return-object v2

    .line 34
    .restart local p1    # "returnType":Ljava/lang/reflect/Type;
    :cond_b
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_17

    .line 35
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_17
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "returnType":Ljava/lang/reflect/Type;
    invoke-static {v4, p1}, Lretrofit2/CompletableFutureCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 40
    .local v0, "innerType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lretrofit2/CompletableFutureCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lretrofit2/Response;

    if-eq v2, v3, :cond_2b

    .line 42
    new-instance v2, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;

    invoke-direct {v2, v0}, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_a

    .line 46
    :cond_2b
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_37

    .line 47
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_37
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "innerType":Ljava/lang/reflect/Type;
    invoke-static {v4, v0}, Lretrofit2/CompletableFutureCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 51
    .local v1, "responseType":Ljava/lang/reflect/Type;
    new-instance v2, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;

    invoke-direct {v2, v1}, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_a
.end method
