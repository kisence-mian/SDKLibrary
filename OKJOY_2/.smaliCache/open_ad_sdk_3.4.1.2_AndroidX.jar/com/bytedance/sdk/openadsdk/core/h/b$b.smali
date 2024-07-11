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
    .registers 3

    .line 687
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 688
    const/4 v0, 0x0

    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_12

    .line 689
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, -0x3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 691
    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
