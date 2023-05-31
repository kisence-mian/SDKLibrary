.class public final Lcom/JoyFramework/remote/b/b/a;
.super Lretrofit2/Converter$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/Converter$Factory;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/gson/Gson;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/remote/b/b/a;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private constructor <init>(Lcom/google/gson/Gson;)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/JoyFramework/remote/b/b/a;-><init>()V

    .line 37
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_d
    iput-object p1, p0, Lcom/JoyFramework/remote/b/b/a;->a:Lcom/google/gson/Gson;

    .line 39
    return-void
.end method

.method public static a()Lcom/JoyFramework/remote/b/b/a;
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lcom/JoyFramework/remote/b/b/a;->a(Lcom/google/gson/Gson;)Lcom/JoyFramework/remote/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/gson/Gson;)Lcom/JoyFramework/remote/b/b/a;
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcom/JoyFramework/remote/b/b/a;

    invoke-direct {v0, p0}, Lcom/JoyFramework/remote/b/b/a;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 6
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

    .prologue
    .line 55
    new-instance v0, Lcom/JoyFramework/remote/b/b/b;

    invoke-direct {v0}, Lcom/JoyFramework/remote/b/b/b;-><init>()V

    return-object v0
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 7
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

    .prologue
    .line 44
    iget-object v0, p0, Lcom/JoyFramework/remote/b/b/a;->a:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/JoyFramework/remote/b/b/c;

    iget-object v2, p0, Lcom/JoyFramework/remote/b/b/a;->a:Lcom/google/gson/Gson;

    invoke-direct {v1, v2, v0}, Lcom/JoyFramework/remote/b/b/c;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object v1
.end method

.method public stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lretrofit2/Converter$Factory;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object v0

    return-object v0
.end method
