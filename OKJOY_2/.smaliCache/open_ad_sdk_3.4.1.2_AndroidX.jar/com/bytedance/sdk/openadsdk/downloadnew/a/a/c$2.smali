.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$2;
.super Lcom/bytedance/sdk/adnet/b/j;
.source "LibNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;->a(Ljava/lang/String;[BLjava/lang/String;ILcom/ss/android/a/a/a/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:[B

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;[BLjava/lang/String;)V
    .registers 7

    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$2;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$2;->c:[B

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$2;->d:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$2;->c:[B

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$2;->d:Ljava/lang/String;

    return-object v0
.end method
