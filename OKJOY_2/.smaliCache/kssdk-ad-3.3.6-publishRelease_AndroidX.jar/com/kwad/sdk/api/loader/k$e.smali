.class Lcom/kwad/sdk/api/loader/k$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/loader/k$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/api/loader/k$f<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/kwad/sdk/api/loader/k$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/api/loader/k$f<",
            "Lcom/kwad/sdk/api/loader/a$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/loader/k$f;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/api/loader/k$f<",
            "Lcom/kwad/sdk/api/loader/a$a;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/k$e;->a:Lcom/kwad/sdk/api/loader/k$f;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/k$e;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/loader/k$e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/kwad/sdk/api/loader/k$e;Landroid/content/Context;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/loader/k$e;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_1a

    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1a

    :cond_2d
    return-object v1
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/api/loader/k$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/api/loader/k$c<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$e;->a:Lcom/kwad/sdk/api/loader/k$f;

    new-instance v1, Lcom/kwad/sdk/api/loader/k$e$1;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/api/loader/k$e$1;-><init>(Lcom/kwad/sdk/api/loader/k$e;Lcom/kwad/sdk/api/loader/k$c;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/loader/k$f;->a(Lcom/kwad/sdk/api/loader/k$c;)V

    return-void
.end method
