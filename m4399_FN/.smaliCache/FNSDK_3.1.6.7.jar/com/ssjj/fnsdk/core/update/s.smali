.class Lcom/ssjj/fnsdk/core/update/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/s;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/s;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    const-string p1, ".p"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, ".apk"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_10
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/s;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    const/4 p1, 0x1

    return p1

    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p1, 0x0

    return p1
.end method
