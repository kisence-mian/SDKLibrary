.class Lcom/bytedance/sdk/openadsdk/h/a/c$5;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/c;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/h/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/c;Ljava/util/HashSet;)V
    .registers 3

    .prologue
    .line 325
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$5;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$5;->a:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$5;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 330
    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 331
    :catch_16
    move-exception v0

    goto :goto_6

    .line 334
    :cond_18
    return-void
.end method
