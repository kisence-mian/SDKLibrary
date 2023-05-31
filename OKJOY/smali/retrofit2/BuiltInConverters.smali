.class final Lretrofit2/BuiltInConverters;
.super Lretrofit2/Converter$Factory;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/BuiltInConverters$ToStringConverter;,
        Lretrofit2/BuiltInConverters$BufferingResponseBodyConverter;,
        Lretrofit2/BuiltInConverters$StreamingResponseBodyConverter;,
        Lretrofit2/BuiltInConverters$RequestBodyConverter;,
        Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;,
        Lretrofit2/BuiltInConverters$VoidResponseBodyConverter;
    }
.end annotation


# instance fields
.field private checkForKotlinUnit:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/BuiltInConverters;->checkForKotlinUnit:Z

    return-void
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 7
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "parameterAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "methodAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    const-class v0, Lokhttp3/RequestBody;

    invoke-static {p1}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 56
    sget-object v0, Lretrofit2/BuiltInConverters$RequestBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$RequestBodyConverter;

    .line 58
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 6
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
    const-class v1, Lokhttp3/ResponseBody;

    if-ne p1, v1, :cond_12

    .line 34
    const-class v1, Lretrofit2/http/Streaming;

    invoke-static {p2, v1}, Lretrofit2/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 35
    sget-object v1, Lretrofit2/BuiltInConverters$StreamingResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$StreamingResponseBodyConverter;

    .line 50
    :goto_e
    return-object v1

    .line 36
    :cond_f
    sget-object v1, Lretrofit2/BuiltInConverters$BufferingResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$BufferingResponseBodyConverter;

    goto :goto_e

    .line 38
    :cond_12
    const-class v1, Ljava/lang/Void;

    if-ne p1, v1, :cond_19

    .line 39
    sget-object v1, Lretrofit2/BuiltInConverters$VoidResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$VoidResponseBodyConverter;

    goto :goto_e

    .line 41
    :cond_19
    iget-boolean v1, p0, Lretrofit2/BuiltInConverters;->checkForKotlinUnit:Z

    if-eqz v1, :cond_28

    .line 43
    :try_start_1d
    const-class v1, Lkotlin/Unit;

    if-ne p1, v1, :cond_28

    .line 44
    sget-object v1, Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;
    :try_end_23
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_e

    .line 46
    :catch_24
    move-exception v0

    .line 47
    .local v0, "ignored":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lretrofit2/BuiltInConverters;->checkForKotlinUnit:Z

    .line 50
    .end local v0    # "ignored":Ljava/lang/NoClassDefFoundError;
    :cond_28
    const/4 v1, 0x0

    goto :goto_e
.end method
