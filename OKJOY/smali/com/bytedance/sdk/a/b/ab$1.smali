.class final Lcom/bytedance/sdk/a/b/ab$1;
.super Lcom/bytedance/sdk/a/b/ab;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/ab;->a(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)Lcom/bytedance/sdk/a/b/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/b/u;

.field final synthetic b:J

.field final synthetic c:Lcom/bytedance/sdk/a/a/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)V
    .registers 5

    .prologue
    .line 224
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/ab$1;->a:Lcom/bytedance/sdk/a/b/u;

    iput-wide p2, p0, Lcom/bytedance/sdk/a/b/ab$1;->b:J

    iput-object p4, p0, Lcom/bytedance/sdk/a/b/ab$1;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/ab$1;->b:J

    return-wide v0
.end method

.method public c()Lcom/bytedance/sdk/a/a/e;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/ab$1;->c:Lcom/bytedance/sdk/a/a/e;

    return-object v0
.end method
