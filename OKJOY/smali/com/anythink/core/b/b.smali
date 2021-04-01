.class public final Lcom/anythink/core/b/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/anythink/core/b/b;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    return-void
.end method

.method public static a()Lcom/anythink/core/b/b;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/anythink/core/b/b;->b:Lcom/anythink/core/b/b;

    if-nez v0, :cond_b

    .line 18
    new-instance v0, Lcom/anythink/core/b/b;

    invoke-direct {v0}, Lcom/anythink/core/b/b;-><init>()V

    sput-object v0, Lcom/anythink/core/b/b;->b:Lcom/anythink/core/b/b;

    .line 20
    :cond_b
    sget-object v0, Lcom/anythink/core/b/b;->b:Lcom/anythink/core/b/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/anythink/core/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/c/c$b;)Z
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 29
    .line 1810
    iget-wide v4, p1, Lcom/anythink/core/c/c$b;->A:J

    .line 29
    cmp-long v3, v4, v0

    if-nez v3, :cond_b

    move v0, v2

    .line 38
    :goto_a
    return v0

    .line 33
    :cond_b
    iget-object v3, p0, Lcom/anythink/core/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v0, p0, Lcom/anythink/core/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2810
    :cond_23
    iget-wide v4, p1, Lcom/anythink/core/c/c$b;->A:J

    .line 34
    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_30

    move v0, v2

    .line 35
    goto :goto_a

    .line 38
    :cond_30
    const/4 v0, 0x1

    goto :goto_a
.end method
