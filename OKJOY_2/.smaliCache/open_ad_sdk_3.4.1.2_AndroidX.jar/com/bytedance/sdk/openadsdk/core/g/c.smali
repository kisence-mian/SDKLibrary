.class public Lcom/bytedance/sdk/openadsdk/core/g/c;
.super Lcom/bytedance/sdk/openadsdk/b/c;
.source "TotalCountLruDiskDir.java"


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/c;-><init>(II)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 26
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/g/c;->a(JI)Z

    move-result v3

    .line 27
    if-nez v3, :cond_29

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 29
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/l;->c(Ljava/io/File;)V

    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 33
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/g/c;->a(Ljava/io/File;JI)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 34
    goto :goto_29

    .line 36
    :cond_28
    goto :goto_10

    .line 38
    :cond_29
    :goto_29
    return-void
.end method
