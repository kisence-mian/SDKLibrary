.class public Lcom/tencent/turingfd/sdk/ams/ad/do;
.super Ljava/lang/Object;
.source "outline"


# direct methods
.method public static a(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
