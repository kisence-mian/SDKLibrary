.class Lcom/tencent/smtt/sdk/ad$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/ad;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/ad;Ljava/lang/String;ZZZLjava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ad$e;->a:Lcom/tencent/smtt/sdk/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/ad$e;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/smtt/sdk/ad$e;->c:Z

    iput-boolean p4, p0, Lcom/tencent/smtt/sdk/ad$e;->d:Z

    iput-boolean p5, p0, Lcom/tencent/smtt/sdk/ad$e;->e:Z

    iput-object p6, p0, Lcom/tencent/smtt/sdk/ad$e;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/smtt/sdk/ad$e;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ad$e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ad$e;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ad$e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasGesture()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ad$e;->e:Z

    return v0
.end method

.method public isForMainFrame()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ad$e;->c:Z

    return v0
.end method

.method public isRedirect()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ad$e;->d:Z

    return v0
.end method
