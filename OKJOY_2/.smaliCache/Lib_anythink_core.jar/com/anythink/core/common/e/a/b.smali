.class public abstract Lcom/anythink/core/common/e/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/e/a/b$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4


# instance fields
.field private final a:I

.field protected h:I

.field protected i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/e/a/b;->a:I

    return-void
.end method

.method private static a()Lorg/json/JSONObject;
    .registers 1

    .line 92
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;)[B
    .registers 4

    .line 76
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_29

    .line 79
    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    :try_start_e
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 83
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 84
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_20

    .line 87
    goto :goto_24

    .line 86
    :catch_20
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :goto_24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 77
    :cond_29
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f()Lorg/json/JSONObject;
    .registers 1

    .line 101
    invoke-static {}, Lcom/anythink/core/common/e/c;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 3

    .line 71
    iput p1, p0, Lcom/anythink/core/common/e/a/b;->h:I

    .line 72
    iput-object p2, p0, Lcom/anythink/core/common/e/a/b;->i:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public final a(Lcom/anythink/core/common/e/a/b$a;)V
    .registers 4

    .line 106
    invoke-static {}, Lcom/anythink/core/common/e/a/c;->a()Lcom/anythink/core/common/e/a/c;

    move-result-object v0

    .line 1104
    new-instance v1, Lcom/anythink/core/common/e/a/c$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/anythink/core/common/e/a/c$1;-><init>(Lcom/anythink/core/common/e/a/c;Lcom/anythink/core/common/e/a/b;Lcom/anythink/core/common/e/a/b$a;)V

    .line 1180
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    .line 107
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 40
    return-void
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()[B
.end method

.method public abstract e()Z
.end method
