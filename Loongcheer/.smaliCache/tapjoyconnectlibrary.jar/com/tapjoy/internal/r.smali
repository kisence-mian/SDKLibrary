.class public final Lcom/tapjoy/internal/r;
.super Ljava/net/ContentHandler;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/tapjoy/internal/r;

    invoke-direct {v0}, Lcom/tapjoy/internal/r;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/r;->a:Lcom/tapjoy/internal/r;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 20
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 36
    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/s;->a:Lcom/tapjoy/internal/s;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/s;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    .line 38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 36
    return-object v0

    .line 38
    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 39
    throw v0
.end method

.method private static a(Ljava/net/URLConnection;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 25
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 27
    :try_start_4
    sget-object v0, Lcom/tapjoy/internal/s;->a:Lcom/tapjoy/internal/s;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/s;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 29
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 27
    return-object v0

    .line 29
    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 30
    throw v0
.end method


# virtual methods
.method public final synthetic getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 16
    invoke-static {p1}, Lcom/tapjoy/internal/r;->a(Ljava/net/URLConnection;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
