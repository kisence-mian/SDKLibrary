.class public Lcom/tendcloud/tenddata/game/dq;
.super Ljava/util/Properties;
.source "td"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/dq$b;,
        Lcom/tendcloud/tenddata/game/dq$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:I

.field private d:I

.field private e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dq;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dq;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dq;->e:Ljava/util/zip/CRC32;

    .line 26
    invoke-virtual {p0, p2}, Lcom/tendcloud/tenddata/game/dq;->writeData([B)V

    .line 27
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 21
    invoke-static {}, Lcom/tendcloud/tenddata/game/dq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dq;-><init>(Ljava/lang/String;[B)V

    .line 22
    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tendcloud/tenddata/game/dq;)I
    .registers 3

    .line 97
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/dq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .registers 2

    .line 64
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;I)I
    .registers 3

    .line 56
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/dq;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 57
    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_12
    return p1
.end method

.method public a([B)Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public a(Ljava/lang/String;[B)[B
    .registers 3

    .line 60
    invoke-virtual {p0, p2}, Lcom/tendcloud/tenddata/game/dq;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/dq;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 61
    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/dq;->c(Ljava/lang/String;)[B

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)[B
    .registers 2

    .line 67
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/dq;->c(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public c()[B
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dq;->b:[B

    return-object v0
.end method

.method public c(Ljava/lang/String;)[B
    .registers 2

    .line 85
    nop

    .line 86
    if-eqz p1, :cond_8

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_9

    .line 86
    :cond_8
    const/4 p1, 0x0

    .line 89
    :goto_9
    return-object p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 10
    check-cast p1, Lcom/tendcloud/tenddata/game/dq;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/dq;->a(Lcom/tendcloud/tenddata/game/dq;)I

    move-result p1

    return p1
.end method

.method public d()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/tendcloud/tenddata/game/dq;->c:I

    return v0
.end method

.method public e()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/tendcloud/tenddata/game/dq;->d:I

    return v0
.end method

.method public final writeData([B)V
    .registers 5

    .line 70
    if-nez p1, :cond_3

    .line 71
    return-void

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dq;->e:Ljava/util/zip/CRC32;

    if-nez v0, :cond_e

    .line 75
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dq;->e:Ljava/util/zip/CRC32;

    .line 77
    :cond_e
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dq;->b:[B

    .line 78
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/dq;->b:[B

    array-length p1, p1

    iput p1, p0, Lcom/tendcloud/tenddata/game/dq;->d:I

    .line 80
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/dq;->e:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 81
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/dq;->e:Ljava/util/zip/CRC32;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dq;->b:[B

    invoke-virtual {p1, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 82
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/dq;->e:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/tendcloud/tenddata/game/dq;->c:I

    .line 83
    return-void
.end method
