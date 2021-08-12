.class public final Lcom/anythink/core/b/e;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/anythink/core/b/e;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/anythink/core/api/MediationBidManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    return-void
.end method

.method public static a()Lcom/anythink/core/b/e;
    .registers 1

    .line 34
    sget-object v0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/e;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/anythink/core/b/e;

    invoke-direct {v0}, Lcom/anythink/core/b/e;-><init>()V

    sput-object v0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/e;

    .line 37
    :cond_b
    sget-object v0, Lcom/anythink/core/b/e;->b:Lcom/anythink/core/b/e;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/anythink/core/api/MediationBidManager;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/anythink/core/b/e;->c:Lcom/anythink/core/api/MediationBidManager;

    .line 81
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/anythink/core/b/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/16 v0, 0x42

    if-ne p2, v0, :cond_16

    .line 56
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/anythink/core/common/b/e;->t:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_16
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/common/d/l;)V
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/anythink/core/b/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget v0, p2, Lcom/anythink/core/common/d/l;->d:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1c

    .line 46
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/b/e;->t:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/l;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1c
    return-void
.end method

.method public final b()Lcom/anythink/core/api/MediationBidManager;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/anythink/core/b/e;->c:Lcom/anythink/core/api/MediationBidManager;

    return-object v0
.end method

.method public final b(Ljava/lang/String;I)Lcom/anythink/core/common/d/l;
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/anythink/core/b/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/d/l;

    .line 66
    if-nez v0, :cond_2f

    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 67
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p2

    sget-object v1, Lcom/anythink/core/common/b/e;->t:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p2, v1, p1, v2}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 69
    invoke-static {p2}, Lcom/anythink/core/common/d/l;->a(Ljava/lang/String;)Lcom/anythink/core/common/d/l;

    move-result-object v0

    .line 71
    :cond_28
    if-eqz v0, :cond_2f

    .line 72
    iget-object p2, p0, Lcom/anythink/core/b/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_2f
    return-object v0
.end method
