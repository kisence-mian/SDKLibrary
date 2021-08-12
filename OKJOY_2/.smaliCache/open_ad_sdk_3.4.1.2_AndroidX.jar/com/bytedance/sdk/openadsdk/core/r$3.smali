.class Lcom/bytedance/sdk/openadsdk/core/r$3;
.super Lcom/bytedance/sdk/adnet/b/f;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/r;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r;ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;Ljava/util/Map;)V
    .registers 7

    .line 618
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r$3;->d:Lcom/bytedance/sdk/openadsdk/core/r;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/r$3;->c:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r$3;->c:Ljava/util/Map;

    return-object v0
.end method
