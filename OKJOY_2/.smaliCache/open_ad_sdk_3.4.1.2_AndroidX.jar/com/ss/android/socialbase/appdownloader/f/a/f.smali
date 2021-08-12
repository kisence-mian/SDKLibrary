.class public Lcom/ss/android/socialbase/appdownloader/f/a/f;
.super Ljava/lang/Object;
.source "StringBlock.java"


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method private static final a([II)I
    .registers 3

    .line 91
    div-int/lit8 v0, p1, 0x4

    aget p0, p0, v0

    .line 92
    rem-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_f

    const p1, 0xffff

    and-int/2addr p0, p1

    goto :goto_11

    :cond_f
    ushr-int/lit8 p0, p0, 0x10

    :goto_11
    return p0
.end method

.method public static a(Lcom/ss/android/socialbase/appdownloader/f/a/d;)Lcom/ss/android/socialbase/appdownloader/f/a/f;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    const v0, 0x1c0001

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/b;->a(Lcom/ss/android/socialbase/appdownloader/f/a/d;I)V

    .line 14
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v1

    .line 16
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v2

    .line 17
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    .line 18
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v3

    .line 19
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v4

    .line 20
    new-instance v5, Lcom/ss/android/socialbase/appdownloader/f/a/f;

    invoke-direct {v5}, Lcom/ss/android/socialbase/appdownloader/f/a/f;-><init>()V

    .line 21
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b(I)[I

    move-result-object v1

    iput-object v1, v5, Lcom/ss/android/socialbase/appdownloader/f/a/f;->a:[I

    .line 22
    if-eqz v2, :cond_2d

    .line 23
    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b(I)[I

    .line 26
    :cond_2d
    if-nez v4, :cond_31

    move v1, v0

    goto :goto_32

    :cond_31
    move v1, v4

    :goto_32
    sub-int/2addr v1, v3

    .line 27
    rem-int/lit8 v2, v1, 0x4

    const-string v3, ")."

    if-nez v2, :cond_6c

    .line 30
    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b(I)[I

    move-result-object v1

    iput-object v1, v5, Lcom/ss/android/socialbase/appdownloader/f/a/f;->b:[I

    .line 31
    if-eqz v4, :cond_6b

    .line 32
    sub-int/2addr v0, v4

    .line 33
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_4e

    .line 37
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b(I)[I

    goto :goto_6b

    .line 34
    :cond_4e
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Style data size is not multiple of 4 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_6b
    :goto_6b
    return-object v5

    .line 28
    :cond_6c
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String data size is not multiple of 4 ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 5

    .line 45
    if-ltz p1, :cond_2c

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/f;->a:[I

    if-eqz v0, :cond_2c

    array-length v1, v0

    if-ge p1, v1, :cond_2c

    .line 46
    aget p1, v0, p1

    .line 47
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/f;->b:[I

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/f;->a([II)I

    move-result v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_16
    if-eqz v0, :cond_27

    .line 51
    add-int/lit8 p1, p1, 0x2

    .line 52
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/f;->b:[I

    invoke-static {v2, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/f;->a([II)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 55
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method
