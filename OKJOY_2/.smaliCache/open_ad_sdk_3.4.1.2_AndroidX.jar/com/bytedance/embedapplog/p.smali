.class Lcom/bytedance/embedapplog/p;
.super Lcom/bytedance/embedapplog/i;
.source "SourceFile"


# static fields
.field private static final b:[J


# instance fields
.field private final c:Lcom/bytedance/embedapplog/z;

.field private final d:Lcom/bytedance/embedapplog/as;

.field private final e:Lcom/bytedance/embedapplog/aa;

.field private f:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    aput-wide v2, v0, v1

    sput-object v0, Lcom/bytedance/embedapplog/p;->b:[J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/as;Lcom/bytedance/embedapplog/z;Lcom/bytedance/embedapplog/aa;)V
    .registers 5

    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/i;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/bytedance/embedapplog/p;->d:Lcom/bytedance/embedapplog/as;

    .line 38
    iput-object p3, p0, Lcom/bytedance/embedapplog/p;->c:Lcom/bytedance/embedapplog/z;

    .line 39
    iput-object p4, p0, Lcom/bytedance/embedapplog/p;->e:Lcom/bytedance/embedapplog/aa;

    .line 40
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .registers 7

    .line 49
    iget-object v0, p0, Lcom/bytedance/embedapplog/p;->c:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->y()J

    move-result-wide v0

    .line 50
    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    .line 51
    move-wide v0, v2

    goto :goto_16

    .line 52
    :cond_f
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_16

    .line 53
    move-wide v0, v2

    .line 55
    :cond_16
    :goto_16
    sget-object v2, Lcom/bytedance/embedapplog/p;->b:[J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    .line 56
    iget-wide v2, p0, Lcom/bytedance/embedapplog/p;->f:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method c()[J
    .registers 2

    .line 61
    sget-object v0, Lcom/bytedance/embedapplog/p;->b:[J

    return-object v0
.end method

.method public d()Z
    .registers 9

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/embedapplog/p;->g:J

    iget-object v4, p0, Lcom/bytedance/embedapplog/p;->c:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/z;->y()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_34

    .line 68
    iget-object v0, p0, Lcom/bytedance/embedapplog/p;->e:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/bytedance/embedapplog/k;->d()Lcom/bytedance/embedapplog/q;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    .line 72
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/q;->a()Lcom/bytedance/embedapplog/aw;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_34

    .line 74
    iget-object v3, p0, Lcom/bytedance/embedapplog/p;->d:Lcom/bytedance/embedapplog/as;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/q;->b()Z

    move-result v1

    invoke-virtual {v3, v0, v2, v1}, Lcom/bytedance/embedapplog/as;->a(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/aw;Z)Z

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/p;->g:J

    .line 80
    :cond_34
    iget-object v0, p0, Lcom/bytedance/embedapplog/p;->d:Lcom/bytedance/embedapplog/as;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/as;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    iget-object v3, p0, Lcom/bytedance/embedapplog/p;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/p;->e:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/aa;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/embedapplog/ap;->a(Landroid/content/Context;Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/embedapplog/ax;

    .line 86
    iget-object v6, v5, Lcom/bytedance/embedapplog/ax;->h:[B

    iget-object v7, p0, Lcom/bytedance/embedapplog/p;->c:Lcom/bytedance/embedapplog/z;

    invoke-static {v3, v6, v7}, Lcom/bytedance/embedapplog/ao;->a([Ljava/lang/String;[BLcom/bytedance/embedapplog/z;)I

    move-result v6

    .line 87
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_78

    .line 88
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 90
    :cond_78
    iput v6, v5, Lcom/bytedance/embedapplog/ax;->j:I

    .line 91
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_7d
    goto :goto_5c

    .line 95
    :cond_7e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_8a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8f

    .line 96
    :cond_8a
    iget-object v3, p0, Lcom/bytedance/embedapplog/p;->d:Lcom/bytedance/embedapplog/as;

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/embedapplog/as;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 99
    :cond_8f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/p;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bytedance/embedapplog/bo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_cc

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/p;->f:J

    .line 102
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_cc
    const/4 v0, 0x0

    return v0
.end method

.method e()Ljava/lang/String;
    .registers 2

    .line 110
    const-string v0, "s"

    return-object v0
.end method
