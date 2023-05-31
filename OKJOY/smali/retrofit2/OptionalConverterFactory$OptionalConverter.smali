.class final Lretrofit2/OptionalConverterFactory$OptionalConverter;
.super Ljava/lang/Object;
.source "OptionalConverterFactory.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/OptionalConverterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OptionalConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter",
        "<",
        "Lokhttp3/ResponseBody;",
        "Ljava/util/Optional",
        "<TT;>;>;"
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# instance fields
.field final delegate:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Converter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lretrofit2/OptionalConverterFactory$OptionalConverter;, "Lretrofit2/OptionalConverterFactory$OptionalConverter<TT;>;"
    .local p1, "delegate":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lretrofit2/OptionalConverterFactory$OptionalConverter;->delegate:Lretrofit2/Converter;

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lretrofit2/OptionalConverterFactory$OptionalConverter;, "Lretrofit2/OptionalConverterFactory$OptionalConverter<TT;>;"
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit2/OptionalConverterFactory$OptionalConverter;->convert(Lokhttp3/ResponseBody;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public convert(Lokhttp3/ResponseBody;)Ljava/util/Optional;
    .registers 3
    .param p1, "value"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lretrofit2/OptionalConverterFactory$OptionalConverter;, "Lretrofit2/OptionalConverterFactory$OptionalConverter<TT;>;"
    iget-object v0, p0, Lretrofit2/OptionalConverterFactory$OptionalConverter;->delegate:Lretrofit2/Converter;

    invoke-interface {v0, p1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
