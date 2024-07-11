.class public final Lcom/anythink/core/common/e;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/e$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/anythink/core/c/c$b;

.field protected b:Lcom/anythink/core/common/d/d;

.field protected c:Lcom/anythink/core/c/c;

.field d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/d;)V
    .registers 7

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/e;->e:Ljava/lang/String;

    .line 50
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/core/common/e;->d:Z

    .line 46
    iput-object p5, p0, Lcom/anythink/core/common/e;->a:Lcom/anythink/core/c/c$b;

    .line 47
    iput-object p6, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    .line 48
    return-void
.end method

.method protected static a(JLcom/anythink/core/common/b/b;)V
    .registers 5

    .line 116
    invoke-virtual {p2}, Lcom/anythink/core/common/b/b;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object p2

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-virtual {p2, v0, v1}, Lcom/anythink/core/common/d/d;->c(J)V

    .line 118
    return-void
.end method

.method private a(JLcom/anythink/core/common/b/b;Lcom/anythink/core/api/AdError;)V
    .registers 8

    .line 147
    invoke-virtual {p3}, Lcom/anythink/core/common/b/b;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object p3

    .line 149
    iget-boolean v0, p0, Lcom/anythink/core/common/e;->d:Z

    if-nez v0, :cond_1f

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/e;->d:Z

    .line 152
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-static {p3, v0, p4, v1, v2}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ILcom/anythink/core/api/AdError;J)V

    .line 153
    sget-object p1, Lcom/anythink/core/common/b/e$e;->b:Ljava/lang/String;

    sget-object p2, Lcom/anythink/core/common/b/e$e;->g:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p1, p2, p4}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1f
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 12

    .line 79
    iget-object v0, p0, Lcom/anythink/core/common/e;->a:Lcom/anythink/core/c/c$b;

    invoke-static {v0}, Lcom/anythink/core/common/g/i;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    .line 80
    if-nez v0, :cond_9

    .line 81
    return-void

    .line 84
    :cond_9
    iget-object v1, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    .line 2405
    const/4 v2, 0x1

    iput v2, v1, Lcom/anythink/core/common/d/d;->m:I

    .line 85
    iget-object v1, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    .line 2414
    const/4 v3, 0x0

    iput v3, v1, Lcom/anythink/core/common/d/d;->n:I

    .line 86
    iget-object v1, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    .line 2423
    iput v3, v1, Lcom/anythink/core/common/d/d;->o:I

    .line 88
    iget-object v1, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v0, v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->setTrackingInfo(Lcom/anythink/core/common/d/d;)V

    .line 89
    iget-object v1, p0, Lcom/anythink/core/common/e;->a:Lcom/anythink/core/c/c$b;

    invoke-virtual {v0, v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->setmUnitgroupInfo(Lcom/anythink/core/c/c$b;)V

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 94
    invoke-static {p1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    iget-object v6, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v1, v2, v6}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 96
    iget-object v1, p0, Lcom/anythink/core/common/e;->e:Ljava/lang/String;

    const-string v2, "start to refresh Ad---"

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->a:Ljava/lang/String;

    sget-object v6, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v1, v2, v6, v7}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/e;->c:Lcom/anythink/core/c/c;

    .line 104
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v6}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput-boolean v3, p0, Lcom/anythink/core/common/e;->d:Z

    .line 108
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/o;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 110
    iget-object v1, p0, Lcom/anythink/core/common/e;->c:Lcom/anythink/core/c/c;

    iget-object v2, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    .line 111
    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)Ljava/util/Map;

    move-result-object v8

    new-instance v9, Lcom/anythink/core/common/e$a;

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p0

    move-wide v3, v4

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/anythink/core/common/e$a;-><init>(Lcom/anythink/core/common/e;JLcom/anythink/core/api/ATBaseAdAdapter;B)V

    .line 110
    invoke-virtual {v0, p1, v8, v7, v9}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalLoad(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATCustomLoadListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected final a(JLcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/anythink/core/api/ATBaseAdAdapter;",
            "Ljava/util/List<",
            "+",
            "Lcom/anythink/core/api/BaseAd;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-virtual {p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 130
    iget-boolean v1, p0, Lcom/anythink/core/common/e;->d:Z

    if-nez v1, :cond_2c

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/core/common/e;->d:Z

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/d/d;->d(J)V

    .line 134
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 136
    sget-object p1, Lcom/anythink/core/common/b/e$e;->b:Ljava/lang/String;

    sget-object p2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, p1, p2, v1}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2c
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->q()I

    move-result v4

    iget-object p1, p0, Lcom/anythink/core/common/e;->a:Lcom/anythink/core/c/c$b;

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v7

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;ILcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;J)Lcom/anythink/core/common/d/ab;

    .line 143
    return-void
.end method

.method public final onFinish()V
    .registers 12

    .line 61
    iget-object v0, p0, Lcom/anythink/core/common/e;->a:Lcom/anythink/core/c/c$b;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    if-nez v0, :cond_a

    goto/16 :goto_be

    .line 66
    :cond_a
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/anythink/core/common/d;->b()Landroid/content/Context;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1f

    .line 71
    return-void

    .line 74
    :cond_1f
    nop

    .line 1079
    iget-object v1, p0, Lcom/anythink/core/common/e;->a:Lcom/anythink/core/c/c$b;

    invoke-static {v1}, Lcom/anythink/core/common/g/i;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    .line 1080
    if-eqz v1, :cond_bd

    .line 1084
    iget-object v2, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    .line 1405
    const/4 v3, 0x1

    iput v3, v2, Lcom/anythink/core/common/d/d;->m:I

    .line 1085
    iget-object v2, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    .line 1414
    const/4 v4, 0x0

    iput v4, v2, Lcom/anythink/core/common/d/d;->n:I

    .line 1086
    iget-object v2, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    .line 1423
    iput v4, v2, Lcom/anythink/core/common/d/d;->o:I

    .line 1088
    iget-object v2, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v1, v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->setTrackingInfo(Lcom/anythink/core/common/d/d;)V

    .line 1089
    iget-object v2, p0, Lcom/anythink/core/common/e;->a:Lcom/anythink/core/c/c$b;

    invoke-virtual {v1, v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->setmUnitgroupInfo(Lcom/anythink/core/c/c$b;)V

    .line 1091
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1094
    invoke-static {v0}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v2

    iget-object v7, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v2, v3, v7}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 1096
    iget-object v2, p0, Lcom/anythink/core/common/e;->e:Ljava/lang/String;

    const-string v3, "start to refresh Ad---"

    invoke-static {v2, v3}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v2, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->a:Ljava/lang/String;

    sget-object v7, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v2, v3, v7, v8}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/core/common/e;->c:Lcom/anythink/core/c/c;

    .line 1104
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v7}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iput-boolean v4, p0, Lcom/anythink/core/common/e;->d:Z

    .line 1108
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/o;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 1110
    iget-object v2, p0, Lcom/anythink/core/common/e;->c:Lcom/anythink/core/c/c;

    iget-object v3, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    .line 1111
    invoke-virtual {v3}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/common/e;->b:Lcom/anythink/core/common/d/d;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)Ljava/util/Map;

    move-result-object v9

    new-instance v10, Lcom/anythink/core/common/e$a;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v3, p0

    move-wide v4, v5

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/anythink/core/common/e$a;-><init>(Lcom/anythink/core/common/e;JLcom/anythink/core/api/ATBaseAdAdapter;B)V

    .line 1110
    invoke-virtual {v1, v0, v9, v8, v10}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalLoad(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATCustomLoadListener;)V

    .line 76
    :cond_bd
    return-void

    .line 62
    :cond_be
    :goto_be
    return-void
.end method

.method public final onTick(J)V
    .registers 3

    .line 55
    return-void
.end method
