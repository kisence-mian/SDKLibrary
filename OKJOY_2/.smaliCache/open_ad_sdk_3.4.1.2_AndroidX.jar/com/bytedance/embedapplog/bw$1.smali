.class final Lcom/bytedance/embedapplog/bw$1;
.super Lcom/bytedance/embedapplog/bs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/embedapplog/bs<",
        "Lcom/bytedance/embedapplog/ce;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/bytedance/embedapplog/bs;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/bw$1;->c([Ljava/lang/Object;)Lcom/bytedance/embedapplog/ce;

    move-result-object p1

    return-object p1
.end method

.method protected varargs c([Ljava/lang/Object;)Lcom/bytedance/embedapplog/ce;
    .registers 4

    .line 33
    new-instance v0, Lcom/bytedance/embedapplog/ce;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/bytedance/embedapplog/ce;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
