.class public final Lcom/tapjoy/internal/ix;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/tapjoy/internal/ix;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ix;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Lcom/tapjoy/internal/jd;)Lcom/tapjoy/internal/iu;
    .registers 2

    .line 60
    if-eqz p0, :cond_8

    .line 61
    new-instance v0, Lcom/tapjoy/internal/iy;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/iy;-><init>(Lcom/tapjoy/internal/jd;)V

    return-object v0

    .line 60
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/tapjoy/internal/je;)Lcom/tapjoy/internal/iv;
    .registers 2

    .line 50
    if-eqz p0, :cond_8

    .line 51
    new-instance v0, Lcom/tapjoy/internal/iz;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/iz;-><init>(Lcom/tapjoy/internal/je;)V

    return-object v0

    .line 50
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/tapjoy/internal/jd;
    .registers 3

    .line 66
    new-instance v0, Lcom/tapjoy/internal/jf;

    invoke-direct {v0}, Lcom/tapjoy/internal/jf;-><init>()V

    .line 1070
    if-eqz p0, :cond_d

    .line 1073
    new-instance v1, Lcom/tapjoy/internal/ix$1;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/ix$1;-><init>(Lcom/tapjoy/internal/jf;Ljava/io/OutputStream;)V

    .line 66
    return-object v1

    .line 1070
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/tapjoy/internal/je;
    .registers 3

    .line 125
    new-instance v0, Lcom/tapjoy/internal/jf;

    invoke-direct {v0}, Lcom/tapjoy/internal/jf;-><init>()V

    .line 1129
    if-eqz p0, :cond_d

    .line 1132
    new-instance v1, Lcom/tapjoy/internal/ix$2;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/ix$2;-><init>(Lcom/tapjoy/internal/jf;Ljava/io/InputStream;)V

    .line 125
    return-object v1

    .line 1129
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .registers 2

    .line 242
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 243
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method
