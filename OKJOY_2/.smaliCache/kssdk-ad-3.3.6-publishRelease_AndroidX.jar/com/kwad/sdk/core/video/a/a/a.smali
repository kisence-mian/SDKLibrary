.class public Lcom/kwad/sdk/core/video/a/a/a;
.super Lcom/kwad/sdk/core/report/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/report/c<",
        "Lcom/kwad/sdk/core/video/a/a/c;",
        "Lcom/kwad/sdk/core/video/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/kwad/sdk/core/video/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwad/sdk/core/video/a/a/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/video/a/a/a;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/video/a/a/a;->a:Lcom/kwad/sdk/core/video/a/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/report/c;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/kwad/sdk/core/video/a/a/a;->a:Lcom/kwad/sdk/core/video/a/a/a;

    new-instance v1, Lcom/kwad/sdk/core/video/a/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/video/a/a/a$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/a/a/a;->a(Lcom/kwad/sdk/core/report/h;)V

    return-void
.end method

.method public static c()Lcom/kwad/sdk/core/video/a/a/a;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/video/a/a/a;->a:Lcom/kwad/sdk/core/video/a/a/a;

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Ljava/util/List;)Lcom/kwad/sdk/core/network/g;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/video/a/a/a;->b(Ljava/util/List;)Lcom/kwad/sdk/core/video/a/a/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/report/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected b(Ljava/util/List;)Lcom/kwad/sdk/core/video/a/a/b;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/video/a/a/b;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/video/a/a/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "mplrep"

    return-object v0
.end method
