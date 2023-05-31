.class final Lcom/tds/protobuf/UnsafeUtil$1;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lsun/misc/Unsafe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/tds/protobuf/UnsafeUtil$1;->run()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/misc/Unsafe;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    const-class v0, Lsun/misc/Unsafe;

    .line 121
    .local v0, "k":Ljava/lang/Class;, "Ljava/lang/Class<Lsun/misc/Unsafe;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x0

    if-ge v3, v2, :cond_25

    aget-object v5, v1, v3

    .line 122
    .local v5, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 124
    .local v4, "x":Ljava/lang/Object;
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;

    return-object v1

    .line 121
    .end local v4    # "x":Ljava/lang/Object;
    .end local v5    # "f":Ljava/lang/reflect/Field;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 129
    :cond_25
    return-object v4
.end method
