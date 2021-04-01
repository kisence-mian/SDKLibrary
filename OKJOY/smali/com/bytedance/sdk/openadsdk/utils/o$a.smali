.class Lcom/bytedance/sdk/openadsdk/utils/o$a;
.super Ljava/lang/Object;
.source "InitChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/o$a;->a:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/o$a;->b:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/o$a;->c:Ljava/lang/String;

    .line 323
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 327
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    if-eqz v0, :cond_26

    .line 328
    check-cast p1, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/o$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/o$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/utils/o$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/o$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/o$a;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/utils/o$a;->c:Ljava/lang/String;

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    .line 332
    :goto_23
    return v0

    .line 330
    :cond_24
    const/4 v0, 0x0

    goto :goto_23

    .line 332
    :cond_26
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_23
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 339
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/o$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" path=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/o$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_34

    move-result-object v0

    .line 342
    :goto_33
    return-object v0

    .line 340
    :catch_34
    move-exception v0

    .line 342
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method
