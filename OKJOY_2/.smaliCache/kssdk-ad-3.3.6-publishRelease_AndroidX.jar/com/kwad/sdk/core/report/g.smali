.class public Lcom/kwad/sdk/core/report/g;
.super Lcom/kwad/sdk/core/report/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/report/c<",
        "Lcom/kwad/sdk/core/report/ReportAction;",
        "Lcom/kwad/sdk/core/report/f;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static b:Lcom/kwad/sdk/core/report/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kwad/sdk/core/report/g;->a:Z

    new-instance v0, Lcom/kwad/sdk/core/report/g;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/g;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/report/g;->b:Lcom/kwad/sdk/core/report/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/report/c;-><init>()V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/report/a;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    iget-wide v0, p0, Lcom/kwad/sdk/core/report/a;->c:J

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/report/g;->b(J)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/kwad/sdk/core/report/g;->c(Lcom/kwad/sdk/core/report/a;)V

    goto :goto_12

    :cond_f
    invoke-static {p0}, Lcom/kwad/sdk/core/report/g;->b(Lcom/kwad/sdk/core/report/a;)V

    :goto_12
    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/report/a;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/kwad/sdk/core/report/g;->b:Lcom/kwad/sdk/core/report/g;

    new-instance v1, Lcom/kwad/sdk/core/report/g$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/report/g$1;-><init>(Lcom/kwad/sdk/core/report/a;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/h;)V

    return-void
.end method

.method private static b(J)Z
    .registers 3

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->ae:Lcom/kwad/sdk/core/config/item/i;

    invoke-virtual {v0, p0, p1}, Lcom/kwad/sdk/core/config/item/i;->a(J)Z

    move-result p0

    return p0
.end method

.method public static c()Lcom/kwad/sdk/core/report/g;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/report/g;->b:Lcom/kwad/sdk/core/report/g;

    return-object v0
.end method

.method public static c(Lcom/kwad/sdk/core/report/a;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/kwad/sdk/core/report/g;->b:Lcom/kwad/sdk/core/report/g;

    new-instance v1, Lcom/kwad/sdk/core/report/g$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/report/g$2;-><init>(Lcom/kwad/sdk/core/report/a;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/report/g;->b(Lcom/kwad/sdk/core/report/h;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/util/List;)Lcom/kwad/sdk/core/network/g;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/report/g;->b(Ljava/util/List;)Lcom/kwad/sdk/core/report/f;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    sget-boolean v0, Lcom/kwad/sdk/core/report/g;->a:Z

    if-nez v0, :cond_36

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/report/c;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/kwad/sdk/core/report/m;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/kwad/sdk/core/report/m;->a()Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/core/config/item/b;->a(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatchReporter"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    invoke-static {p1}, Lcom/kwad/sdk/core/report/l;->a(Landroid/content/Context;)Lcom/kwad/sdk/core/report/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/i;)V

    :cond_33
    const/4 p1, 0x1

    sput-boolean p1, Lcom/kwad/sdk/core/report/g;->a:Z

    :cond_36
    return-void
.end method

.method protected b(Ljava/util/List;)Lcom/kwad/sdk/core/report/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/report/ReportAction;",
            ">;)",
            "Lcom/kwad/sdk/core/report/f;"
        }
    .end annotation

    new-instance v0, Lcom/kwad/sdk/core/report/f;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/report/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "barep"

    return-object v0
.end method
