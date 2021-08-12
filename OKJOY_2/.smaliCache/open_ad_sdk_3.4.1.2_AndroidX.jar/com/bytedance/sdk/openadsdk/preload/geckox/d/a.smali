.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a;
.super Lcom/bytedance/sdk/openadsdk/preload/b/a;
.source "FileTypeBranchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/b/a<",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 15
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getPackageType()I

    move-result p1

    .line 16
    packed-switch p1, :pswitch_data_26

    .line 25
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknow file type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :pswitch_20
    const-string p1, "branch_single_file"

    return-object p1

    .line 20
    :pswitch_23
    const-string p1, "branch_zip"

    return-object p1

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method protected bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 7
    check-cast p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
