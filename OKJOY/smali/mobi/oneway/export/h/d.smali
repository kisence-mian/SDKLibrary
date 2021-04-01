.class public Lmobi/oneway/export/h/d;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lmobi/oneway/export/h/d;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/oneway/export/h/d;->a:Ljava/io/OutputStream;

    iput v1, p0, Lmobi/oneway/export/h/d;->b:I

    iput v1, p0, Lmobi/oneway/export/h/d;->c:I

    iput v1, p0, Lmobi/oneway/export/h/d;->d:I

    iput v1, p0, Lmobi/oneway/export/h/d;->e:I

    iput-object p1, p0, Lmobi/oneway/export/h/d;->a:Ljava/io/OutputStream;

    iput p2, p0, Lmobi/oneway/export/h/d;->e:I

    return-void
.end method


# virtual methods
.method a()V
    .registers 7

    const/4 v5, 0x0

    iget v0, p0, Lmobi/oneway/export/h/d;->c:I

    if-gtz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget v0, p0, Lmobi/oneway/export/h/d;->e:I

    if-lez v0, :cond_1f

    iget v0, p0, Lmobi/oneway/export/h/d;->d:I

    iget v1, p0, Lmobi/oneway/export/h/d;->e:I

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lmobi/oneway/export/h/d;->a:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iput v5, p0, Lmobi/oneway/export/h/d;->d:I

    :cond_1f
    sget-object v0, Lmobi/oneway/export/h/o;->a:Ljava/lang/String;

    iget v1, p0, Lmobi/oneway/export/h/d;->b:I

    shl-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v0, Lmobi/oneway/export/h/o;->a:Ljava/lang/String;

    iget v1, p0, Lmobi/oneway/export/h/d;->b:I

    shl-int/lit8 v1, v1, 0xe

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v0, p0, Lmobi/oneway/export/h/d;->c:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_64

    sget-char v0, Lmobi/oneway/export/h/o;->b:C

    :goto_3e
    iget v1, p0, Lmobi/oneway/export/h/d;->c:I

    const/4 v4, 0x3

    if-ge v1, v4, :cond_71

    sget-char v1, Lmobi/oneway/export/h/o;->b:C

    :goto_45
    iget-object v4, p0, Lmobi/oneway/export/h/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lmobi/oneway/export/h/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lmobi/oneway/export/h/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lmobi/oneway/export/h/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lmobi/oneway/export/h/d;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmobi/oneway/export/h/d;->d:I

    iput v5, p0, Lmobi/oneway/export/h/d;->c:I

    iput v5, p0, Lmobi/oneway/export/h/d;->b:I

    goto :goto_5

    :cond_64
    sget-object v0, Lmobi/oneway/export/h/o;->a:Ljava/lang/String;

    iget v1, p0, Lmobi/oneway/export/h/d;->b:I

    shl-int/lit8 v1, v1, 0x14

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3e

    :cond_71
    sget-object v1, Lmobi/oneway/export/h/o;->a:Ljava/lang/String;

    iget v4, p0, Lmobi/oneway/export/h/d;->b:I

    shl-int/lit8 v4, v4, 0x1a

    ushr-int/lit8 v4, v4, 0x1a

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_45
.end method

.method public close()V
    .registers 2

    invoke-virtual {p0}, Lmobi/oneway/export/h/d;->a()V

    iget-object v0, p0, Lmobi/oneway/export/h/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .registers 4
    .param p1, "b"    # I

    .prologue
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lmobi/oneway/export/h/d;->c:I

    mul-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x10

    shl-int/2addr v0, v1

    iget v1, p0, Lmobi/oneway/export/h/d;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lmobi/oneway/export/h/d;->b:I

    iget v0, p0, Lmobi/oneway/export/h/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/oneway/export/h/d;->c:I

    iget v0, p0, Lmobi/oneway/export/h/d;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lmobi/oneway/export/h/d;->a()V

    :cond_1c
    return-void
.end method
