.class public final Lcom/anythink/core/b/d/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/anythink/core/b/d/a;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/b/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/d/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    return-void
.end method

.method public static a()Lcom/anythink/core/b/d/a;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/anythink/core/b/d/a;->b:Lcom/anythink/core/b/d/a;

    if-nez v0, :cond_b

    .line 20
    new-instance v0, Lcom/anythink/core/b/d/a;

    invoke-direct {v0}, Lcom/anythink/core/b/d/a;-><init>()V

    sput-object v0, Lcom/anythink/core/b/d/a;->b:Lcom/anythink/core/b/d/a;

    .line 22
    :cond_b
    sget-object v0, Lcom/anythink/core/b/d/a;->b:Lcom/anythink/core/b/d/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/core/b/d/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/b/c/g;)V
    .registers 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/anythink/core/b/d/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/anythink/core/b/c/g;
    .registers 8

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/core/b/d/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/g;

    .line 35
    if-eqz v0, :cond_15

    iget-wide v2, v0, Lcom/anythink/core/b/c/g;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_15

    .line 40
    :goto_14
    return-object v0

    .line 38
    :cond_15
    iget-object v0, p0, Lcom/anythink/core/b/d/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v0, 0x0

    goto :goto_14
.end method
