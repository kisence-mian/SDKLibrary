.class final Lcom/mintegral/msdk/mtgbanner/common/c/a$2;
.super Ljava/lang/Object;
.source "BannerLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/mtgbanner/common/b/b;

.field final synthetic c:Lcom/mintegral/msdk/mtgbanner/common/a/b;

.field final synthetic d:Lcom/mintegral/msdk/mtgbanner/common/c/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/a;Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/b/b;Lcom/mintegral/msdk/mtgbanner/common/a/b;)V
    .registers 5

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->b:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    iput-object p4, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->c:Lcom/mintegral/msdk/mtgbanner/common/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 170
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 171
    if-eqz v0, :cond_2b

    .line 189
    :cond_2a
    :goto_2a
    return-void

    .line 175
    :cond_2b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->b(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 176
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->b(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    const/4 v1, 0x2

    if-eq v0, v1, :cond_51

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8b

    .line 180
    :cond_51
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doUnitRotation: autoRotationStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " && unitId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->c(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Lcom/mintegral/msdk/mtgbanner/common/util/a;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 183
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->c(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Lcom/mintegral/msdk/mtgbanner/common/util/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->b:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    const-string v2, "banner load failed because env is exception"

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 188
    :cond_8b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->d:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->c:Lcom/mintegral/msdk/mtgbanner/common/a/b;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;->b:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    goto :goto_2a
.end method
