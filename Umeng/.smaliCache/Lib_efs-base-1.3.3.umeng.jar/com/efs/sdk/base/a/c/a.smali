.class public final Lcom/efs/sdk/base/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:J

.field public k:J

.field public l:J

.field public m:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

.field public n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/observer/IEfsReporterObserver;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Boolean;

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/c/a;->d:Z

    .line 54
    iput-boolean v0, p0, Lcom/efs/sdk/base/a/c/a;->e:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/c/a;->f:Z

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/efs/sdk/base/a/c/a;->p:Ljava/lang/Boolean;

    .line 66
    iput-boolean v0, p0, Lcom/efs/sdk/base/a/c/a;->g:Z

    .line 76
    iput-boolean v0, p0, Lcom/efs/sdk/base/a/c/a;->i:Z

    .line 81
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/efs/sdk/base/a/c/a;->j:J

    .line 86
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/efs/sdk/base/a/c/a;->k:J

    .line 91
    iput-wide v0, p0, Lcom/efs/sdk/base/a/c/a;->l:J

    .line 96
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a;->q:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;>;>;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_26

    .line 241
    :cond_19
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 239
    :cond_26
    :goto_26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/Map;
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

    .line 153
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a;->q:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 156
    :cond_9
    return-object v0
.end method

.method public final a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 160
    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_16

    .line 164
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/efs/sdk/base/a/c/a;->q:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 165
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 166
    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a;->q:Ljava/util/Map;

    .line 167
    return-void

    .line 161
    :cond_16
    :goto_16
    return-void
.end method
