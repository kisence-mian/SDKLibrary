.class public Lcom/umeng/analytics/pro/as;
.super Ljava/io/ByteArrayOutputStream;
.source "TByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()[B
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/umeng/analytics/pro/as;->buf:[B

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/umeng/analytics/pro/as;->count:I

    return v0
.end method
