.class public Lcom/bytedance/sdk/openadsdk/core/g/c;
.super Lcom/bytedance/sdk/openadsdk/b/c;
.source "TotalCountLruDiskDir.java"


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/c;-><init>(II)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 26
    invoke-virtual {p0, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/g/c;->a(JI)Z

    move-result v1

    .line 27
    if-nez v1, :cond_28

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 29
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V

    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 33
    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/core/g/c;->a(Ljava/io/File;JI)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38
    :cond_28
    return-void
.end method
