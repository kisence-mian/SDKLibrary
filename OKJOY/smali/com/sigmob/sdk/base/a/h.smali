.class public Lcom/sigmob/sdk/base/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/h;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/h;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/h;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/a/g;
    .registers 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "create table if not exists "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->c:Ljava/util/Map;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ( "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/sigmob/sdk/base/a/f;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_7e

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->c:Ljava/util/Map;

    invoke-static {v0}, Lcom/sigmob/sdk/base/a/f;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_4e
    const-string v0, " primary key ( "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, " ,"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    :cond_78
    const-string v0, " )"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    :cond_7e
    iget-boolean v2, p0, Lcom/sigmob/sdk/base/a/h;->d:Z

    if-eqz v2, :cond_c5

    const-string v0, "id integer primary key AUTOINCREMENT"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8d
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/h;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->c:Ljava/util/Map;

    invoke-static {v0}, Lcom/sigmob/sdk/base/a/f;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, " ,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    :cond_c5
    const-string v2, "%s primary key "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8d

    :cond_d7
    const-string v0, " ); "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/sigmob/sdk/base/a/g;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/a/g;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/a/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/h;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/h;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/a/h;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->b:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/h;->b:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/sigmob/sdk/base/a/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/a/h;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/h;->c:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/sigmob/sdk/base/a/h;
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/a/h;->d:Z

    return-object p0
.end method
