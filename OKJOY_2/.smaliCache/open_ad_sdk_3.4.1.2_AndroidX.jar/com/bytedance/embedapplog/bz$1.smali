.class final Lcom/bytedance/embedapplog/bz$1;
.super Lcom/bytedance/embedapplog/bs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/embedapplog/bs<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/bytedance/embedapplog/bs;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/bz$1;->c([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected varargs c([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3

    .line 27
    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    const-string v0, "com.huawei.hwid"

    invoke-static {p1, v0}, Lcom/bytedance/embedapplog/by;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
