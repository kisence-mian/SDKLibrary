.class Lretrofit2/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/Platform$Android;,
        Lretrofit2/Platform$Java8;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lretrofit2/Platform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    invoke-static {}, Lretrofit2/Platform;->findPlatform()Lretrofit2/Platform;

    move-result-object v0

    sput-object v0, Lretrofit2/Platform;->PLATFORM:Lretrofit2/Platform;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPlatform()Lretrofit2/Platform;
    .registers 1

    .prologue
    .line 45
    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_10

    .line 47
    new-instance v0, Lretrofit2/Platform$Android;

    invoke-direct {v0}, Lretrofit2/Platform$Android;-><init>()V
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    .line 56
    :goto_e
    return-object v0

    .line 49
    :catch_f
    move-exception v0

    .line 52
    :cond_10
    :try_start_10
    const-string v0, "java.util.Optional"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 53
    new-instance v0, Lretrofit2/Platform$Java8;

    invoke-direct {v0}, Lretrofit2/Platform$Java8;-><init>()V
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_e

    .line 54
    :catch_1b
    move-exception v0

    .line 56
    new-instance v0, Lretrofit2/Platform;

    invoke-direct {v0}, Lretrofit2/Platform;-><init>()V

    goto :goto_e
.end method

.method static get()Lretrofit2/Platform;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lretrofit2/Platform;->PLATFORM:Lretrofit2/Platform;

    return-object v0
.end method


# virtual methods
.method defaultCallAdapterFactories(Ljava/util/concurrent/Executor;)Ljava/util/List;
    .registers 3
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    if-eqz p1, :cond_c

    .line 66
    new-instance v0, Lretrofit2/ExecutorCallAdapterFactory;

    invoke-direct {v0, p1}, Lretrofit2/ExecutorCallAdapterFactory;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 68
    :goto_b
    return-object v0

    :cond_c
    sget-object v0, Lretrofit2/DefaultCallAdapterFactory;->INSTANCE:Lretrofit2/CallAdapter$Factory;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_b
.end method

.method defaultCallAdapterFactoriesSize()I
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method defaultConverterFactories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method defaultConverterFactoriesSize()I
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method varargs invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "args"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method isDefaultMethod(Ljava/lang/reflect/Method;)Z
    .registers 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
