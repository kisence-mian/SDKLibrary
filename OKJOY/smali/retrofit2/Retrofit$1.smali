.class Lretrofit2/Retrofit$1;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final emptyArgs:[Ljava/lang/Object;

.field private final platform:Lretrofit2/Platform;

.field final synthetic this$0:Lretrofit2/Retrofit;

.field final synthetic val$service:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/Class;)V
    .registers 4
    .param p1, "this$0"    # Lretrofit2/Retrofit;

    .prologue
    .line 134
    iput-object p1, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    iput-object p2, p0, Lretrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    .line 136
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lretrofit2/Retrofit$1;->emptyArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    .line 142
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .end local p3    # "args":[Ljava/lang/Object;
    :goto_c
    return-object v0

    .line 144
    .restart local p3    # "args":[Ljava/lang/Object;
    :cond_d
    iget-object v0, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    invoke-virtual {v0, p2}, Lretrofit2/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 145
    iget-object v0, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    iget-object v1, p0, Lretrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1, p1, p3}, Lretrofit2/Platform;->invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .line 147
    :cond_1e
    iget-object v0, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit;->loadServiceMethod(Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;

    move-result-object v0

    if-eqz p3, :cond_2b

    .end local p3    # "args":[Ljava/lang/Object;
    :goto_26
    invoke-virtual {v0, p3}, Lretrofit2/ServiceMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .restart local p3    # "args":[Ljava/lang/Object;
    :cond_2b
    iget-object p3, p0, Lretrofit2/Retrofit$1;->emptyArgs:[Ljava/lang/Object;

    goto :goto_26
.end method
