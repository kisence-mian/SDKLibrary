.class public Lcom/tds/common/isc/Service;
.super Ljava/lang/Object;
.source "Service.java"


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 8
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/tds/common/isc/Service;->clazz:Ljava/lang/Class;

    .line 10
    return-void
.end method

.method private findStaticMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 8
    .param p1, "iscMethodName"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/tds/common/isc/Service;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 61
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v3}, Lcom/tds/common/isc/Service;->isPublicStaticMethod(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 62
    const-class v4, Lcom/tds/common/isc/IscMethod;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/tds/common/isc/IscMethod;

    .line 63
    .local v4, "annotation":Lcom/tds/common/isc/IscMethod;
    if-eqz v4, :cond_27

    invoke-interface {v4}, Lcom/tds/common/isc/IscMethod;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 64
    return-object v3

    .line 60
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "annotation":Lcom/tds/common/isc/IscMethod;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 68
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method private isPublicStaticMethod(Ljava/lang/reflect/Method;)Z
    .registers 4
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 72
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 73
    .local v0, "m":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method


# virtual methods
.method public varargs directCall(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/isc/IscException;
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v0

    .line 48
    .local v0, "method":Lcom/tds/common/isc/Method;
    invoke-virtual {v0, p2}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v1

    .line 49
    .end local v0    # "method":Lcom/tds/common/isc/Method;
    :catchall_9
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Lcom/tds/common/isc/IscException;

    if-eqz v1, :cond_f

    .line 51
    throw v0

    .line 53
    :cond_f
    new-instance v1, Lcom/tds/common/isc/IscException;

    invoke-direct {v1, v0}, Lcom/tds/common/isc/IscException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasMethod(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v1
    :try_end_5
    .catch Lcom/tds/common/isc/IscException; {:try_start_1 .. :try_end_5} :catch_9

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    .line 15
    :catch_9
    move-exception v1

    .line 16
    .local v1, "e":Lcom/tds/common/isc/IscException;
    return v0
.end method

.method public method(Ljava/lang/String;)Lcom/tds/common/isc/Method;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/isc/IscException;
        }
    .end annotation

    .line 22
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tds/common/isc/Service;->findStaticMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 23
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_c

    .line 26
    new-instance v1, Lcom/tds/common/isc/Method;

    invoke-direct {v1, v0}, Lcom/tds/common/isc/Method;-><init>(Ljava/lang/reflect/Method;)V

    return-object v1

    .line 24
    :cond_c
    new-instance v1, Lcom/tds/common/isc/IscException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tds/common/isc/Service;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not contain public static method annotated with @IscMethod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/common/isc/IscException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/tds/common/isc/Service;
    .end local p1    # "name":Ljava/lang/String;
    throw v1
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_2f

    .line 28
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local p0    # "this":Lcom/tds/common/isc/Service;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_2f
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Lcom/tds/common/isc/IscException;

    if-eqz v1, :cond_35

    .line 30
    throw v0

    .line 32
    :cond_35
    new-instance v1, Lcom/tds/common/isc/IscException;

    invoke-direct {v1, v0}, Lcom/tds/common/isc/IscException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
