.class public Lcom/sigmob/sdk/base/common/e;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/Integer;

.field private static final c:Ljava/lang/Integer;

.field private static final d:Ljava/lang/Integer;

.field private static final e:Ljava/lang/Integer;

.field private static f:Lcom/sigmob/sdk/base/common/e; = null

.field private static g:Lcom/sigmob/sdk/base/models/BaseAdUnit; = null

.field private static final i:J = 0x7d000L

.field private static final j:J = 0xf000L

.field private static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/sigmob/volley/toolbox/h;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/sigmob/sdk/base/common/f;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sigmob/sdk/base/common/g;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/common/e;->b:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/common/e;->c:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/common/e;->d:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/common/e;->e:Ljava/lang/Integer;

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/common/e;->f:Lcom/sigmob/sdk/base/common/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/e;->k:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->o:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->p:Ljava/util/HashMap;

    new-instance v0, Lcom/sigmob/sdk/base/common/e$6;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/common/e$6;-><init>(Lcom/sigmob/sdk/base/common/e;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/e;->a:Lcom/sigmob/volley/toolbox/h;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/e;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/g;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/e;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/g;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/common/g;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/common/g;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/common/g;)V
    .registers 6

    if-nez p2, :cond_21

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-direct {p0, p1, p3}, Lcom/sigmob/sdk/base/common/e;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/g;)V

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->p:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_21
    if-eqz p3, :cond_12

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-interface {p3, p1, v0, p2}, Lcom/sigmob/sdk/base/common/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V
    .registers 12

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "issuccess"

    iget v2, p1, Lcom/sigmob/volley/toolbox/d;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iscached"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duration"

    iget-wide v2, p1, Lcom/sigmob/volley/toolbox/d;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_size"

    iget-wide v2, p1, Lcom/sigmob/volley/toolbox/d;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file_name"

    iget-object v2, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "30"

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a([Ljava/io/File;I)[Ljava/io/File;
    .registers 8

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v0, v1

    :goto_12
    array-length v3, p0

    if-ge v0, v3, :cond_1b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_24

    :cond_1b
    new-array v0, v1, [Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    goto :goto_7

    :cond_24
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public static a([Ljava/io/File;JJ)[Ljava/io/File;
    .registers 14

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v0, v1

    :goto_12
    array-length v3, p0

    if-ge v0, v3, :cond_4a

    aget-object v3, p0, v0

    sub-long v4, p1, p3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_47

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_4a
    new-array v0, v1, [Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    goto :goto_7
.end method

.method public static b()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/e;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/common/e;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/g;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p2, :cond_11

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/base/common/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_11
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/e;->n()V

    :goto_14
    return-void

    :cond_15
    new-instance v0, Lcom/sigmob/sdk/base/common/e$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/sigmob/sdk/base/common/e$5;-><init>(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/common/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->insertToDB(Lcom/sigmob/sdk/base/a/m;)V

    goto :goto_14
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/common/e;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->p:Ljava/util/HashMap;

    return-object v0
.end method

.method public static c()V
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v0

    const-class v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v6, Lcom/sigmob/sdk/base/common/e$2;

    invoke-direct {v6}, Lcom/sigmob/sdk/base/common/e$2;-><init>()V

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/n;)V

    return-void
.end method

.method public static c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    if-eqz p0, :cond_86

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_86

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v0

    if-nez v0, :cond_86

    :cond_21
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->h:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    if-eq v0, v1, :cond_86

    invoke-static {}, Lcom/sigmob/sdk/base/common/u;->b()Lcom/sigmob/volley/toolbox/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/i;->b()V

    sget-object v0, Lcom/sigmob/sdk/base/common/e;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/u;->a()Lcom/sigmob/volley/toolbox/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_45
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/j;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_6d
    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->c()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->j()Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/u;->b()Lcom/sigmob/volley/toolbox/i;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->h()Lcom/sigmob/volley/toolbox/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->f()Lcom/sigmob/volley/toolbox/h;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/sigmob/volley/toolbox/i;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)Lcom/sigmob/volley/toolbox/j;

    goto :goto_45

    :cond_86
    sput-object p0, Lcom/sigmob/sdk/base/common/e;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method

.method public static d()V
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create_time<\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x240c8400

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v0

    const-class v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v6, Lcom/sigmob/sdk/base/common/e$3;

    invoke-direct {v6}, Lcom/sigmob/sdk/base/common/e$3;-><init>()V

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/n;)V

    return-void
.end method

.method static synthetic d(Lcom/sigmob/sdk/base/common/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/e;->n()V

    return-void
.end method

.method public static d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    sget-object v0, Lcom/sigmob/sdk/base/common/e;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/sigmob/sdk/base/common/e;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "current adunit is playing can\'t delete"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crid =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and adslot_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v1

    const-class v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v3, Lcom/sigmob/sdk/base/common/e$1;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/base/common/e$1;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Lcom/sigmob/sdk/base/a/m;)V

    goto :goto_19
.end method

.method public static e()Lcom/sigmob/sdk/base/common/e;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/e;->f:Lcom/sigmob/sdk/base/common/e;

    if-nez v0, :cond_13

    const-class v1, Lcom/sigmob/sdk/base/common/e;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/common/e;->f:Lcom/sigmob/sdk/base/common/e;

    if-nez v0, :cond_12

    new-instance v0, Lcom/sigmob/sdk/base/common/e;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/e;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/e;->f:Lcom/sigmob/sdk/base/common/e;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/sigmob/sdk/base/common/e;->f:Lcom/sigmob/sdk/base/common/e;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic e(Lcom/sigmob/sdk/base/common/e;)Lcom/sigmob/sdk/base/common/f;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->m:Lcom/sigmob/sdk/base/common/f;

    return-object v0
.end method

.method static synthetic e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/e;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method static synthetic f(Lcom/sigmob/sdk/base/common/e;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method public static f()V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->f(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSplashExpiredTime()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/sigmob/sdk/base/common/e;->a([Ljava/io/File;JJ)[Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSplashCacheTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/e;->a([Ljava/io/File;I)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v0, "splash ad file list is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splash ad file remain num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_2b

    :catch_44
    move-exception v0

    const-string v1, "clean splash ad file error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method private static f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_md5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v0

    const-string v2, "file_reference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endcard_md5=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_md5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_32
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_md5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v1

    const-string v2, "file_reference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_md5=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_md5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_63
    if-nez v1, :cond_73

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/e;->b(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoTmpPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/e;->b(Ljava/lang/String;)Z

    :cond_73
    if-nez v0, :cond_83

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->b(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardDirPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->a(Ljava/lang/String;)Z

    :cond_83
    return-void

    :cond_84
    move v0, v1

    goto :goto_32
.end method

.method public static g()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->f()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->f(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/e;->a([Ljava/io/File;I)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "Download APK files  is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    :goto_18
    return-void

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download APK files remain num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_18

    :catch_31
    move-exception v0

    const-string v1, "clean Download APK file error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public static h()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/e;->f(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_12
    array-length v3, v1

    if-ge v0, v3, :cond_29

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-static {v0, v2, v3, v4, v5}, Lcom/sigmob/sdk/base/common/e;->a([Ljava/io/File;JJ)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/e;->a([Ljava/io/File;I)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4a

    const-string v0, "splash ad file list is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    :goto_49
    return-void

    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splash ad file remain num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_61} :catch_62

    goto :goto_49

    :catch_62
    move-exception v0

    const-string v1, "clean splash ad file error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_49
.end method

.method static synthetic i()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/e;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic j()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/e;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic k()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/e;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/e;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/e;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method private n()V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getCacheTop()I

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v1

    const-string v2, "ads"

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCache: count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    if-le v1, v0, :cond_4c

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v0

    const-class v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "create_time ASC"

    new-instance v6, Lcom/sigmob/sdk/base/common/e$4;

    invoke-direct {v6, p0}, Lcom/sigmob/sdk/base/common/e$4;-><init>(Lcom/sigmob/sdk/base/common/e;)V

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/n;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4c} :catch_4d

    :cond_4c
    :goto_4c
    return-void

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4c
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->o:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/base/common/f;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e;->m:Lcom/sigmob/sdk/base/common/f;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->o:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/g;)V
    .registers 6

    if-nez p1, :cond_11

    const-string v0, "adUnit is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_10

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    const-string v1, "adUnit is null"

    invoke-interface {p2, p1, v0, v1}, Lcom/sigmob/sdk/base/common/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    if-eqz p2, :cond_21

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e;->p:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :try_start_21
    new-instance v0, Lcom/sigmob/sdk/base/common/i;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/base/common/i;-><init>(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/a/e;->b()Lcom/sigmob/sdk/base/common/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_34} :catch_35

    goto :goto_10

    :catch_35
    move-exception v0

    const-string v1, "AdUnitCheckCacheTask execute error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 7

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e;->o:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method
