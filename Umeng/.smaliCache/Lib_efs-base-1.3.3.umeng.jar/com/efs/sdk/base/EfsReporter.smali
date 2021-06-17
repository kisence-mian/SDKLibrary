.class public Lcom/efs/sdk/base/EfsReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/EfsReporter$Builder;
    }
.end annotation


# static fields
.field private static sControllerCenter:Lcom/efs/sdk/base/a/d/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/efs/sdk/base/EfsReporter;->sControllerCenter:Lcom/efs/sdk/base/a/d/a;

    return-void
.end method

.method private constructor <init>(Lcom/efs/sdk/base/EfsReporter$Builder;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/efs/sdk/base/a/d/a;

    invoke-direct {v0, p1}, Lcom/efs/sdk/base/a/d/a;-><init>(Lcom/efs/sdk/base/EfsReporter$Builder;)V

    sput-object v0, Lcom/efs/sdk/base/EfsReporter;->sControllerCenter:Lcom/efs/sdk/base/a/d/a;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/efs/sdk/base/EfsReporter$Builder;Lcom/efs/sdk/base/EfsReporter$1;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/EfsReporter;-><init>(Lcom/efs/sdk/base/EfsReporter$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/efs/sdk/base/EfsReporter;)Lcom/efs/sdk/base/a/c/a;
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/efs/sdk/base/EfsReporter;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object p0

    return-object p0
.end method

.method private getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;
    .registers 2

    .line 49
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPublicParams(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 120
    invoke-direct {p0}, Lcom/efs/sdk/base/EfsReporter;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/c/a;->a(Ljava/util/Map;)V

    .line 122
    :cond_d
    return-void
.end method

.method public flushRecordLogImmediately(Ljava/lang/String;)V
    .registers 4

    .line 4075
    invoke-static {}, Lcom/efs/sdk/base/a/b/a$b;->a()Lcom/efs/sdk/base/a/b/a;

    move-result-object v0

    .line 107
    nop

    .line 4107
    iget-object v0, v0, Lcom/efs/sdk/base/a/b/a;->c:Lcom/efs/sdk/base/a/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/b/b;->a(B)Lcom/efs/sdk/base/a/b/e;

    move-result-object v0

    .line 4109
    if-eqz v0, :cond_11

    .line 4112
    invoke-interface {v0, p1}, Lcom/efs/sdk/base/a/b/e;->a(Ljava/lang/String;)V

    .line 108
    :cond_11
    return-void
.end method

.method public getAllConfig()Ljava/util/Map;
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

    .line 95
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/c/a/c;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllSdkConfig()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    .line 2178
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 3136
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a/b;->e:Ljava/util/Map;

    .line 2178
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 99
    return-object v1
.end method

.method public getAllSdkConfig([Ljava/lang/String;Lcom/efs/sdk/base/observer/IConfigCallback;)V
    .registers 5

    .line 91
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    .line 1183
    iget-object v1, v0, Lcom/efs/sdk/base/a/c/a/c;->e:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    iget-object p1, v0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 2136
    iget-object p1, p1, Lcom/efs/sdk/base/a/c/a/b;->e:Ljava/util/Map;

    .line 1185
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_16

    .line 1186
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/c/a/c;->d()V

    .line 92
    :cond_16
    return-void
.end method

.method public refreshConfig(Ljava/lang/String;)V
    .registers 3

    .line 111
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/c/a/c;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public registerCallback(ILandroid/webkit/ValueCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;>;)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/efs/sdk/base/EfsReporter;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 4225
    if-eqz p2, :cond_25

    .line 4228
    iget-object v1, v0, Lcom/efs/sdk/base/a/c/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4230
    if-nez v1, :cond_22

    .line 4231
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4232
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4234
    :cond_22
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_25
    return-void
.end method

.method public send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .registers 3

    .line 58
    sget-object v0, Lcom/efs/sdk/base/EfsReporter;->sControllerCenter:Lcom/efs/sdk/base/a/d/a;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 59
    return-void
.end method

.method public sendSyncImediatelly(Ljava/lang/String;ILjava/lang/String;Ljava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 11

    .line 70
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/efs/sdk/base/EfsReporter;->sendSyncImediatelly(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendSyncImediatelly(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 6

    .line 84
    invoke-static {p1, p2, p3, p4, p5}, Lcom/efs/sdk/base/a/d/a;->a(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public setEnableRefreshConfigFromRemote(Z)V
    .registers 3

    .line 115
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    iput-boolean p1, v0, Lcom/efs/sdk/base/a/c/a/c;->c:Z

    .line 116
    return-void
.end method
