.class public Lcom/kwad/sdk/core/scene/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/kwad/sdk/core/scene/a;

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/scene/URLPackage;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/scene/URLPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/kwad/sdk/core/scene/URLPackage;

.field private final f:Lcom/kwad/sdk/core/scene/EntryPackage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/scene/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/scene/a;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/scene/a;->d:Ljava/util/HashMap;

    new-instance v0, Lcom/kwad/sdk/core/scene/URLPackage;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/scene/URLPackage;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kwad/sdk/core/scene/a;->e:Lcom/kwad/sdk/core/scene/URLPackage;

    new-instance v0, Lcom/kwad/sdk/core/scene/EntryPackage;

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/scene/EntryPackage;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kwad/sdk/core/scene/a;->f:Lcom/kwad/sdk/core/scene/EntryPackage;

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/scene/a;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/scene/a;->a:Lcom/kwad/sdk/core/scene/a;

    if-nez v0, :cond_17

    sget-object v0, Lcom/kwad/sdk/core/scene/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwad/sdk/core/scene/a;->a:Lcom/kwad/sdk/core/scene/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwad/sdk/core/scene/a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/scene/a;-><init>()V

    sput-object v1, Lcom/kwad/sdk/core/scene/a;->a:Lcom/kwad/sdk/core/scene/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/kwad/sdk/core/scene/a;->a:Lcom/kwad/sdk/core/scene/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/kwad/sdk/core/scene/URLPackage;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/kwad/sdk/core/scene/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/scene/URLPackage;

    if-eqz p1, :cond_15

    instance-of v0, p1, Lcom/kwad/sdk/core/scene/EntryPackage;

    if-nez v0, :cond_15

    return-object p1

    :cond_15
    iget-object p1, p0, Lcom/kwad/sdk/core/scene/a;->e:Lcom/kwad/sdk/core/scene/URLPackage;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/kwad/sdk/core/scene/EntryPackage;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/kwad/sdk/core/scene/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/scene/URLPackage;

    iget-object v0, p0, Lcom/kwad/sdk/core/scene/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-eqz p1, :cond_30

    instance-of v2, p1, Lcom/kwad/sdk/core/scene/EntryPackage;

    if-nez v2, :cond_30

    if-ge v1, v0, :cond_30

    iget-object v2, p1, Lcom/kwad/sdk/core/scene/URLPackage;->identity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    iget-object p1, p0, Lcom/kwad/sdk/core/scene/a;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/scene/URLPackage;

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_30
    instance-of v0, p1, Lcom/kwad/sdk/core/scene/EntryPackage;

    if-eqz v0, :cond_37

    check-cast p1, Lcom/kwad/sdk/core/scene/EntryPackage;

    return-object p1

    :cond_37
    iget-object p1, p0, Lcom/kwad/sdk/core/scene/a;->f:Lcom/kwad/sdk/core/scene/EntryPackage;

    return-object p1
.end method
