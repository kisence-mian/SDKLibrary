.class public final Lcom/mintegral/msdk/click/g;
.super Lcom/mintegral/msdk/click/c;
.source "WebViewSpiderLoader.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/f/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/click/g$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:Lcom/mintegral/msdk/click/d;

.field private d:Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Lcom/mintegral/msdk/base/common/f/b;

.field private i:Lcom/mintegral/msdk/click/e$a;

.field private j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-direct {p0}, Lcom/mintegral/msdk/click/c;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/g;->a:Z

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mintegral/msdk/click/g;->b:J

    .line 37
    iput-boolean v2, p0, Lcom/mintegral/msdk/click/g;->e:Z

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/g;->j:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/mintegral/msdk/click/g;->g:Landroid/content/Context;

    .line 54
    iput-boolean p2, p0, Lcom/mintegral/msdk/click/g;->k:Z

    .line 55
    if-eqz p2, :cond_26

    .line 56
    new-instance v0, Lcom/mintegral/msdk/base/common/f/b;

    invoke-direct {v0, p1, v2}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/g;->h:Lcom/mintegral/msdk/base/common/f/b;

    .line 60
    :goto_25
    return-void

    .line 58
    :cond_26
    new-instance v0, Lcom/mintegral/msdk/base/common/f/b;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/g;->h:Lcom/mintegral/msdk/base/common/f/b;

    goto :goto_25
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/g;J)J
    .registers 4

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/mintegral/msdk/click/g;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/g;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mintegral/msdk/click/g;->d:Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/g;Lcom/mintegral/msdk/click/e$a;)Lcom/mintegral/msdk/click/e$a;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mintegral/msdk/click/g;->i:Lcom/mintegral/msdk/click/e$a;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/g;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/g;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/click/g;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/g;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/e$a;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/click/g;->i:Lcom/mintegral/msdk/click/e$a;

    return-object v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/click/g;)J
    .registers 3

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/mintegral/msdk/click/g;->b:J

    return-wide v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/click/g;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/g;->a:Z

    return v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/click/g;)Z
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/g;->a:Z

    return v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/click/g;->d:Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    return-object v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/d;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/click/g;->c:Lcom/mintegral/msdk/click/d;

    return-object v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/click/g;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/g;->k:Z

    return v0
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .prologue
    .line 488
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->e:I

    if-ne p1, v0, :cond_8

    .line 491
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/g;->e:Z

    if-nez v0, :cond_9

    .line 510
    :cond_8
    :goto_8
    return-void

    .line 495
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/click/g;->j:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/click/g$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/click/g$1;-><init>(Lcom/mintegral/msdk/click/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/click/d;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/rover/d;Lcom/mintegral/msdk/base/entity/CampaignEx;ZZ)V
    .registers 23

    .prologue
    .line 65
    iput-object p2, p0, Lcom/mintegral/msdk/click/g;->c:Lcom/mintegral/msdk/click/d;

    .line 66
    iput-boolean p3, p0, Lcom/mintegral/msdk/click/g;->f:Z

    .line 67
    iget-object v11, p0, Lcom/mintegral/msdk/click/g;->h:Lcom/mintegral/msdk/base/common/f/b;

    new-instance v0, Lcom/mintegral/msdk/click/g$a;

    iget-object v2, p0, Lcom/mintegral/msdk/click/g;->g:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/mintegral/msdk/click/g$a;-><init>(Lcom/mintegral/msdk/click/g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/rover/d;Lcom/mintegral/msdk/base/entity/CampaignEx;ZZ)V

    invoke-virtual {v11, v0, p0}, Lcom/mintegral/msdk/base/common/f/b;->a(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V

    .line 68
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/g;->e:Z

    .line 72
    return-void
.end method
