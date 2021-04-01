.class public final Lcom/mintegral/msdk/mtgnative/c/c$a;
.super Lcom/mintegral/msdk/mtgnative/f/a/b;
.source "NativePreloadController.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/c/c;

.field private b:I

.field private c:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/mintegral/msdk/out/AdMobClickListener;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/lang/Runnable;

.field private l:Z

.field private m:Lcom/mintegral/msdk/b/a/a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgnative/c/c;I)V
    .registers 4

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    .line 1429
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/f/a/b;-><init>()V

    .line 1398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->i:Ljava/util/List;

    .line 1433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->j:Z

    .line 1437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->l:Z

    .line 1430
    iput p2, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->b:I

    .line 1431
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/c$a;I)I
    .registers 2

    .prologue
    .line 1390
    iput p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->c:I

    return p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/c$a;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgnative/c/c$a;)I
    .registers 2

    .prologue
    .line 1390
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->g:I

    return v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgnative/c/c$a;)I
    .registers 2

    .prologue
    .line 1390
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->f:I

    return v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/mtgnative/c/c$a;)I
    .registers 2

    .prologue
    .line 1390
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->e:I

    return v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/mtgnative/c/c$a;)I
    .registers 2

    .prologue
    .line 1390
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->c:I

    return v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/mtgnative/c/c$a;)I
    .registers 2

    .prologue
    .line 1390
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->b:I

    return v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/mtgnative/c/c$a;)Z
    .registers 2

    .prologue
    .line 1390
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->j:Z

    return v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/mtgnative/c/c$a;)Z
    .registers 2

    .prologue
    .line 1390
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/mtgnative/c/c$a;)Lcom/mintegral/msdk/b/a/a;
    .registers 2

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->m:Lcom/mintegral/msdk/b/a/a;

    return-object v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/mtgnative/c/c$a;)Lcom/mintegral/msdk/out/AdMobClickListener;
    .registers 2

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->h:Lcom/mintegral/msdk/out/AdMobClickListener;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 1607
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/c$a$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/mintegral/msdk/mtgnative/c/c$a$2;-><init>(Lcom/mintegral/msdk/mtgnative/c/c$a;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1641
    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/lang/Thread;)V

    .line 1642
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/b/a/a;)V
    .registers 2

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->m:Lcom/mintegral/msdk/b/a/a;

    .line 1443
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 5

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Lcom/mintegral/msdk/mtgnative/c/c;)Z

    .line 1465
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->m:Lcom/mintegral/msdk/b/a/a;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ZLcom/mintegral/msdk/b/a/a;Ljava/lang/String;)V

    .line 1466
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/c$a$1;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/mtgnative/c/c$a$1;-><init>(Lcom/mintegral/msdk/mtgnative/c/c$a;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1602
    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/lang/Thread;)V

    .line 1603
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 2

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->h:Lcom/mintegral/msdk/out/AdMobClickListener;

    .line 1402
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->k:Ljava/lang/Runnable;

    .line 1650
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->i:Ljava/util/List;

    .line 1406
    return-void
.end method

.method public final a_()V
    .registers 2

    .prologue
    .line 1454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->j:Z

    .line 1455
    return-void
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 1409
    iput p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->g:I

    .line 1410
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1654
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/c$a$3;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/mtgnative/c/c$a$3;-><init>(Lcom/mintegral/msdk/mtgnative/c/c$a;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1692
    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/lang/Thread;)V

    .line 1693
    return-void
.end method

.method public final c(I)V
    .registers 2

    .prologue
    .line 1413
    iput p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->e:I

    .line 1414
    return-void
.end method

.method public final d(I)V
    .registers 2

    .prologue
    .line 1417
    iput p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->f:I

    .line 1418
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 1425
    iput p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->c:I

    .line 1426
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a;->l:Z

    .line 1450
    return-void
.end method
