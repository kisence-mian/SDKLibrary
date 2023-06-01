.class Lcom/ssjj/fnsdk/core/stat/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/stat/d;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/stat/d;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/g;->a:Lcom/ssjj/fnsdk/core/stat/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    const-string p1, "fnstat_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/g;->a:Lcom/ssjj/fnsdk/core/stat/d;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/stat/d;->a(Lcom/ssjj/fnsdk/core/stat/d;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    return p1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method
