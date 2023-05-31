.class Lcom/bytedance/embedapplog/a/j;
.super Lcom/bytedance/embedapplog/a/c;
.source "SourceFile"


# static fields
.field private static final b:[J


# instance fields
.field private final c:Lcom/bytedance/embedapplog/b/h;

.field private final d:Lcom/bytedance/embedapplog/d/b;

.field private final e:Lcom/bytedance/embedapplog/b/i;

.field private f:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    aput-wide v2, v0, v1

    sput-object v0, Lcom/bytedance/embedapplog/a/j;->b:[J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/d/b;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;)V
    .registers 5

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/a/c;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/j;->d:Lcom/bytedance/embedapplog/d/b;

    .line 38
    iput-object p3, p0, Lcom/bytedance/embedapplog/a/j;->c:Lcom/bytedance/embedapplog/b/h;

    .line 39
    iput-object p4, p0, Lcom/bytedance/embedapplog/a/j;->e:Lcom/bytedance/embedapplog/b/i;

    .line 40
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .registers 7

    .prologue
    const-wide/32 v0, 0xea60

    .line 49
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/j;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->B()J

    move-result-wide v2

    .line 50
    cmp-long v4, v2, v0

    if-lez v4, :cond_16

    .line 55
    :cond_d
    :goto_d
    sget-object v2, Lcom/bytedance/embedapplog/a/j;->b:[J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    .line 56
    iget-wide v2, p0, Lcom/bytedance/embedapplog/a/j;->f:J

    add-long/2addr v0, v2

    return-wide v0

    .line 52
    :cond_16
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_d

    move-wide v0, v2

    goto :goto_d
.end method

.method c()[J
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/bytedance/embedapplog/a/j;->b:[J

    return-object v0
.end method

.method public d()Z
    .registers 9

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/embedapplog/a/j;->g:J

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/j;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/h;->B()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_34

    .line 68
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/j;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->d()Lcom/bytedance/embedapplog/a/k;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    .line 72
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/a/k;->a()Lcom/bytedance/embedapplog/d/f;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_34

    .line 74
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/j;->d:Lcom/bytedance/embedapplog/d/b;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/a/k;->b()Z

    move-result v1

    invoke-virtual {v3, v0, v2, v1}, Lcom/bytedance/embedapplog/d/b;->a(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/d/f;Z)Z

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/a/j;->g:J

    .line 80
    :cond_34
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/j;->d:Lcom/bytedance/embedapplog/d/b;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/d/b;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/j;->d:Lcom/bytedance/embedapplog/d/b;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/j;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/embedapplog/a/j;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/embedapplog/d/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 85
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/j;->d:Lcom/bytedance/embedapplog/d/b;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/bytedance/embedapplog/d/b;->a(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/j;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/j;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/embedapplog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_70
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/d/g;

    .line 88
    iget-object v6, v0, Lcom/bytedance/embedapplog/d/g;->h:[B

    iget-object v7, p0, Lcom/bytedance/embedapplog/a/j;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-static {v4, v6, v7}, Lcom/bytedance/embedapplog/c/a;->a([Ljava/lang/String;[BLcom/bytedance/embedapplog/b/h;)I

    move-result v6

    .line 89
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_8c

    .line 90
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 92
    :cond_8c
    iput v6, v0, Lcom/bytedance/embedapplog/d/g;->j:I

    .line 93
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 97
    :cond_92
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9e

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a3

    .line 98
    :cond_9e
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/j;->d:Lcom/bytedance/embedapplog/d/b;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/embedapplog/d/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 101
    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_e0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/embedapplog/a/j;->f:J

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_df
    return v0

    :cond_e0
    const/4 v0, 0x0

    goto :goto_df
.end method

.method e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    const-string v0, "s"

    return-object v0
.end method
