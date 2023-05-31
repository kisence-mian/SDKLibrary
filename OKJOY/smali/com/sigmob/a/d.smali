.class public Lcom/sigmob/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "ar"

.field public static final b:Ljava/lang/String; = "cpio"

.field public static final c:Ljava/lang/String; = "dump"

.field public static final d:Ljava/lang/String; = "jar"

.field public static final e:Ljava/lang/String; = "zip"

.field private static final f:Ljava/lang/String; = "tar"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/sigmob/a/c;
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mark is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/16 v0, 0xc

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    :try_start_20
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-static {v0, v1}, Lcom/sigmob/a/a/b;->a([BI)Z

    move-result v1

    if-eqz v1, :cond_4f

    new-instance v0, Lcom/sigmob/a/a/b;

    invoke-direct {v0, p1}, Lcom/sigmob/a/a/b;-><init>(Ljava/io/InputStream;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_4e} :catch_6b

    :goto_4e
    return-object v0

    :cond_4f
    :try_start_4f
    new-instance v1, Lcom/sigmob/a/a/b;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/sigmob/a/a/b;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/sigmob/a/a/b;->a()Lcom/sigmob/a/a;

    new-instance v0, Lcom/sigmob/a/a/b;

    invoke-direct {v0, p1}, Lcom/sigmob/a/a/b;-><init>(Ljava/io/InputStream;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_61} :catch_62
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_61} :catch_6b

    goto :goto_4e

    :catch_62
    move-exception v0

    new-instance v0, Lcom/sigmob/a/b;

    const-string v1, "No Archiver found for the stream signature"

    invoke-direct {v0, v1}, Lcom/sigmob/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6b
    move-exception v0

    new-instance v1, Lcom/sigmob/a/b;

    const-string v2, "Could not use reset and mark operations."

    invoke-direct {v1, v2, v0}, Lcom/sigmob/a/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/sigmob/a/c;
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archivername must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/sigmob/a/a/b;

    invoke-direct {v0, p2}, Lcom/sigmob/a/a/b;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_22
    new-instance v0, Lcom/sigmob/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Archiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method
