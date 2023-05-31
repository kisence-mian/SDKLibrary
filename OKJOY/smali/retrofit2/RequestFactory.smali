.class final Lretrofit2/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/RequestFactory$Builder;
    }
.end annotation


# instance fields
.field private final baseUrl:Lokhttp3/HttpUrl;

.field private final contentType:Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final hasBody:Z

.field private final headers:Lokhttp3/Headers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final httpMethod:Ljava/lang/String;

.field private final isFormEncoded:Z

.field private final isMultipart:Z

.field private final method:Ljava/lang/reflect/Method;

.field private final parameterHandlers:[Lretrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation
.end field

.field private final relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory$Builder;)V
    .registers 3
    .param p1, "builder"    # Lretrofit2/RequestFactory$Builder;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lretrofit2/RequestFactory;->method:Ljava/lang/reflect/Method;

    .line 81
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v0, v0, Lretrofit2/Retrofit;->baseUrl:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lretrofit2/RequestFactory;->baseUrl:Lokhttp3/HttpUrl;

    .line 82
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/RequestFactory;->httpMethod:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/RequestFactory;->relativeUrl:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->headers:Lokhttp3/Headers;

    iput-object v0, p0, Lretrofit2/RequestFactory;->headers:Lokhttp3/Headers;

    .line 85
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->contentType:Lokhttp3/MediaType;

    iput-object v0, p0, Lretrofit2/RequestFactory;->contentType:Lokhttp3/MediaType;

    .line 86
    iget-boolean v0, p1, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    iput-boolean v0, p0, Lretrofit2/RequestFactory;->hasBody:Z

    .line 87
    iget-boolean v0, p1, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    iput-boolean v0, p0, Lretrofit2/RequestFactory;->isFormEncoded:Z

    .line 88
    iget-boolean v0, p1, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    iput-boolean v0, p0, Lretrofit2/RequestFactory;->isMultipart:Z

    .line 89
    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    iput-object v0, p0, Lretrofit2/RequestFactory;->parameterHandlers:[Lretrofit2/ParameterHandler;

    .line 90
    return-void
.end method

.method static parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)Lretrofit2/RequestFactory;
    .registers 3
    .param p0, "retrofit"    # Lretrofit2/Retrofit;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 65
    new-instance v0, Lretrofit2/RequestFactory$Builder;

    invoke-direct {v0, p0, p1}, Lretrofit2/RequestFactory$Builder;-><init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Lretrofit2/RequestFactory$Builder;->build()Lretrofit2/RequestFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method create([Ljava/lang/Object;)Lokhttp3/Request;
    .registers 15
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v11, p0, Lretrofit2/RequestFactory;->parameterHandlers:[Lretrofit2/ParameterHandler;

    .line 96
    .local v11, "handlers":[Lretrofit2/ParameterHandler;, "[Lretrofit2/ParameterHandler<Ljava/lang/Object;>;"
    array-length v9, p1

    .line 97
    .local v9, "argumentCount":I
    array-length v1, v11

    if-eq v9, v1, :cond_30

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") doesn\'t match expected count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_30
    new-instance v0, Lretrofit2/RequestBuilder;

    iget-object v1, p0, Lretrofit2/RequestFactory;->httpMethod:Ljava/lang/String;

    iget-object v2, p0, Lretrofit2/RequestFactory;->baseUrl:Lokhttp3/HttpUrl;

    iget-object v3, p0, Lretrofit2/RequestFactory;->relativeUrl:Ljava/lang/String;

    iget-object v4, p0, Lretrofit2/RequestFactory;->headers:Lokhttp3/Headers;

    iget-object v5, p0, Lretrofit2/RequestFactory;->contentType:Lokhttp3/MediaType;

    iget-boolean v6, p0, Lretrofit2/RequestFactory;->hasBody:Z

    iget-boolean v7, p0, Lretrofit2/RequestFactory;->isFormEncoded:Z

    iget-boolean v8, p0, Lretrofit2/RequestFactory;->isMultipart:Z

    invoke-direct/range {v0 .. v8}, Lretrofit2/RequestBuilder;-><init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V

    .line 105
    .local v0, "requestBuilder":Lretrofit2/RequestBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v10, "argumentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .local v12, "p":I
    :goto_4b
    if-ge v12, v9, :cond_5c

    .line 107
    aget-object v1, p1, v12

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    aget-object v1, v11, v12

    aget-object v2, p1, v12

    invoke-virtual {v1, v0, v2}, Lretrofit2/ParameterHandler;->apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V

    .line 106
    add-int/lit8 v12, v12, 0x1

    goto :goto_4b

    .line 111
    :cond_5c
    invoke-virtual {v0}, Lretrofit2/RequestBuilder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-class v2, Lretrofit2/Invocation;

    new-instance v3, Lretrofit2/Invocation;

    iget-object v4, p0, Lretrofit2/RequestFactory;->method:Ljava/lang/reflect/Method;

    invoke-direct {v3, v4, v10}, Lretrofit2/Invocation;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    .line 112
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 111
    return-object v1
.end method
