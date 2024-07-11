.class public Lcom/efs/sdk/base/http/HttpEnv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/http/HttpEnv$SingletonHolder;
    }
.end annotation


# instance fields
.field private mHttpListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/a/h/a/b<",
            "Lcom/efs/sdk/base/http/HttpResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHttpUtil:Lcom/efs/sdk/base/http/IHttpUtil;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/efs/sdk/base/a/h/b/a;->a()Lcom/efs/sdk/base/a/h/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/base/http/HttpEnv;->mHttpUtil:Lcom/efs/sdk/base/http/IHttpUtil;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/http/HttpEnv;->mHttpListenerList:Ljava/util/List;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/efs/sdk/base/http/HttpEnv$1;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/efs/sdk/base/http/HttpEnv;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/efs/sdk/base/http/HttpEnv;
    .registers 1

    .line 39
    # getter for: Lcom/efs/sdk/base/http/HttpEnv$SingletonHolder;->INSTANCE:Lcom/efs/sdk/base/http/HttpEnv;
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv$SingletonHolder;->access$100()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/efs/sdk/base/http/AbsHttpListener;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/efs/sdk/base/http/HttpEnv;->mHttpListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public getHttpListenerList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/a/h/a/b<",
            "Lcom/efs/sdk/base/http/HttpResponse;",
            ">;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/efs/sdk/base/http/HttpEnv;->mHttpListenerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/efs/sdk/base/http/HttpEnv;->mHttpUtil:Lcom/efs/sdk/base/http/IHttpUtil;

    return-object v0
.end method

.method public removeListener(Lcom/efs/sdk/base/http/AbsHttpListener;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/efs/sdk/base/http/HttpEnv;->mHttpListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public setHttpUtil(Lcom/efs/sdk/base/http/IHttpUtil;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/efs/sdk/base/http/HttpEnv;->mHttpUtil:Lcom/efs/sdk/base/http/IHttpUtil;

    .line 48
    return-void
.end method
