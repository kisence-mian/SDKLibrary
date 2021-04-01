.class public Lcom/tencent/smtt/utils/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/utils/j$g;,
        Lcom/tencent/smtt/utils/j$c;,
        Lcom/tencent/smtt/utils/j$j;,
        Lcom/tencent/smtt/utils/j$i;,
        Lcom/tencent/smtt/utils/j$e;,
        Lcom/tencent/smtt/utils/j$l;,
        Lcom/tencent/smtt/utils/j$h;,
        Lcom/tencent/smtt/utils/j$d;,
        Lcom/tencent/smtt/utils/j$k;,
        Lcom/tencent/smtt/utils/j$f;,
        Lcom/tencent/smtt/utils/j$b;,
        Lcom/tencent/smtt/utils/j$a;
    }
.end annotation


# static fields
.field static final a:[C


# instance fields
.field final b:[C

.field c:Z

.field d:[Lcom/tencent/smtt/utils/j$j;

.field e:[Lcom/tencent/smtt/utils/j$l;

.field f:[B

.field private final g:Lcom/tencent/smtt/utils/c;

.field private final h:Lcom/tencent/smtt/utils/j$a;

.field private final i:[Lcom/tencent/smtt/utils/j$k;

.field private j:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/tencent/smtt/utils/j;->a:[C

    return-void

    nop

    :array_a
    .array-data 2
        0x7fs
        0x45s
        0x4cs
        0x46s
        0x0s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tencent/smtt/utils/j;->b:[C

    new-instance v1, Lcom/tencent/smtt/utils/c;

    invoke-direct {v1, p1}, Lcom/tencent/smtt/utils/c;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/tencent/smtt/utils/j;->g:Lcom/tencent/smtt/utils/c;

    iget-object v0, p0, Lcom/tencent/smtt/utils/j;->b:[C

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/utils/c;->a([C)I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/j;->a()Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid elf magic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/j;->e()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/utils/c;->a(Z)V

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/j;->d()Z

    move-result v2

    if-eqz v2, :cond_f5

    new-instance v0, Lcom/tencent/smtt/utils/j$f;

    invoke-direct {v0}, Lcom/tencent/smtt/utils/j$f;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v3

    iput-short v3, v0, Lcom/tencent/smtt/utils/j$f;->a:S

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v3

    iput-short v3, v0, Lcom/tencent/smtt/utils/j$f;->b:S

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v3

    iput v3, v0, Lcom/tencent/smtt/utils/j$f;->c:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/smtt/utils/j$f;->k:J

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/smtt/utils/j$f;->l:J

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/smtt/utils/j$f;->m:J

    iput-object v0, p0, Lcom/tencent/smtt/utils/j;->h:Lcom/tencent/smtt/utils/j$a;

    :goto_68
    iget-object v3, p0, Lcom/tencent/smtt/utils/j;->h:Lcom/tencent/smtt/utils/j$a;

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v0

    iput v0, v3, Lcom/tencent/smtt/utils/j$a;->d:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v0

    iput-short v0, v3, Lcom/tencent/smtt/utils/j$a;->e:S

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v0

    iput-short v0, v3, Lcom/tencent/smtt/utils/j$a;->f:S

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v0

    iput-short v0, v3, Lcom/tencent/smtt/utils/j$a;->g:S

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v0

    iput-short v0, v3, Lcom/tencent/smtt/utils/j$a;->h:S

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v0

    iput-short v0, v3, Lcom/tencent/smtt/utils/j$a;->i:S

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v0

    iput-short v0, v3, Lcom/tencent/smtt/utils/j$a;->j:S

    iget-short v0, v3, Lcom/tencent/smtt/utils/j$a;->i:S

    new-array v0, v0, [Lcom/tencent/smtt/utils/j$k;

    iput-object v0, p0, Lcom/tencent/smtt/utils/j;->i:[Lcom/tencent/smtt/utils/j$k;

    const/4 v0, 0x0

    :goto_9b
    iget-short v4, v3, Lcom/tencent/smtt/utils/j$a;->i:S

    if-ge v0, v4, :cond_168

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/j$a;->a()J

    move-result-wide v4

    iget-short v6, v3, Lcom/tencent/smtt/utils/j$a;->h:S

    mul-int/2addr v6, v0

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/tencent/smtt/utils/c;->a(J)V

    if-eqz v2, :cond_122

    new-instance v4, Lcom/tencent/smtt/utils/j$h;

    invoke-direct {v4}, Lcom/tencent/smtt/utils/j$h;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$h;->g:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$h;->h:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/smtt/utils/j$h;->a:J

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/smtt/utils/j$h;->b:J

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/smtt/utils/j$h;->c:J

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/smtt/utils/j$h;->d:J

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$h;->i:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$h;->j:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/smtt/utils/j$h;->e:J

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/smtt/utils/j$h;->f:J

    iget-object v5, p0, Lcom/tencent/smtt/utils/j;->i:[Lcom/tencent/smtt/utils/j$k;

    aput-object v4, v5, v0

    :goto_f2
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    :cond_f5
    new-instance v0, Lcom/tencent/smtt/utils/j$b;

    invoke-direct {v0}, Lcom/tencent/smtt/utils/j$b;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v3

    iput-short v3, v0, Lcom/tencent/smtt/utils/j$b;->a:S

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v3

    iput-short v3, v0, Lcom/tencent/smtt/utils/j$b;->b:S

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v3

    iput v3, v0, Lcom/tencent/smtt/utils/j$b;->c:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v3

    iput v3, v0, Lcom/tencent/smtt/utils/j$b;->k:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v3

    iput v3, v0, Lcom/tencent/smtt/utils/j$b;->l:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v3

    iput v3, v0, Lcom/tencent/smtt/utils/j$b;->m:I

    iput-object v0, p0, Lcom/tencent/smtt/utils/j;->h:Lcom/tencent/smtt/utils/j$a;

    goto/16 :goto_68

    :cond_122
    new-instance v4, Lcom/tencent/smtt/utils/j$d;

    invoke-direct {v4}, Lcom/tencent/smtt/utils/j$d;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$d;->g:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$d;->h:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$d;->a:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$d;->b:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$d;->c:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$d;->d:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$d;->i:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$d;->j:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$d;->e:I

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v4, Lcom/tencent/smtt/utils/j$d;->f:I

    iget-object v5, p0, Lcom/tencent/smtt/utils/j;->i:[Lcom/tencent/smtt/utils/j$k;

    aput-object v4, v5, v0

    goto :goto_f2

    :cond_168
    iget-short v0, v3, Lcom/tencent/smtt/utils/j$a;->j:S

    if-ltz v0, :cond_1b1

    iget-short v0, v3, Lcom/tencent/smtt/utils/j$a;->j:S

    iget-object v2, p0, Lcom/tencent/smtt/utils/j;->i:[Lcom/tencent/smtt/utils/j$k;

    array-length v2, v2

    if-ge v0, v2, :cond_1b1

    iget-object v0, p0, Lcom/tencent/smtt/utils/j;->i:[Lcom/tencent/smtt/utils/j$k;

    iget-short v2, v3, Lcom/tencent/smtt/utils/j$a;->j:S

    aget-object v0, v0, v2

    iget v2, v0, Lcom/tencent/smtt/utils/j$k;->h:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_19a

    invoke-virtual {v0}, Lcom/tencent/smtt/utils/j$k;->a()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tencent/smtt/utils/j;->j:[B

    invoke-virtual {v0}, Lcom/tencent/smtt/utils/j$k;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/utils/c;->a(J)V

    iget-object v0, p0, Lcom/tencent/smtt/utils/j;->j:[B

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/utils/c;->a([B)I

    iget-boolean v0, p0, Lcom/tencent/smtt/utils/j;->c:Z

    if-eqz v0, :cond_199

    invoke-direct {p0}, Lcom/tencent/smtt/utils/j;->f()V

    :cond_199
    return-void

    :cond_19a
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong string section e_shstrndx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, v3, Lcom/tencent/smtt/utils/j$a;->j:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b1
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid e_shstrndx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, v3, Lcom/tencent/smtt/utils/j$a;->j:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_19

    const-wide/32 v4, 0x7f454c46

    cmp-long v1, v2, v4

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    :goto_18
    return v0

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_18
.end method

.method public static b(Ljava/io/File;)Z
    .registers 5

    invoke-static {}, Lcom/tencent/smtt/utils/j;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/tencent/smtt/utils/j;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_c
    new-instance v0, Lcom/tencent/smtt/utils/j;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/utils/j;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_13
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_c .. :try_end_11} :catch_2a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_40

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0

    :catch_13
    move-exception v0

    const-string v1, "ELF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkElfFile IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_12

    :catch_2a
    move-exception v0

    const-string v1, "ELF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkElfFile UnknownFormatConversionException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :catch_40
    move-exception v0

    const-string v1, "ELF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkElfFile Throwable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private f()V
    .registers 13

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/smtt/utils/j;->h:Lcom/tencent/smtt/utils/j$a;

    iget-object v3, p0, Lcom/tencent/smtt/utils/j;->g:Lcom/tencent/smtt/utils/c;

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/j;->d()Z

    move-result v4

    const-string v0, ".dynsym"

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/utils/j;->a(Ljava/lang/String;)Lcom/tencent/smtt/utils/j$k;

    move-result-object v5

    if-eqz v5, :cond_ac

    invoke-virtual {v5}, Lcom/tencent/smtt/utils/j$k;->b()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/tencent/smtt/utils/c;->a(J)V

    invoke-virtual {v5}, Lcom/tencent/smtt/utils/j$k;->a()I

    move-result v6

    if-eqz v4, :cond_5f

    const/16 v0, 0x18

    :goto_20
    div-int/2addr v6, v0

    new-array v0, v6, [Lcom/tencent/smtt/utils/j$l;

    iput-object v0, p0, Lcom/tencent/smtt/utils/j;->e:[Lcom/tencent/smtt/utils/j$l;

    const/4 v0, 0x1

    new-array v7, v0, [C

    move v0, v1

    :goto_29
    if-ge v0, v6, :cond_92

    if-eqz v4, :cond_62

    new-instance v8, Lcom/tencent/smtt/utils/j$i;

    invoke-direct {v8}, Lcom/tencent/smtt/utils/j$i;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v9

    iput v9, v8, Lcom/tencent/smtt/utils/j$i;->c:I

    invoke-virtual {v3, v7}, Lcom/tencent/smtt/utils/c;->a([C)I

    aget-char v9, v7, v1

    iput-char v9, v8, Lcom/tencent/smtt/utils/j$i;->d:C

    invoke-virtual {v3, v7}, Lcom/tencent/smtt/utils/c;->a([C)I

    aget-char v9, v7, v1

    iput-char v9, v8, Lcom/tencent/smtt/utils/j$i;->e:C

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/tencent/smtt/utils/j$i;->a:J

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/tencent/smtt/utils/j$i;->b:J

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v9

    iput-short v9, v8, Lcom/tencent/smtt/utils/j$i;->f:S

    iget-object v9, p0, Lcom/tencent/smtt/utils/j;->e:[Lcom/tencent/smtt/utils/j$l;

    aput-object v8, v9, v0

    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_5f
    const/16 v0, 0x10

    goto :goto_20

    :cond_62
    new-instance v8, Lcom/tencent/smtt/utils/j$e;

    invoke-direct {v8}, Lcom/tencent/smtt/utils/j$e;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v9

    iput v9, v8, Lcom/tencent/smtt/utils/j$e;->c:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v9

    iput v9, v8, Lcom/tencent/smtt/utils/j$e;->a:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v9

    iput v9, v8, Lcom/tencent/smtt/utils/j$e;->b:I

    invoke-virtual {v3, v7}, Lcom/tencent/smtt/utils/c;->a([C)I

    aget-char v9, v7, v1

    iput-char v9, v8, Lcom/tencent/smtt/utils/j$e;->d:C

    invoke-virtual {v3, v7}, Lcom/tencent/smtt/utils/c;->a([C)I

    aget-char v9, v7, v1

    iput-char v9, v8, Lcom/tencent/smtt/utils/j$e;->e:C

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v9

    iput-short v9, v8, Lcom/tencent/smtt/utils/j$e;->f:S

    iget-object v9, p0, Lcom/tencent/smtt/utils/j;->e:[Lcom/tencent/smtt/utils/j$l;

    aput-object v8, v9, v0

    goto :goto_5c

    :cond_92
    iget-object v0, p0, Lcom/tencent/smtt/utils/j;->i:[Lcom/tencent/smtt/utils/j$k;

    iget v5, v5, Lcom/tencent/smtt/utils/j$k;->i:I

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/tencent/smtt/utils/j$k;->b()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/tencent/smtt/utils/c;->a(J)V

    invoke-virtual {v0}, Lcom/tencent/smtt/utils/j$k;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/smtt/utils/j;->f:[B

    iget-object v0, p0, Lcom/tencent/smtt/utils/j;->f:[B

    invoke-virtual {v3, v0}, Lcom/tencent/smtt/utils/c;->a([B)I

    :cond_ac
    iget-short v0, v2, Lcom/tencent/smtt/utils/j$a;->g:S

    new-array v0, v0, [Lcom/tencent/smtt/utils/j$j;

    iput-object v0, p0, Lcom/tencent/smtt/utils/j;->d:[Lcom/tencent/smtt/utils/j$j;

    move v0, v1

    :goto_b3
    iget-short v1, v2, Lcom/tencent/smtt/utils/j$a;->g:S

    if-ge v0, v1, :cond_13b

    invoke-virtual {v2}, Lcom/tencent/smtt/utils/j$a;->b()J

    move-result-wide v6

    iget-short v1, v2, Lcom/tencent/smtt/utils/j$a;->f:S

    mul-int/2addr v1, v0

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lcom/tencent/smtt/utils/c;->a(J)V

    if-eqz v4, :cond_101

    new-instance v1, Lcom/tencent/smtt/utils/j$g;

    invoke-direct {v1}, Lcom/tencent/smtt/utils/j$g;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v1, Lcom/tencent/smtt/utils/j$g;->g:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v1, Lcom/tencent/smtt/utils/j$g;->h:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/tencent/smtt/utils/j$g;->a:J

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/tencent/smtt/utils/j$g;->b:J

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/tencent/smtt/utils/j$g;->c:J

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/tencent/smtt/utils/j$g;->d:J

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/tencent/smtt/utils/j$g;->e:J

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/tencent/smtt/utils/j$g;->f:J

    iget-object v5, p0, Lcom/tencent/smtt/utils/j;->d:[Lcom/tencent/smtt/utils/j$j;

    aput-object v1, v5, v0

    :goto_fe
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    :cond_101
    new-instance v1, Lcom/tencent/smtt/utils/j$c;

    invoke-direct {v1}, Lcom/tencent/smtt/utils/j$c;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v1, Lcom/tencent/smtt/utils/j$c;->g:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v1, Lcom/tencent/smtt/utils/j$c;->h:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v1, Lcom/tencent/smtt/utils/j$c;->a:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v1, Lcom/tencent/smtt/utils/j$c;->b:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v1, Lcom/tencent/smtt/utils/j$c;->c:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v1, Lcom/tencent/smtt/utils/j$c;->d:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v1, Lcom/tencent/smtt/utils/j$c;->e:I

    invoke-virtual {v3}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v1, Lcom/tencent/smtt/utils/j$c;->f:I

    iget-object v5, p0, Lcom/tencent/smtt/utils/j;->d:[Lcom/tencent/smtt/utils/j$j;

    aput-object v1, v5, v0

    goto :goto_fe

    :cond_13b
    return-void
.end method

.method private static g()Z
    .registers 2

    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/smtt/utils/j$k;
    .registers 7

    iget-object v2, p0, Lcom/tencent/smtt/utils/j;->i:[Lcom/tencent/smtt/utils/j$k;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_1a

    aget-object v0, v2, v1

    iget v4, v0, Lcom/tencent/smtt/utils/j$k;->g:I

    invoke-virtual {p0, v4}, Lcom/tencent/smtt/utils/j;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    :goto_15
    return-object v0

    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final a(I)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_5

    const-string v0, "SHN_UNDEF"

    :goto_4
    return-object v0

    :cond_5
    move v0, p1

    :goto_6
    iget-object v1, p0, Lcom/tencent/smtt/utils/j;->j:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/smtt/utils/j;->j:[B

    sub-int/2addr v0, p1

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    goto :goto_4
.end method

.method final a()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/smtt/utils/j;->b:[C

    aget-char v1, v1, v0

    sget-object v2, Lcom/tencent/smtt/utils/j;->a:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method final b()C
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/utils/j;->b:[C

    const/4 v1, 0x4

    aget-char v0, v0, v1

    return v0
.end method

.method final c()C
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/utils/j;->b:[C

    const/4 v1, 0x5

    aget-char v0, v0, v1

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/j;->g:Lcom/tencent/smtt/utils/c;

    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->close()V

    return-void
.end method

.method public final d()Z
    .registers 3

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/j;->b()C

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final e()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/j;->c()C

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
