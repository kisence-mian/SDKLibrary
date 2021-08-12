.class public Lcom/bytedance/tea/crash/b;
.super Ljava/lang/Object;
.source "CallCenter.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/tea/crash/c;",
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/bytedance/tea/crash/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/b;->a:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/b;->b:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/b;->c:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/b;->d:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/b;->e:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/b;->f:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/tea/crash/b;->g:Lcom/bytedance/tea/crash/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/c;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/tea/crash/c;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/a;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/bytedance/tea/crash/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/bytedance/tea/crash/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method a(Lcom/bytedance/tea/crash/f;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/bytedance/tea/crash/b;->g:Lcom/bytedance/tea/crash/f;

    .line 189
    return-void
.end method

.method a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/bytedance/tea/crash/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 108
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/e;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/bytedance/tea/crash/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/e;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/bytedance/tea/crash/b;->f:Ljava/util/List;

    return-object v0
.end method

.method public d()Lcom/bytedance/tea/crash/f;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/bytedance/tea/crash/b;->g:Lcom/bytedance/tea/crash/f;

    return-object v0
.end method
