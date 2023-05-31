.class Lcom/sigmob/sdk/base/common/utils/ac$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/utils/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/Iterable;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/sigmob/sdk/base/common/utils/ac;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/utils/ac;Landroid/content/Context;ZLjava/lang/Iterable;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->e:Lcom/sigmob/sdk/base/common/utils/ac;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->b:Z

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->c:Ljava/lang/Iterable;

    iput-object p5, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->e:Lcom/sigmob/sdk/base/common/utils/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Lcom/sigmob/sdk/base/common/utils/ac;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->e:Lcom/sigmob/sdk/base/common/utils/ac;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->b:Z

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->c:Ljava/lang/Iterable;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Lcom/sigmob/sdk/base/common/utils/ac;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->e:Lcom/sigmob/sdk/base/common/utils/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Lcom/sigmob/sdk/base/common/utils/ac;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->e:Lcom/sigmob/sdk/base/common/utils/ac;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ac$3;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Lcom/sigmob/sdk/base/common/utils/ac;Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
