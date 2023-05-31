.class public final Lcom/tencent/turingfd/sdk/ams/ad/class;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1
    new-instance v0, Ljava/lang/String;

    const-string v1, "414553"

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-void
.end method

.method public static e([B)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
