.class public Lcom/kwad/sdk/crash/utils/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 1

    if-nez p0, :cond_6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    :cond_6
    return-object p0
.end method
