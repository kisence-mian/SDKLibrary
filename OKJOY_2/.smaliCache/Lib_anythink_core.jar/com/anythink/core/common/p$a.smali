.class final Lcom/anythink/core/common/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/p$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/p$a$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/anythink/core/common/p;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/p;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/anythink/core/common/p$a;->c:Lcom/anythink/core/common/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/p$a$a;

    .line 161
    if-eqz p1, :cond_e

    .line 162
    nop

    .line 1216
    iget-object p1, p1, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 162
    return-object p1

    .line 164
    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/core/common/p$a;Ljava/lang/String;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/anythink/core/common/p$a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/anythink/core/common/p$a;Ljava/lang/String;Lcom/anythink/core/c/c$b;)V
    .registers 3

    .line 131
    nop

    .line 3171
    iget-object p0, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/common/p$a$a;

    .line 3172
    if-eqz p0, :cond_e

    .line 3173
    invoke-static {p0, p2}, Lcom/anythink/core/common/p$a$a;->a(Lcom/anythink/core/common/p$a$a;Lcom/anythink/core/c/c$b;)V

    .line 131
    :cond_e
    return-void
.end method

.method private static synthetic a(Lcom/anythink/core/common/p$a;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 5

    .line 3143
    new-instance v0, Lcom/anythink/core/common/p$a$a;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/p$a$a;-><init>(Lcom/anythink/core/common/p$a;)V

    .line 3144
    iput-object p2, v0, Lcom/anythink/core/common/p$a$a;->a:Lcom/anythink/core/c/c;

    .line 3146
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 3147
    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3148
    iput-object p2, v0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3150
    iget-object p0, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/p$a$a;

    .line 172
    if-eqz p1, :cond_d

    .line 173
    invoke-static {p1, p2}, Lcom/anythink/core/common/p$a$a;->a(Lcom/anythink/core/common/p$a$a;Lcom/anythink/core/c/c$b;)V

    .line 175
    :cond_d
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/anythink/core/common/p$a$a;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/p$a$a;-><init>(Lcom/anythink/core/common/p$a;)V

    .line 144
    iput-object p2, v0, Lcom/anythink/core/common/p$a$a;->a:Lcom/anythink/core/c/c;

    .line 146
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 147
    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    iput-object p2, v0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 150
    iget-object p2, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/p$a;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 131
    nop

    .line 4160
    iget-object p0, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/common/p$a$a;

    .line 4161
    if-eqz p0, :cond_f

    .line 4162
    nop

    .line 4216
    iget-object p0, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4162
    return-object p0

    .line 4164
    :cond_f
    const/4 p0, 0x0

    .line 131
    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/p$a$a;

    .line 184
    if-eqz p1, :cond_d

    .line 185
    invoke-static {p1}, Lcom/anythink/core/common/p$a$a;->a(Lcom/anythink/core/common/p$a$a;)V

    .line 187
    :cond_d
    return-void
.end method

.method private static synthetic c(Lcom/anythink/core/common/p$a;Ljava/lang/String;)V
    .registers 2

    .line 131
    nop

    .line 3183
    iget-object p0, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/common/p$a$a;

    .line 3184
    if-eqz p0, :cond_e

    .line 3185
    invoke-static {p0}, Lcom/anythink/core/common/p$a$a;->a(Lcom/anythink/core/common/p$a$a;)V

    .line 131
    :cond_e
    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 194
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_36

    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/p$a$a;

    .line 2252
    iget-boolean v2, v2, Lcom/anythink/core/common/p$a$a;->c:Z

    .line 200
    if-eqz v2, :cond_36

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_39

    .line 204
    :cond_36
    goto :goto_b

    .line 205
    :cond_37
    monitor-exit p0

    return-void

    .line 192
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method
