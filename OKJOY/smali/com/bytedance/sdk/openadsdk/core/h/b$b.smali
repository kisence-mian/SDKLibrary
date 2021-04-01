.class Lcom/bytedance/sdk/openadsdk/core/h/b$b;
.super Ljava/lang/Object;
.source "ApplistHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 673
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 674
    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 675
    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, -0x3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 677
    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
