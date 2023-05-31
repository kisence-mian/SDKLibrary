.class final Lcom/mintegral/msdk/base/utils/e$4;
.super Ljava/lang/Object;
.source "CommonFileUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/utils/e;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 413
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    .line 1415
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1416
    cmp-long v2, v0, v4

    if-lez v2, :cond_15

    .line 1417
    const/4 v0, 0x1

    .line 1419
    :goto_14
    return v0

    .line 1418
    :cond_15
    cmp-long v0, v0, v4

    if-nez v0, :cond_1b

    .line 1419
    const/4 v0, 0x0

    goto :goto_14

    .line 1421
    :cond_1b
    const/4 v0, -0x1

    .line 413
    goto :goto_14
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method
