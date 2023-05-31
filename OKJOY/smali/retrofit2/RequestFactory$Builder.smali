.class final Lretrofit2/RequestFactory$Builder;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field private static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field contentType:Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field gotBody:Z

.field gotField:Z

.field gotPart:Z

.field gotPath:Z

.field gotQuery:Z

.field gotQueryMap:Z

.field gotQueryName:Z

.field gotUrl:Z

.field hasBody:Z

.field headers:Lokhttp3/Headers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field httpMethod:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field isFormEncoded:Z

.field isMultipart:Z

.field final method:Ljava/lang/reflect/Method;

.field final methodAnnotations:[Ljava/lang/annotation/Annotation;

.field final parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

.field parameterHandlers:[Lretrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/reflect/Type;

.field relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field relativeUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final retrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 124
    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 125
    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .registers 4
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 153
    iput-object p2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    .line 154
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 155
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestFactory$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    .line 156
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    .line 157
    return-void
.end method

.method private static boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Boolean;

    .line 758
    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    :goto_6
    return-object p0

    .line 751
    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_e

    const-class p0, Ljava/lang/Byte;

    goto :goto_6

    .line 752
    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_15

    const-class p0, Ljava/lang/Character;

    goto :goto_6

    .line 753
    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1c

    const-class p0, Ljava/lang/Double;

    goto :goto_6

    .line 754
    :cond_1c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_23

    const-class p0, Ljava/lang/Float;

    goto :goto_6

    .line 755
    :cond_23
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2a

    const-class p0, Ljava/lang/Integer;

    goto :goto_6

    .line 756
    :cond_2a
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_31

    const-class p0, Ljava/lang/Long;

    goto :goto_6

    .line 757
    :cond_31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Short;

    goto :goto_6
.end method

.method private parseHeaders([Ljava/lang/String;)Lokhttp3/Headers;
    .registers 13
    .param p1, "headers"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 267
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 268
    .local v0, "builder":Lokhttp3/Headers$Builder;
    array-length v8, p1

    move v6, v7

    :goto_9
    if-ge v6, v8, :cond_5e

    aget-object v3, p1, v6

    .line 269
    .local v3, "header":Ljava/lang/String;
    const/16 v9, 0x3a

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 270
    .local v1, "colon":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_20

    if-eqz v1, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v1, v9, :cond_2d

    .line 271
    :cond_20
    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v8, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v3, v9, v7

    invoke-static {v6, v8, v9}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 274
    :cond_2d
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "headerName":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "headerValue":Ljava/lang/String;
    const-string v9, "Content-Type"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 278
    :try_start_43
    invoke-static {v5}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v9

    iput-object v9, p0, Lretrofit2/RequestFactory$Builder;->contentType:Lokhttp3/MediaType;
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_49} :catch_4c

    .line 268
    :goto_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 279
    :catch_4c
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v8, "Malformed content type: %s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v7

    invoke-static {v6, v2, v8, v9}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 283
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5a
    invoke-virtual {v0, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_49

    .line 286
    .end local v1    # "colon":I
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerName":Ljava/lang/String;
    .end local v5    # "headerValue":Ljava/lang/String;
    :cond_5e
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v6

    return-object v6
.end method

.method private parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "hasBody"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 239
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 240
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v4, "Only one HTTP method is allowed. Found: %s and %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    invoke-static {v3, v4, v5}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 243
    :cond_18
    iput-object p1, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    .line 244
    iput-boolean p3, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    .line 246
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 264
    :goto_22
    return-void

    .line 251
    :cond_23
    const/16 v3, 0x3f

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 252
    .local v2, "question":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_53

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_53

    .line 254
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "queryParams":Ljava/lang/String;
    sget-object v3, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 256
    .local v0, "queryParamMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 257
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v4, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 262
    .end local v0    # "queryParamMatcher":Ljava/util/regex/Matcher;
    .end local v1    # "queryParams":Ljava/lang/String;
    :cond_53
    iput-object p2, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    .line 263
    invoke-static {p2}, Lretrofit2/RequestFactory$Builder;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lretrofit2/RequestFactory$Builder;->relativeUrlParamNames:Ljava/util/Set;

    goto :goto_22
.end method

.method private parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V
    .registers 8
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    instance-of v2, p1, Lretrofit2/http/DELETE;

    if-eqz v2, :cond_12

    .line 203
    const-string v2, "DELETE"

    check-cast p1, Lretrofit2/http/DELETE;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    :cond_11
    :goto_11
    return-void

    .line 204
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_12
    instance-of v2, p1, Lretrofit2/http/GET;

    if-eqz v2, :cond_22

    .line 205
    const-string v2, "GET"

    check-cast p1, Lretrofit2/http/GET;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_11

    .line 206
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_22
    instance-of v2, p1, Lretrofit2/http/HEAD;

    if-eqz v2, :cond_32

    .line 207
    const-string v2, "HEAD"

    check-cast p1, Lretrofit2/http/HEAD;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_11

    .line 208
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_32
    instance-of v2, p1, Lretrofit2/http/PATCH;

    if-eqz v2, :cond_42

    .line 209
    const-string v2, "PATCH"

    check-cast p1, Lretrofit2/http/PATCH;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_11

    .line 210
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_42
    instance-of v2, p1, Lretrofit2/http/POST;

    if-eqz v2, :cond_52

    .line 211
    const-string v2, "POST"

    check-cast p1, Lretrofit2/http/POST;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_11

    .line 212
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_52
    instance-of v2, p1, Lretrofit2/http/PUT;

    if-eqz v2, :cond_62

    .line 213
    const-string v2, "PUT"

    check-cast p1, Lretrofit2/http/PUT;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_11

    .line 214
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_62
    instance-of v2, p1, Lretrofit2/http/OPTIONS;

    if-eqz v2, :cond_72

    .line 215
    const-string v2, "OPTIONS"

    check-cast p1, Lretrofit2/http/OPTIONS;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_11

    .line 216
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_72
    instance-of v2, p1, Lretrofit2/http/HTTP;

    if-eqz v2, :cond_89

    move-object v1, p1

    .line 217
    check-cast v1, Lretrofit2/http/HTTP;

    .line 218
    .local v1, "http":Lretrofit2/http/HTTP;
    invoke-interface {v1}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lretrofit2/http/HTTP;->hasBody()Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_11

    .line 219
    .end local v1    # "http":Lretrofit2/http/HTTP;
    :cond_89
    instance-of v2, p1, Lretrofit2/http/Headers;

    if-eqz v2, :cond_a9

    .line 220
    check-cast p1, Lretrofit2/http/Headers;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "headersToParse":[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_a1

    .line 222
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "@Headers annotation is empty."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 224
    :cond_a1
    invoke-direct {p0, v0}, Lretrofit2/RequestFactory$Builder;->parseHeaders([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v2

    iput-object v2, p0, Lretrofit2/RequestFactory$Builder;->headers:Lokhttp3/Headers;

    goto/16 :goto_11

    .line 225
    .end local v0    # "headersToParse":[Ljava/lang/String;
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_a9
    instance-of v2, p1, Lretrofit2/http/Multipart;

    if-eqz v2, :cond_c0

    .line 226
    iget-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v2, :cond_bc

    .line 227
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Only one encoding annotation is allowed."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 229
    :cond_bc
    iput-boolean v5, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    goto/16 :goto_11

    .line 230
    :cond_c0
    instance-of v2, p1, Lretrofit2/http/FormUrlEncoded;

    if-eqz v2, :cond_11

    .line 231
    iget-boolean v2, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v2, :cond_d3

    .line 232
    iget-object v2, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v3, "Only one encoding annotation is allowed."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 234
    :cond_d3
    iput-boolean v5, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    goto/16 :goto_11
.end method

.method private parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .registers 10
    .param p1, "p"    # I
    .param p2, "parameterType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    if-eqz p3, :cond_22

    .line 293
    array-length v5, p3

    move v3, v4

    :goto_6
    if-ge v3, v5, :cond_22

    aget-object v0, p3, v3

    .line 295
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, p1, p2, p3, v0}, Lretrofit2/RequestFactory$Builder;->parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v1

    .line 297
    .local v1, "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    if-nez v1, :cond_13

    .line 293
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 301
    :cond_13
    if-eqz v2, :cond_20

    .line 302
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Multiple Retrofit annotations found, only one allowed."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v5, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 306
    :cond_20
    move-object v2, v1

    goto :goto_10

    .line 310
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :cond_22
    if-nez v2, :cond_2f

    .line 311
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "No Retrofit annotation found."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v5, v4}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 314
    :cond_2f
    return-object v2
.end method

.method private parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .registers 36
    .param p1, "p"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 320
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/Url;

    move/from16 v26, v0

    if-eqz v26, :cond_14c

    .line 321
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    move/from16 v26, v0

    if-eqz v26, :cond_30

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "Multiple @Url method annotations found."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 325
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    move/from16 v26, v0

    if-eqz v26, :cond_55

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Path parameters may not be used with @Url."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 328
    :cond_55
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7a

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "A @Url parameter must not come after a @Query."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 331
    :cond_7a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9f

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "A @Url parameter must not come after a @QueryName."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 334
    :cond_9f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c4

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "A @Url parameter must not come after a @QueryMap."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 337
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f3

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Url cannot be used with @%s URL"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 341
    :cond_f3
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    .line 343
    const-class v26, Lokhttp3/HttpUrl;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_129

    const-class v26, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_129

    const-class v26, Ljava/net/URI;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_129

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v26, v0

    if-eqz v26, :cond_12f

    const-string v26, "android.net.Uri"

    check-cast p2, Ljava/lang/Class;

    .line 346
    .end local p2    # "type":Ljava/lang/reflect/Type;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12f

    .line 347
    :cond_129
    new-instance v26, Lretrofit2/ParameterHandler$RelativeUrl;

    invoke-direct/range {v26 .. v26}, Lretrofit2/ParameterHandler$RelativeUrl;-><init>()V

    .line 715
    .end local p4    # "annotation":Ljava/lang/annotation/Annotation;
    :goto_12e
    return-object v26

    .line 349
    .restart local p4    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 353
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_14c
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/Path;

    move/from16 v26, v0

    if-eqz v26, :cond_250

    .line 354
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 355
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    move/from16 v26, v0

    if-eqz v26, :cond_17c

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "A @Path parameter must not come after a @Query."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 358
    :cond_17c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1a1

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "A @Path parameter must not come after a @QueryName."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 361
    :cond_1a1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1c6

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "A @Path parameter must not come after a @QueryMap."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 364
    :cond_1c6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1eb

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Path parameters may not be used with @Url."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 367
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_21a

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Path can only be used with relative url on @%s"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 371
    :cond_21a
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    move-object/from16 v20, p4

    .line 373
    check-cast v20, Lretrofit2/http/Path;

    .line 374
    .local v20, "path":Lretrofit2/http/Path;
    invoke-interface/range {v20 .. v20}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v15

    .line 375
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lretrofit2/RequestFactory$Builder;->validatePathName(ILjava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 378
    .local v5, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Path;

    invoke-interface/range {v20 .. v20}, Lretrofit2/http/Path;->encoded()Z

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v15, v5, v1}, Lretrofit2/ParameterHandler$Path;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    goto/16 :goto_12e

    .line 380
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v15    # "name":Ljava/lang/String;
    .end local v20    # "path":Lretrofit2/http/Path;
    :cond_250
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/Query;

    move/from16 v26, v0

    if-eqz v26, :cond_332

    .line 381
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    move-object/from16 v21, p4

    .line 382
    check-cast v21, Lretrofit2/http/Query;

    .line 383
    .local v21, "query":Lretrofit2/http/Query;
    invoke-interface/range {v21 .. v21}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v15

    .line 384
    .restart local v15    # "name":Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Lretrofit2/http/Query;->encoded()Z

    move-result v8

    .line 386
    .local v8, "encoded":Z
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    .line 387
    .local v22, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    .line 388
    const-class v26, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_2f0

    .line 389
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v26, v0

    if-nez v26, :cond_2c7

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " must include generic type (e.g., "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 392
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "<String>)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 390
    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_2c7
    move-object/from16 v16, p2

    .line 395
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 396
    .local v16, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 397
    .local v12, "iterableType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 398
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 399
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Query;

    move-object/from16 v0, v26

    invoke-direct {v0, v15, v5, v8}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$Query;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 400
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v12    # "iterableType":Ljava/lang/reflect/Type;
    .end local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_2f0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isArray()Z

    move-result v26

    if-eqz v26, :cond_319

    .line 401
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 402
    .local v4, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 403
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 404
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Query;

    move-object/from16 v0, v26

    invoke-direct {v0, v15, v5, v8}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$Query;->array()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 406
    .end local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_319
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 407
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 408
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Query;

    move-object/from16 v0, v26

    invoke-direct {v0, v15, v5, v8}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    goto/16 :goto_12e

    .line 411
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v8    # "encoded":Z
    .end local v15    # "name":Ljava/lang/String;
    .end local v21    # "query":Lretrofit2/http/Query;
    .end local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_332
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/QueryName;

    move/from16 v26, v0

    if-eqz v26, :cond_410

    .line 412
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    move-object/from16 v21, p4

    .line 413
    check-cast v21, Lretrofit2/http/QueryName;

    .line 414
    .local v21, "query":Lretrofit2/http/QueryName;
    invoke-interface/range {v21 .. v21}, Lretrofit2/http/QueryName;->encoded()Z

    move-result v8

    .line 416
    .restart local v8    # "encoded":Z
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    .line 417
    .restart local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    .line 418
    const-class v26, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_3ce

    .line 419
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v26, v0

    if-nez v26, :cond_3a5

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " must include generic type (e.g., "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 422
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "<String>)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 420
    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_3a5
    move-object/from16 v16, p2

    .line 425
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 426
    .restart local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 427
    .restart local v12    # "iterableType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 428
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 429
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$QueryName;

    move-object/from16 v0, v26

    invoke-direct {v0, v5, v8}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$QueryName;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 430
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v12    # "iterableType":Ljava/lang/reflect/Type;
    .end local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_3ce
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isArray()Z

    move-result v26

    if-eqz v26, :cond_3f7

    .line 431
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 432
    .restart local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 433
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 434
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$QueryName;

    move-object/from16 v0, v26

    invoke-direct {v0, v5, v8}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$QueryName;->array()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 436
    .end local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_3f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 437
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 438
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$QueryName;

    move-object/from16 v0, v26

    invoke-direct {v0, v5, v8}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    goto/16 :goto_12e

    .line 441
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v8    # "encoded":Z
    .end local v21    # "query":Lretrofit2/http/QueryName;
    .end local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_410
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/QueryMap;

    move/from16 v26, v0

    if-eqz v26, :cond_4f0

    .line 442
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 443
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    .line 444
    .restart local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    .line 445
    const-class v26, Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_450

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@QueryMap parameter type must be Map."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 448
    :cond_450
    const-class v26, Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 449
    .local v14, "mapType":Ljava/lang/reflect/Type;
    instance-of v0, v14, Ljava/lang/reflect/ParameterizedType;

    move/from16 v26, v0

    if-nez v26, :cond_47f

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "Map must include generic types (e.g., Map<String, String>)"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_47f
    move-object/from16 v16, v14

    .line 453
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 454
    .restart local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v13

    .line 455
    .local v13, "keyType":Ljava/lang/reflect/Type;
    const-class v26, Ljava/lang/String;

    move-object/from16 v0, v26

    if-eq v0, v13, :cond_4c3

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "@QueryMap keys must be of type String: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 458
    :cond_4c3
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v25

    .line 459
    .local v25, "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 460
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v23

    .line 462
    .local v23, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$QueryMap;

    check-cast p4, Lretrofit2/http/QueryMap;

    .end local p4    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface/range {p4 .. p4}, Lretrofit2/http/QueryMap;->encoded()Z

    move-result v27

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lretrofit2/ParameterHandler$QueryMap;-><init>(Lretrofit2/Converter;Z)V

    goto/16 :goto_12e

    .line 464
    .end local v13    # "keyType":Ljava/lang/reflect/Type;
    .end local v14    # "mapType":Ljava/lang/reflect/Type;
    .end local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v25    # "valueType":Ljava/lang/reflect/Type;
    .restart local p4    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_4f0
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/Header;

    move/from16 v26, v0

    if-eqz v26, :cond_5c6

    .line 465
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    move-object/from16 v10, p4

    .line 466
    check-cast v10, Lretrofit2/http/Header;

    .line 467
    .local v10, "header":Lretrofit2/http/Header;
    invoke-interface {v10}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object v15

    .line 469
    .restart local v15    # "name":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    .line 470
    .restart local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v26, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_584

    .line 471
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v26, v0

    if-nez v26, :cond_55b

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " must include generic type (e.g., "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 474
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "<String>)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 472
    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_55b
    move-object/from16 v16, p2

    .line 477
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 478
    .restart local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 479
    .restart local v12    # "iterableType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 480
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 481
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Header;

    move-object/from16 v0, v26

    invoke-direct {v0, v15, v5}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$Header;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 482
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v12    # "iterableType":Ljava/lang/reflect/Type;
    .end local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_584
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isArray()Z

    move-result v26

    if-eqz v26, :cond_5ad

    .line 483
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 484
    .restart local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 485
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 486
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Header;

    move-object/from16 v0, v26

    invoke-direct {v0, v15, v5}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$Header;->array()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 488
    .end local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_5ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 489
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 490
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Header;

    move-object/from16 v0, v26

    invoke-direct {v0, v15, v5}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    goto/16 :goto_12e

    .line 493
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v10    # "header":Lretrofit2/http/Header;
    .end local v15    # "name":Ljava/lang/String;
    .end local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5c6
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/HeaderMap;

    move/from16 v26, v0

    if-eqz v26, :cond_696

    .line 494
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 495
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    .line 496
    .restart local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v26, Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_5fe

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@HeaderMap parameter type must be Map."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 499
    :cond_5fe
    const-class v26, Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 500
    .restart local v14    # "mapType":Ljava/lang/reflect/Type;
    instance-of v0, v14, Ljava/lang/reflect/ParameterizedType;

    move/from16 v26, v0

    if-nez v26, :cond_62d

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "Map must include generic types (e.g., Map<String, String>)"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_62d
    move-object/from16 v16, v14

    .line 504
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 505
    .restart local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v13

    .line 506
    .restart local v13    # "keyType":Ljava/lang/reflect/Type;
    const-class v26, Ljava/lang/String;

    move-object/from16 v0, v26

    if-eq v0, v13, :cond_671

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "@HeaderMap keys must be of type String: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 509
    :cond_671
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v25

    .line 510
    .restart local v25    # "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 511
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v23

    .line 513
    .restart local v23    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$HeaderMap;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lretrofit2/ParameterHandler$HeaderMap;-><init>(Lretrofit2/Converter;)V

    goto/16 :goto_12e

    .line 515
    .end local v13    # "keyType":Ljava/lang/reflect/Type;
    .end local v14    # "mapType":Ljava/lang/reflect/Type;
    .end local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v25    # "valueType":Ljava/lang/reflect/Type;
    :cond_696
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/Field;

    move/from16 v26, v0

    if-eqz v26, :cond_79d

    .line 516
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    move/from16 v26, v0

    if-nez v26, :cond_6c6

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Field parameters can only be used with form encoding."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_6c6
    move-object/from16 v9, p4

    .line 520
    check-cast v9, Lretrofit2/http/Field;

    .line 521
    .local v9, "field":Lretrofit2/http/Field;
    invoke-interface {v9}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v15

    .line 522
    .restart local v15    # "name":Ljava/lang/String;
    invoke-interface {v9}, Lretrofit2/http/Field;->encoded()Z

    move-result v8

    .line 524
    .restart local v8    # "encoded":Z
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 526
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    .line 527
    .restart local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v26, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_75b

    .line 528
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v26, v0

    if-nez v26, :cond_732

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " must include generic type (e.g., "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 531
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "<String>)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 529
    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_732
    move-object/from16 v16, p2

    .line 534
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 535
    .restart local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 536
    .restart local v12    # "iterableType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 537
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 538
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Field;

    move-object/from16 v0, v26

    invoke-direct {v0, v15, v5, v8}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$Field;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 539
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v12    # "iterableType":Ljava/lang/reflect/Type;
    .end local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_75b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isArray()Z

    move-result v26

    if-eqz v26, :cond_784

    .line 540
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 541
    .restart local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 542
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 543
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Field;

    move-object/from16 v0, v26

    invoke-direct {v0, v15, v5, v8}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$Field;->array()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 545
    .end local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_784
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 546
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 547
    .restart local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Field;

    move-object/from16 v0, v26

    invoke-direct {v0, v15, v5, v8}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    goto/16 :goto_12e

    .line 550
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v8    # "encoded":Z
    .end local v9    # "field":Lretrofit2/http/Field;
    .end local v15    # "name":Ljava/lang/String;
    .end local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_79d
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/FieldMap;

    move/from16 v26, v0

    if-eqz v26, :cond_8a2

    .line 551
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 552
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    move/from16 v26, v0

    if-nez v26, :cond_7cd

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@FieldMap parameters can only be used with form encoding."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 556
    :cond_7cd
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    .line 557
    .restart local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v26, Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_7fa

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@FieldMap parameter type must be Map."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 560
    :cond_7fa
    const-class v26, Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 561
    .restart local v14    # "mapType":Ljava/lang/reflect/Type;
    instance-of v0, v14, Ljava/lang/reflect/ParameterizedType;

    move/from16 v26, v0

    if-nez v26, :cond_829

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "Map must include generic types (e.g., Map<String, String>)"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_829
    move-object/from16 v16, v14

    .line 565
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 566
    .restart local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v13

    .line 567
    .restart local v13    # "keyType":Ljava/lang/reflect/Type;
    const-class v26, Ljava/lang/String;

    move-object/from16 v0, v26

    if-eq v0, v13, :cond_86d

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "@FieldMap keys must be of type String: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 570
    :cond_86d
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v25

    .line 571
    .restart local v25    # "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    .line 572
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v23

    .line 574
    .restart local v23    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 575
    new-instance v26, Lretrofit2/ParameterHandler$FieldMap;

    check-cast p4, Lretrofit2/http/FieldMap;

    .end local p4    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface/range {p4 .. p4}, Lretrofit2/http/FieldMap;->encoded()Z

    move-result v27

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lretrofit2/ParameterHandler$FieldMap;-><init>(Lretrofit2/Converter;Z)V

    goto/16 :goto_12e

    .line 577
    .end local v13    # "keyType":Ljava/lang/reflect/Type;
    .end local v14    # "mapType":Ljava/lang/reflect/Type;
    .end local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v25    # "valueType":Ljava/lang/reflect/Type;
    .restart local p4    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_8a2
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/Part;

    move/from16 v26, v0

    if-eqz v26, :cond_b76

    .line 578
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 579
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    move/from16 v26, v0

    if-nez v26, :cond_8d2

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Part parameters can only be used with multipart encoding."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_8d2
    move-object/from16 v17, p4

    .line 583
    check-cast v17, Lretrofit2/http/Part;

    .line 584
    .local v17, "part":Lretrofit2/http/Part;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 586
    invoke-interface/range {v17 .. v17}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object v19

    .line 587
    .local v19, "partName":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    .line 588
    .restart local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_9e5

    .line 589
    const-class v26, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_97f

    .line 590
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v26, v0

    if-nez v26, :cond_940

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " must include generic type (e.g., "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 593
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "<String>)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 591
    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_940
    move-object/from16 v16, p2

    .line 596
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 597
    .restart local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 598
    .restart local v12    # "iterableType":Ljava/lang/reflect/Type;
    const-class v26, Lokhttp3/MultipartBody$Part;

    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_977

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 602
    :cond_977
    sget-object v26, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$RawPart;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 603
    .end local v12    # "iterableType":Ljava/lang/reflect/Type;
    .end local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_97f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isArray()Z

    move-result v26

    if-eqz v26, :cond_9b8

    .line 604
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 605
    .restart local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v26, Lokhttp3/MultipartBody$Part;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_9b0

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 609
    :cond_9b0
    sget-object v26, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$RawPart;->array()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 610
    .end local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9b8
    const-class v26, Lokhttp3/MultipartBody$Part;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_9c8

    .line 611
    sget-object v26, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    goto/16 :goto_12e

    .line 613
    :cond_9c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 617
    :cond_9e5
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "Content-Disposition"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "form-data; name=\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "Content-Transfer-Encoding"

    aput-object v28, v26, v27

    const/16 v27, 0x3

    .line 619
    invoke-interface/range {v17 .. v17}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 618
    invoke-static/range {v26 .. v26}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v11

    .line 621
    .local v11, "headers":Lokhttp3/Headers;
    const-class v26, Ljava/lang/Iterable;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_ad4

    .line 622
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v26, v0

    if-nez v26, :cond_a7a

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " must include generic type (e.g., "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 625
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "<String>)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 623
    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_a7a
    move-object/from16 v16, p2

    .line 628
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 629
    .restart local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 630
    .restart local v12    # "iterableType":Ljava/lang/reflect/Type;
    const-class v26, Lokhttp3/MultipartBody$Part;

    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_ab1

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 635
    :cond_ab1
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    move-object/from16 v27, v0

    .line 636
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move-object/from16 v2, v27

    invoke-virtual {v0, v12, v1, v2}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 637
    .local v6, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Part;

    move-object/from16 v0, v26

    invoke-direct {v0, v11, v6}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$Part;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 638
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v12    # "iterableType":Ljava/lang/reflect/Type;
    .end local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_ad4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isArray()Z

    move-result v26

    if-eqz v26, :cond_b2c

    .line 639
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 640
    .restart local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v26, Lokhttp3/MultipartBody$Part;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_b09

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 645
    :cond_b09
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    move-object/from16 v27, v0

    .line 646
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move-object/from16 v2, v27

    invoke-virtual {v0, v4, v1, v2}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 647
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Part;

    move-object/from16 v0, v26

    invoke-direct {v0, v11, v6}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual/range {v26 .. v26}, Lretrofit2/ParameterHandler$Part;->array()Lretrofit2/ParameterHandler;

    move-result-object v26

    goto/16 :goto_12e

    .line 648
    .end local v4    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_b2c
    const-class v26, Lokhttp3/MultipartBody$Part;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_b55

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 653
    :cond_b55
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    move-object/from16 v27, v0

    .line 654
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 655
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v26, Lretrofit2/ParameterHandler$Part;

    move-object/from16 v0, v26

    invoke-direct {v0, v11, v6}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    goto/16 :goto_12e

    .line 659
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v11    # "headers":Lokhttp3/Headers;
    .end local v17    # "part":Lretrofit2/http/Part;
    .end local v19    # "partName":Ljava/lang/String;
    .end local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b76
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/PartMap;

    move/from16 v26, v0

    if-eqz v26, :cond_cae

    .line 660
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 661
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    move/from16 v26, v0

    if-nez v26, :cond_ba6

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@PartMap parameters can only be used with multipart encoding."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 665
    :cond_ba6
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 666
    invoke-static/range {p2 .. p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    .line 667
    .restart local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v26, Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_bdb

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@PartMap parameter type must be Map."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 670
    :cond_bdb
    const-class v26, Ljava/util/Map;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 671
    .restart local v14    # "mapType":Ljava/lang/reflect/Type;
    instance-of v0, v14, Ljava/lang/reflect/ParameterizedType;

    move/from16 v26, v0

    if-nez v26, :cond_c0a

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "Map must include generic types (e.g., Map<String, String>)"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    :cond_c0a
    move-object/from16 v16, v14

    .line 675
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 677
    .restart local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v13

    .line 678
    .restart local v13    # "keyType":Ljava/lang/reflect/Type;
    const-class v26, Ljava/lang/String;

    move-object/from16 v0, v26

    if-eq v0, v13, :cond_c4e

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "@PartMap keys must be of type String: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 682
    :cond_c4e
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v25

    .line 683
    .restart local v25    # "valueType":Ljava/lang/reflect/Type;
    const-class v26, Lokhttp3/MultipartBody$Part;

    invoke-static/range {v25 .. v25}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_c81

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 688
    :cond_c81
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    move-object/from16 v27, v0

    .line 689
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v24

    .local v24, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    move-object/from16 v18, p4

    .line 691
    check-cast v18, Lretrofit2/http/PartMap;

    .line 692
    .local v18, "partMap":Lretrofit2/http/PartMap;
    new-instance v26, Lretrofit2/ParameterHandler$PartMap;

    invoke-interface/range {v18 .. v18}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lretrofit2/ParameterHandler$PartMap;-><init>(Lretrofit2/Converter;Ljava/lang/String;)V

    goto/16 :goto_12e

    .line 694
    .end local v13    # "keyType":Ljava/lang/reflect/Type;
    .end local v14    # "mapType":Ljava/lang/reflect/Type;
    .end local v16    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v18    # "partMap":Lretrofit2/http/PartMap;
    .end local v22    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v25    # "valueType":Ljava/lang/reflect/Type;
    :cond_cae
    move-object/from16 v0, p4

    instance-of v0, v0, Lretrofit2/http/Body;

    move/from16 v26, v0

    if-eqz v26, :cond_d56

    .line 695
    invoke-direct/range {p0 .. p2}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 696
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    move/from16 v26, v0

    if-nez v26, :cond_cc9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    move/from16 v26, v0

    if-eqz v26, :cond_ce6

    .line 697
    :cond_cc9
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "@Body parameters cannot be used with form or multi-part encoding."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 700
    :cond_ce6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d0b

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "Multiple @Body method annotations found."

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 706
    :cond_d0b
    :try_start_d0b
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    :try_end_d22
    .catch Ljava/lang/RuntimeException; {:try_start_d0b .. :try_end_d22} :catch_d34

    move-result-object v6

    .line 711
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    .line 712
    new-instance v26, Lretrofit2/ParameterHandler$Body;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Lretrofit2/ParameterHandler$Body;-><init>(Lretrofit2/Converter;)V

    goto/16 :goto_12e

    .line 707
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :catch_d34
    move-exception v7

    .line 709
    .local v7, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    move-object/from16 v26, v0

    const-string v27, "Unable to create @Body converter for %s"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object p2, v28, v29

    move-object/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v7, v1, v2, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 715
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_d56
    const/16 v26, 0x0

    goto/16 :goto_12e
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    sget-object v2, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 742
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 743
    .local v1, "patterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_b
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 744
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 746
    :cond_1a
    return-object v1
.end method

.method private validatePathName(ILjava/lang/String;)V
    .registers 9
    .param p1, "p"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 726
    sget-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_24

    .line 727
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "@Path parameter name must match %s. Found: %s"

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 728
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    .line 727
    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 731
    :cond_24
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 732
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "URL \"%s\" does not contain \"{%s}\"."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 734
    :cond_3d
    return-void
.end method

.method private validateResolvableType(ILjava/lang/reflect/Type;)V
    .registers 7
    .param p1, "p"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 719
    invoke-static {p2}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 720
    iget-object v0, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v1, "Parameter type must not include a type variable or wildcard: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, p1, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 723
    :cond_15
    return-void
.end method


# virtual methods
.method build()Lretrofit2/RequestFactory;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v5, p0, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    array-length v6, v5

    move v3, v4

    :goto_5
    if-ge v3, v6, :cond_f

    aget-object v0, v5, v3

    .line 161
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, v0}, Lretrofit2/RequestFactory$Builder;->parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 164
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_f
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    if-nez v3, :cond_1e

    .line 165
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 168
    :cond_1e
    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    if-nez v3, :cond_40

    .line 169
    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v3, :cond_31

    .line 170
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 173
    :cond_31
    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v3, :cond_40

    .line 174
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 179
    :cond_40
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    array-length v2, v3

    .line 180
    .local v2, "parameterCount":I
    new-array v3, v2, [Lretrofit2/ParameterHandler;

    iput-object v3, p0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    .line 181
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_48
    if-ge v1, v2, :cond_5d

    .line 182
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    iget-object v5, p0, Lretrofit2/RequestFactory$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    aget-object v5, v5, v1

    iget-object v6, p0, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    aget-object v6, v6, v1

    invoke-direct {p0, v1, v5, v6}, Lretrofit2/RequestFactory$Builder;->parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v5

    aput-object v5, v3, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 185
    :cond_5d
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v3, :cond_75

    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-nez v3, :cond_75

    .line 186
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Missing either @%s URL or @Url parameter."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-static {v3, v5, v6}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 188
    :cond_75
    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v3, :cond_90

    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v3, :cond_90

    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    if-nez v3, :cond_90

    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    if-eqz v3, :cond_90

    .line 189
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Non-body HTTP method cannot contain @Body."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 191
    :cond_90
    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v3, :cond_a3

    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotField:Z

    if-nez v3, :cond_a3

    .line 192
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Form-encoded method must contain at least one @Field."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 194
    :cond_a3
    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v3, :cond_b6

    iget-boolean v3, p0, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    if-nez v3, :cond_b6

    .line 195
    iget-object v3, p0, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    const-string v5, "Multipart method must contain at least one @Part."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 198
    :cond_b6
    new-instance v3, Lretrofit2/RequestFactory;

    invoke-direct {v3, p0}, Lretrofit2/RequestFactory;-><init>(Lretrofit2/RequestFactory$Builder;)V

    return-object v3
.end method
