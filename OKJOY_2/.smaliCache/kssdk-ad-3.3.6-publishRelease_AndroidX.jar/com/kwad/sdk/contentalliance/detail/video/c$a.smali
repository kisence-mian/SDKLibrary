.class public Lcom/kwad/sdk/contentalliance/detail/video/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/video/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

.field private c:Lcom/kwad/sdk/contentalliance/detail/video/b;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/c$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/video/c$a;)Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->b:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/video/c$a;)Lcom/kwad/sdk/contentalliance/detail/video/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->c:Lcom/kwad/sdk/contentalliance/detail/video/b;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/video/c$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->d:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->c:Lcom/kwad/sdk/contentalliance/detail/video/b;

    return-object p0
.end method

.method public a(Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->b:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/kwad/sdk/contentalliance/detail/video/c$a;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->d:Z

    return-object p0
.end method

.method public a()Lcom/kwad/sdk/contentalliance/detail/video/c;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/c$a;Lcom/kwad/sdk/contentalliance/detail/video/c$1;)V

    return-object v0
.end method
