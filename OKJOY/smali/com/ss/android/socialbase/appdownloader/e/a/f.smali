.class public Lcom/ss/android/socialbase/appdownloader/e/a/f;
.super Ljava/lang/Object;
.source "StringBlock.java"


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method private static final a([II)I
    .registers 4

    .prologue
    .line 91
    div-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    .line 92
    rem-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_f

    const v1, 0xffff

    and-int/2addr v0, v1

    :goto_e
    return v0

    :cond_f
    ushr-int/lit8 v0, v0, 0x10

    goto :goto_e
.end method

.method public static a(Lcom/ss/android/socialbase/appdownloader/e/a/d;)Lcom/ss/android/socialbase/appdownloader/e/a/f;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    const v0, 0x1c0001

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/b;->a(Lcom/ss/android/socialbase/appdownloader/e/a/d;I)V

    .line 14
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v0

    .line 16
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v3

    .line 17
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    .line 18
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v4

    .line 19
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v2

    .line 20
    new-instance v5, Lcom/ss/android/socialbase/appdownloader/e/a/f;

    invoke-direct {v5}, Lcom/ss/android/socialbase/appdownloader/e/a/f;-><init>()V

    .line 21
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/ss/android/socialbase/appdownloader/e/a/f;->a:[I

    .line 22
    if-eqz v3, :cond_2d

    .line 23
    invoke-virtual {p0, v3}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b(I)[I

    .line 26
    :cond_2d
    if-nez v2, :cond_54

    move v0, v1

    :goto_30
    sub-int/2addr v0, v4

    .line 27
    rem-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_56

    .line 28
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_54
    move v0, v2

    .line 26
    goto :goto_30

    .line 30
    :cond_56
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/ss/android/socialbase/appdownloader/e/a/f;->b:[I

    .line 31
    if-eqz v2, :cond_8a

    .line 32
    sub-int v0, v1, v2

    .line 33
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_85

    .line 34
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Style data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_85
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b(I)[I

    .line 40
    :cond_8a
    return-object v5
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 45
    if-ltz p1, :cond_30

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/f;->a:[I

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/f;->a:[I

    array-length v0, v0

    if-ge p1, v0, :cond_30

    .line 46
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/f;->a:[I

    aget v1, v0, p1

    .line 47
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/f;->b:[I

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/e/a/f;->a([II)I

    move-result v0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1a
    if-eqz v0, :cond_2b

    .line 51
    add-int/lit8 v1, v1, 0x2

    .line 52
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/e/a/f;->b:[I

    invoke-static {v3, v1}, Lcom/ss/android/socialbase/appdownloader/e/a/f;->a([II)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 55
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_2f
    return-object v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method
