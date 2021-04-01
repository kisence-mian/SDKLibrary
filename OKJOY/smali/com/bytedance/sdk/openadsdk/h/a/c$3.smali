.class Lcom/bytedance/sdk/openadsdk/h/a/c$3;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/h/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/c;Ljava/util/HashMap;)V
    .registers 3

    .prologue
    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$3;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$3;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$3;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$3;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 110
    cmp-long v2, v0, v4

    if-gez v2, :cond_22

    .line 111
    const/4 v0, -0x1

    .line 116
    :goto_21
    return v0

    .line 113
    :cond_22
    cmp-long v0, v0, v4

    if-lez v0, :cond_28

    .line 114
    const/4 v0, 0x1

    goto :goto_21

    .line 116
    :cond_28
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 106
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/c$3;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
