.class final Lretrofit2/OptionalConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "OptionalConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/OptionalConverterFactory$OptionalConverter;
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# static fields
.field static final INSTANCE:Lretrofit2/Converter$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lretrofit2/OptionalConverterFactory;

    invoke-direct {v0}, Lretrofit2/OptionalConverterFactory;-><init>()V

    sput-object v0, Lretrofit2/OptionalConverterFactory;->INSTANCE:Lretrofit2/Converter$Factory;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
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
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lretrofit2/OptionalConverterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/Optional;

    if-eq v2, v3, :cond_a

    .line 34
    const/4 v2, 0x0

    .line 40
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :goto_9
    return-object v2

    .line 37
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_a
    const/4 v2, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {v2, p1}, Lretrofit2/OptionalConverterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 39
    .local v1, "innerType":Ljava/lang/reflect/Type;
    invoke-virtual {p3, v1, p2}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 40
    .local v0, "delegate":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;Ljava/lang/Object;>;"
    new-instance v2, Lretrofit2/OptionalConverterFactory$OptionalConverter;

    invoke-direct {v2, v0}, Lretrofit2/OptionalConverterFactory$OptionalConverter;-><init>(Lretrofit2/Converter;)V

    goto :goto_9
.end method
