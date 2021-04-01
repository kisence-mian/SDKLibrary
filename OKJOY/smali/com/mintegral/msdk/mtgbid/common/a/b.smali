.class public final Lcom/mintegral/msdk/mtgbid/common/a/b;
.super Ljava/lang/Object;
.source "RequesManager.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/mintegral/msdk/mtgbid/out/BidListennning;

.field private e:Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;

.field private f:I

.field private g:Z

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->g:Z

    .line 58
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->b:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->c:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbid/common/a/b;Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;)Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->e:Lcom/mintegral/msdk/mtgbid/common/BidResponsedEx;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbid/common/a/b;Lcom/mintegral/msdk/mtgbid/out/BidResponsed;)V
    .registers 3

    .prologue
    .line 25
    .line 1211
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->d:Lcom/mintegral/msdk/mtgbid/out/BidListennning;

    if-eqz v0, :cond_9

    .line 1212
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->d:Lcom/mintegral/msdk/mtgbid/out/BidListennning;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbid/out/BidListennning;->onSuccessed(Lcom/mintegral/msdk/mtgbid/out/BidResponsed;)V

    .line 25
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbid/common/a/b;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->d:Lcom/mintegral/msdk/mtgbid/out/BidListennning;

    if-eqz v0, :cond_9

    .line 206
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->d:Lcom/mintegral/msdk/mtgbid/out/BidListennning;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbid/out/BidListennning;->onFailed(Ljava/lang/String;)V

    .line 208
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbid/common/a/b;)Z
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgbid/common/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgbid/common/a/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 38
    const/16 v0, 0x128

    iput v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->f:I

    .line 39
    return-void
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->h:J

    .line 47
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/mtgbid/out/BidListennning;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->d:Lcom/mintegral/msdk/mtgbid/out/BidListennning;

    .line 133
    return-void
.end method

.method public final b()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 66
    :try_start_2
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->g:Z

    if-nez v0, :cond_d4

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->g:Z

    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->c:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 73
    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Ljava/lang/String;)V

    .line 75
    :cond_12
    new-instance v0, Lcom/mintegral/msdk/mtgbid/common/b/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgbid/common/b/a;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v1, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 78
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "unit_id"

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "bid_floor"

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "exclude_ids"

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/k;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "install_ids"

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "display_info"

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget v2, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->f:I

    const/16 v3, 0x128

    if-ne v2, v3, :cond_c7

    .line 88
    iget-wide v2, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->h:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_e3

    iget-wide v2, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->i:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_e3

    .line 89
    const-string v2, "unit_size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_8c} :catch_da

    .line 95
    :try_start_8c
    const-string v2, "com.mintegral.msdk.mtgbanner.common.util.BannerUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 96
    const-string v3, "getCloseIds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 97
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_c7

    .line 98
    const-string v3, "close_id"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_c7} :catch_e9
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_c7} :catch_da

    .line 108
    :cond_c7
    :try_start_c7
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->j:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/mtgbid/common/a/b$1;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->a:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/mintegral/msdk/mtgbid/common/a/b$1;-><init>(Lcom/mintegral/msdk/mtgbid/common/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mintegral/msdk/mtgbid/common/b/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    .line 128
    :goto_d3
    return-void

    .line 69
    :cond_d4
    const-string v0, "current unit is biding"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_d9} :catch_da

    goto :goto_d3

    .line 124
    :catch_da
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Ljava/lang/String;)V

    goto :goto_d3

    .line 91
    :cond_e3
    :try_start_e3
    const-string v0, "banner bid required param is missing or error"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Ljava/lang/String;)V

    goto :goto_d3

    .line 101
    :catch_e9
    move-exception v0

    const-string v0, "banner module is miss"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgbid/common/a/b;->a(Ljava/lang/String;)V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_e3 .. :try_end_ef} :catch_da

    goto :goto_d3
.end method

.method public final b(J)V
    .registers 4

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/mintegral/msdk/mtgbid/common/a/b;->i:J

    .line 55
    return-void
.end method
