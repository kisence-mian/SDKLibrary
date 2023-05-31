.class public Lcom/bun/miitmdid/core/JLibrary;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    }
.end annotation


# static fields
.field public static ASSET:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static SeriailizationString:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;

.field public static classLoader:Ljava/lang/ClassLoader;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static o00o0a0odod:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static o00o0a0odou:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static xdata:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public static ydata:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/bun/miitmdid/core/JLibrary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/core/JLibrary;->TAG:Ljava/lang/String;

    const-string v0, "assets/"

    sput-object v0, Lcom/bun/miitmdid/core/JLibrary;->ASSET:Ljava/lang/String;

    const-string v0, ".00000000000"

    sput-object v0, Lcom/bun/miitmdid/core/JLibrary;->xdata:Ljava/lang/String;

    const-string v0, ".11111111111"

    sput-object v0, Lcom/bun/miitmdid/core/JLibrary;->ydata:Ljava/lang/String;

    const-string v0, "stub_liu_0_dex_so:39285EFA@com/jdog;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"

    sput-object v0, Lcom/bun/miitmdid/core/JLibrary;->SeriailizationString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitEntry(Landroid/content/Context;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "pass InitEntry arg(context) is null"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sput-object p0, Lcom/bun/miitmdid/core/JLibrary;->context:Landroid/content/Context;

    const-class v0, Lcom/bun/miitmdid/core/JLibrary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/core/JLibrary;->classLoader:Ljava/lang/ClassLoader;

    sget-object v0, Lcom/bun/miitmdid/core/JLibrary;->SeriailizationString:Ljava/lang/String;

    sget-object v1, Lcom/bun/miitmdid/core/JLibrary;->SeriailizationString:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/bun/miitmdid/core/JLibrary;->SeriailizationString:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "!"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_3a

    sget-object v0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->RETURN_ERR:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    :goto_39
    return-object v0

    :cond_3a
    invoke-static {}, Lcom/bun/miitmdid/core/JLibrary;->a()Z

    sget-object v0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->RETURN_OK:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    goto :goto_39
.end method

.method public static ReadByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    if-lt v1, v3, :cond_18

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_27

    move-result v3

    add-int/2addr v1, v3

    goto :goto_e

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static native a()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public static o0o0o0o0o0(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Ljava/lang/Object;
    .registers 12
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    move v0, v1

    :goto_10
    if-lt v0, v4, :cond_37

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    new-array v2, v7, [Ljava/lang/Class;

    const-class v4, [Ljava/nio/ByteBuffer;

    aput-object v4, v2, v1

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v6

    invoke-static {p0, p2, v2}, Lcom/bun/miitmdid/core/JLibrary;->o0o0o0o0o0o0(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v1

    aput-object p3, v4, v6

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    :cond_37
    aget-object v5, v2, v0

    invoke-static {v5}, Lcom/bun/miitmdid/core/JLibrary;->ReadByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method private static varargs o0o0o0o0o0o0(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with parameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :try_start_37
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_45

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_37 .. :try_end_45} :catch_46

    :cond_45
    return-object v1

    :catch_46
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4
.end method

.method public static o0oo0o0(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v0, 0x3

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v1, ""

    invoke-static {p0, v1}, Lcom/bun/miitmdid/core/Utils;->getXdataDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odod:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v1}, Lcom/bun/miitmdid/core/Utils;->getYdataDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odou:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    sget-object v1, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odod:Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    sget-object v1, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odou:Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c4

    move v2, v0

    :goto_2f
    add-int/lit8 v1, v2, -0x1

    if-gtz v2, :cond_53

    :cond_33
    :goto_33
    if-ne v1, v6, :cond_5b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User dir cannot be created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_52
    :goto_52
    return-void

    :cond_53
    :try_start_53
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_33

    move v2, v1

    goto :goto_2f

    :cond_5b
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_66

    move v1, v0

    :goto_62
    add-int/lit8 v0, v1, -0x1

    if-gtz v1, :cond_81

    :cond_66
    if-ne v0, v6, :cond_89

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User dir cannot be created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_66

    move v1, v0

    goto :goto_62

    :cond_89
    invoke-static {p0}, Lcom/bun/miitmdid/core/Utils;->update(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ad

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odod:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_52

    :cond_ad
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bun/miitmdid/core/JLibrary;->o00o0a0odod:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Lcom/bun/miitmdid/core/Utils;->x0xooXdata(Ljava/io/InputStream;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_c3} :catch_4e

    goto :goto_52

    :cond_c4
    move v1, v0

    goto/16 :goto_33
.end method
