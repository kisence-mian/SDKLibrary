.class public Lcom/didi/virtualapk/utils/Reflector;
.super Ljava/lang/Object;
.source "Reflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/utils/Reflector$QuietReflector;,
        Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "VA.Reflector"


# instance fields
.field protected mCaller:Ljava/lang/Object;

.field protected mConstructor:Ljava/lang/reflect/Constructor;

.field protected mField:Ljava/lang/reflect/Field;

.field protected mMethod:Ljava/lang/reflect/Method;

.field protected mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/didi/virtualapk/utils/Reflector;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector;

    invoke-direct {v0}, Lcom/didi/virtualapk/utils/Reflector;-><init>()V

    .line 57
    .local v0, "reflector":Lcom/didi/virtualapk/utils/Reflector;
    iput-object p0, v0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    .line 58
    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x1

    const-class v1, Lcom/didi/virtualapk/utils/Reflector;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    return-object v0
.end method

.method public static on(Ljava/lang/String;Z)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "initialize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 44
    const-class v0, Lcom/didi/virtualapk/utils/Reflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    return-object v0
.end method

.method public static on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "initialize"    # Z
    .param p2, "loader"    # Ljava/lang/ClassLoader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 50
    :catch_9
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Oops!"

    invoke-direct {v1, v2, v0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 2
    .param p0, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/virtualapk/utils/Reflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p1, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->checked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    .line 114
    return-object p0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/didi/virtualapk/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    const-string v2, "Method"

    invoke-virtual {p0, p1, v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    .line 213
    :try_start_7
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_c} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_1b

    move-result-object v1

    return-object v1

    .line 214
    :catch_e
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Oops!"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 216
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1b
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Oops!"

    invoke-direct {v1, v2, v0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V
    .registers 7
    .param p1, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "member"    # Ljava/lang/reflect/Member;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p2, :cond_1b

    .line 104
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1b
    if-nez p1, :cond_2f

    invoke-interface {p2}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 107
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Need a caller!"

    invoke-direct {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->checked(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method protected checked(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 96
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 97
    :cond_a
    return-object p1

    .line 99
    :cond_b
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a instance of type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 5
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/didi/virtualapk/utils/Reflector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 72
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    .line 75
    return-object p0

    .line 76
    :catch_15
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Oops!"

    invoke-direct {v1, v2, v0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    .line 125
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 128
    return-object p0

    .line 129
    :catch_13
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Oops!"

    invoke-direct {v1, v2, v0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected findField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    .line 140
    :goto_6
    return-object v2

    .line 137
    :catch_7
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a
    if-eqz v0, :cond_17

    .line 140
    :try_start_c
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v2

    goto :goto_6

    .line 141
    :catch_11
    move-exception v2

    .line 138
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a

    .line 145
    :cond_17
    throw v1
.end method

.method protected varargs findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v2, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    .line 196
    :goto_6
    return-object v2

    .line 193
    :catch_7
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a
    if-eqz v0, :cond_17

    .line 196
    :try_start_c
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v2

    goto :goto_6

    .line 197
    :catch_11
    move-exception v2

    .line 194
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a

    .line 201
    :cond_17
    throw v1
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const-string v2, "Field"

    invoke-virtual {p0, p1, v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    .line 158
    :try_start_7
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    .line 159
    :catch_e
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Oops!"

    invoke-direct {v1, v2, v0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/didi/virtualapk/utils/Reflector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    .line 181
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_13

    .line 184
    return-object p0

    .line 185
    :catch_13
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Oops!"

    invoke-direct {v1, v2, v0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "initargs"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_c

    .line 84
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Constructor was null!"

    invoke-direct {v1, v2}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_11} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_20

    move-result-object v1

    return-object v1

    .line 88
    :catch_13
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Oops!"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_20
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Oops!"

    invoke-direct {v1, v2, v0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 6
    .param p1, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const-string v2, "Field"

    invoke-virtual {p0, p1, v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    .line 171
    :try_start_7
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    .line 172
    return-object p0

    .line 173
    :catch_d
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v2, "Oops!"

    invoke-direct {v1, v2, v0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbind()Lcom/didi/virtualapk/utils/Reflector;
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    .line 119
    return-object p0
.end method
