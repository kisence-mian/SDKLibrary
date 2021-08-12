.class Lcom/bytedance/embedapplog/bt$1;
.super Lcom/bytedance/embedapplog/bs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/embedapplog/bs<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/embedapplog/bt;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/bt;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/bytedance/embedapplog/bt$1;->a:Lcom/bytedance/embedapplog/bt;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/bs;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/bt$1;->c([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected varargs c([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3

    .line 20
    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/embedapplog/bt$1;->a:Lcom/bytedance/embedapplog/bt;

    invoke-static {v0}, Lcom/bytedance/embedapplog/bt;->a(Lcom/bytedance/embedapplog/bt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/embedapplog/by;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
